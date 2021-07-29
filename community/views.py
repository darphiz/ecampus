from django.core import paginator
from django.shortcuts import render, get_object_or_404, redirect
from .models import Quest, Group
from .forms import  AnswerForm, AskForm
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from itertools import chain
from accounts.models import UserProfile
#from django.contrib.auth.models import User, auth
from tagging.models import Tag
from .utils import *
from rake_nltk import Rake
import html2text


def question_list(request):
    question_list = Quest.Approved.all()
    paginator = Paginator(question_list, 7)  # displays 7 questions per page
    page = request.GET.get('page')
    questions = paginator.get_page(page)
    tags = get_popular_tag(Quest)
    context = {'questions': questions, 'tags': tags, }
    return render(request,
                  'general/index.html',
                  context)


def question_detail(request,slug,pk):
    question = get_object_or_404(Quest, slug=slug,id=pk)

    """
    text = question.body
    h = html2text.HTML2Text()
    h.ignore_links = True
    parse = h.handle(text)
    print(parse)
    r = Rake()
    r.extract_keywords_from_text(parse)
    print(r.get_ranked_phrases())
    """

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
            new_answer.save()
    else:
        answer_form = AnswerForm()
    context = {'tags':tags, 'answers': answers, 'new_answer': new_answer, 'question': question, 'answer_form': answer_form, 'answer': answer, 'similar_questions':similar_questions}
    return render(request, 'general/details.html', context)

@login_required
def question_progress(request):
    username = request.user
    question = Quest.objects.filter(asked_by =username)
    approved = question.filter(approved=True)
    unapproved_questions = question.filter(approved=False)
        # paginator
    paginator = Paginator(approved, 5)
    page = request.GET.get('page')
    approved_questions = paginator.get_page(page)

    return render(request,
                  'general/question_progress.html', {
                      'approved_questions': approved_questions, 'unapproved_questions': unapproved_questions}
                  )
@login_required
def ask_question(request):
    form = AskForm()
    if request.method == 'POST':
        form = AskForm(request.POST, request.FILES)
        if form.is_valid():   
            new_form = form.save(commit=False)
            new_form.asked_by = request.user
            new_form.save()
            return redirect('question_progress')
    else:
        form = AskForm()
    context = {'form':form}
    return render(request,'general/askquestion.html', context)
                  
def group_details(request, slug):
    group = get_object_or_404(Group, slug=slug,)
    tags = get_popular_tag_for_group(Quest, group)
    context = {"group": group, 'tags': tags}
    return render(request, 'group/group_detail.html', context)

@login_required    
def group_join(request,slug):
    group = get_object_or_404(Group, slug=slug)
    group.members.add(request.user)
    print('joining.....')
    context ={'group':group}
    return render(request,'group/group_detail.html',context)

@login_required    
def group_leave(request,slug):
    group = get_object_or_404(Group, slug=slug)
    print('leaving.....')
    group.members.remove(request.user)
    context ={'group':group}
    return render(request,'group/group_detail.html',context)


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