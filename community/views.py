from django.shortcuts import render, get_object_or_404, redirect
from .models import Quest, Group, Answer
from .forms import  AnswerForm, AskForm, GroupForm
from django.core.paginator import Paginator, EmptyPage,PageNotAnInteger
from django.contrib.auth.decorators import login_required
from itertools import chain
from accounts.models import UserProfile
from tagging.models import Tag
from .utils import *
from django.db.models import Count
from common.decorator import ajax_required
from django.views.decorators.http import require_POST
from django.http import JsonResponse
from notifications.signals import notify
from django.contrib import messages

  

def question_list(request):
    tags = get_popular_tag(Quest)
    question_list = recommend_questions(request,Quest.Approved.all())

    paginator = Paginator(question_list, 4)
    page = request.GET.get('page')
    try:
        questions = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer deliver the first page
        questions = paginator.page(1)
    except EmptyPage:
        if request.is_ajax():
            # If the request is AJAX and the page is out of range
            #   return an empty page
            return HttpResponse('')
            # If page is out of range deliver last page of results
        questions = paginator.page(paginator.num_pages)
    context = {'questions': questions, 'tags': tags, }
    if request.is_ajax():
        return render(request, 'general/index_scroll.html', context)
    return render(request,'general/index.html',context)


def question_detail(request,slug,pk):
    question = get_object_or_404(Quest, slug=slug,id=pk)
    answer = question.answers.filter(active=True)
    tags = Tag.objects.get_for_object(question)
    paginator = Paginator(answer, 10)  # displays 10 answers per page
    page = request.GET.get('page')
    answers = paginator.get_page(page)
    similar_questions = get_similar_post(question, tags)[:10]
    new_answer = None
    if request.method == 'POST':
        answer_form = AnswerForm(data=request.POST)
        if answer_form.is_valid():
            new_answer = answer_form.save(commit=False)
            new_answer.question = question
            new_answer.name = request.user
            new_answer.save()
            message = f"answered your question:  \"{question.title}\""
            notify.send(request.user ,recipient=question.asked_by, verb=message, url=question.get_absolute_url())
    else:
        answer_form = AnswerForm()
    context = {'tags':tags, 'answers': answers, 'new_answer': new_answer, 'question': question, 'answer_form': answer_form, 'answer': answer, 'similar_questions':similar_questions}
    response = track_user(request,question,context)
    return response



@login_required
def question_progress(request):
    question = Quest.objects.filter(asked_by =request.user).order_by('-date_asked')
        # paginator
    paginator = Paginator(question, 5)
    page = request.GET.get('page')
    questions = paginator.get_page(page)
    return render(request, 'general/question_progress.html', {'questions': questions})

@login_required
def ask_question(request):
    form = AskForm()
    if request.method == 'POST':
        form = AskForm(request.POST, request.FILES)
        form.status = 'Pending'
        if form.is_valid():
            new_form = form.save(commit=False)
            new_form.asked_by = request.user

            new_form.save()
            return redirect('question_progress')
    else:
        form = AskForm()
    context = {'form':form}
    return render(request,'general/askquestion.html', context)

@login_required
def groups_list(request,action):
    if action == 'my':
        group = request.user.groups_joined.all()
    else:
        group = Group.objects.annotate(popularity = Count('members')).order_by("-popularity")
    paginator = Paginator(group, 4)
    page = request.GET.get('page')
    try:
        groups = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer deliver the first page
        groups = paginator.page(1)
    except EmptyPage:
        if request.is_ajax():
            # If the request is AJAX and the page is out of range
            #   return an empty page
            return HttpResponse('')
            # If page is out of range deliver last page of results
        groups = paginator.page(paginator.num_pages)
    context = {'groups':groups,'action':action}
    if request.is_ajax():
        return render(request, 'group/group_scroll.html', context)


    return render(request, 'group/groups_list.html',context)

def group_details(request, slug):
    group = get_object_or_404(Group, slug=slug,)
    tags = get_popular_tag_for_group(Quest, group)
    get_group_questions = group.questions.order_by("-date_asked")
    paginator = Paginator(get_group_questions, 4)
    page = request.GET.get('page')
    try:
        group_questions = paginator.page(page)
    except PageNotAnInteger:
        group_questions = paginator.page(1)
    except EmptyPage:
        if request.is_ajax():
            return HttpResponse('')
        group_questions = paginator.page(paginator.num_pages)
    context = {'group_questions': group_questions, 'tags': tags,"group":group }
    if request.is_ajax():
        return render(request, 'group/group_quest_scroll.html', context)
    return render(request, 'group/group_detail.html', context)



def query(request, action, arg):
    gr = True
    if action == 'tag':
        results = Quest.Approved.filter(tags__icontains=arg)
        results = results.annotate(vote=Count(
            'votes')).order_by('-date_asked', '-vote')
        gr = False
    if action == 'search':
        arg = request.GET['search_query']
        results = []
        if arg:
            question_results = Quest.Approved.search(arg)
            group_results = Group.objects.filter(name__icontains = arg)
            user_results = UserProfile.profile.search(arg)
            queryset_chain = chain(
                question_results,
                group_results,
                user_results
            )
            results = sorted(queryset_chain,
                             key=lambda instance: instance.pk,
                             reverse=True)
            if not group_results:
                gr = False

    context = {'results':results,'gr':gr,'action':action,'arg':arg}
    return render(request, 'general/query.html',context)

@login_required
@ajax_required
@require_POST
def vote_on_question(request):
    if request.method == 'POST':
        question_id = request.POST.get('id')
        action = request.POST.get('action')
        if question_id and action:
            try:
                question = Quest.objects.get(id=question_id)
                if action == 'up_vote':
                    question.votes.add(request.user)
                    if question.type == 'article':
                        question.asked_by.chakras.value+=0.2
                        question.asked_by.chakras.save()
                else:
                    question.votes.remove(request.user)
                    if question.type == 'article':
                        question.asked_by.chakras.value-=0.2
                        if question.asked_by.chakras.value > 0:
                            question.asked_by.chakras.save()
                return JsonResponse({'status': 'ok'})
            except Quest.DoesNotExist:
                return JsonResponse({'status': 'ko'})
    return JsonResponse({'status': 'ko'})

@login_required
@ajax_required
@require_POST
def upvote_answer(request):
    if request.method == 'POST':
        try:
            id = request.POST.get('id')
            get_answer = Answer.objects.get(id=id)
            if request.user in get_answer.votes.all():
                get_answer.votes.remove(request.user)
                get_answer.name.chakras.value-=0.1
                if get_answer.name.chakras.value > 0:
                    get_answer.name.chakras.save()
                return JsonResponse({'status': 'ok', 'add': -1})
            else:
                get_answer.votes.add(request.user)
                get_answer.name.chakras.value+=0.1
                get_answer.name.chakras.save()
                return JsonResponse({'status': 'ok', 'add': 1})
        except:
            return JsonResponse({'status': 'ko','add': 0})
    return JsonResponse({'status': 'ko', 'add': 0})

@login_required
@ajax_required
def group_action(request):
    id = request.POST.get("id")
    action = request.POST.get("action")
    if id and action:
        try:
            group = get_object_or_404(Group, id=id)
            if action == "join":
                group.members.add(request.user)
                return JsonResponse({"status":"ok"})
            else:
                group.members.remove(request.user)
                return JsonResponse({"status":"ok"})
        except Group.DoesNotExist:
            return JsonResponse({"status":"error"})
    return JsonResponse({"status":"error"})


def create_group(request):
    if request.method  == "POST":
        form = GroupForm(request.POST, request.FILES)
        if form.is_valid():
            new_form = form.save(commit=False)
            new_form.creator = request.user
            new_form.save()
            new_form.moderators.add(request.user)
            new_form.members.add(request.user)
            return redirect('groups_list', action='my')
        else:
            form = GroupForm(request.POST,request.FILES)
    else:
        form = GroupForm()
    context = {'form':form}
    return render(request, 'group/create.html', context)

def notify_user(request):
    notifications = request.user.notifications.all()
    notifications.mark_all_as_read()
    context = {"all_notifications": notifications}
    return render(request, 'general/notification.html', context)


@login_required
def top_up(request):
    return render(request, 'premium/premium.html')

@login_required
def top_up_discount(request,amount):
    return render(request, 'premium/premium_payment.html', {'amount':amount})
