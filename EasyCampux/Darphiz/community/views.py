from django.shortcuts import render, get_object_or_404
from .models import Question, Answer
from .forms import AskForm, AnswerForm
from django.core.paginator import Paginator
from django.contrib.auth.models import User, auth
# Create your views here.


def question_list(request):
    question_list = Question.Approved.all()
    paginator = Paginator(question_list, 7)  # displays 7 questions per page
    page = request.GET.get('page')
    questions = paginator.get_page(page)
    new_question = None
    if request.method == 'GET':
        q = request.GET.get('q', None)
        search_result = False
        if q is None or q is "":
            question_list = Question.Approved.all()
            # displays 7 questions per page
            paginator = Paginator(question_list, 7)
            page = request.GET.get('page')
            questions = paginator.get_page(page)
            if request.user.is_authenticated:
                try:
                    faculty = request.user.userprofile.faculty
                    faculty_questions = Question.Approved.filter(
                        faculty=faculty).order_by('?')[:15]
                    return render(request,
                                  'index.html',
                                  {'questions': questions,
                                   'new_question': new_question,
                                   'faculty_questions': faculty_questions})
                except:
                    return render(request,
                                  'index.html',
                                  {'questions': questions,
                                   'new_question': new_question})
        elif q is not None:
            search_result = True
            question_list = Question.Approved.filter(title__icontains=q)
            # displays 7 questions per page
            paginator = Paginator(question_list, 4)
            page = request.GET.get('page')
            questions = paginator.get_page(page)
        return render(request,
                      'index.html',
                      {'questions': questions, 'new_question': new_question, 'search_result': search_result})
        # askform
    if request.method == 'POST':
        ask_form = AskForm(request.POST, request.FILES)
        if ask_form.is_valid():
            new_question = ask_form.save(commit=False)
            new_question.save()
            return render(request,
                          'index.html',
                          {'questions': questions, 'new_question': new_question,
                           'ask_form': ask_form})

      # errors in ask form
        else:
            form_error = "Question not submitted check and retry"
            ask_form = AskForm()
            return render(request,
                          'index.html',
                          {'questions': questions, 'new_question': new_question,
                           'ask_form': ask_form, "form_error": form_error})


def question_detail(request, pk, title):
    question = get_object_or_404(Question, title=title,
                                 id=pk)
    answer = question.answers.filter(active=True)
    paginator = Paginator(answer, 10)  # displays 10 answers per page
    page = request.GET.get('page')
    answers = paginator.get_page(page)

    new_answer = None

    if request.method == 'POST':
        # An answer was posted
        answer_form = AnswerForm(data=request.POST)
        if answer_form.is_valid():
            # Create answer object but don't save to database yet
            new_answer = answer_form.save(commit=False)
            new_answer.question = question

            # Save the answer to the database
            answer_form.save()

    else:
        answer_form = AnswerForm()

    return render(request, 'askdetails.html',
                  {'answers': answers, 'new_answer': new_answer, 'question': question, 'answer_form': answer_form, 'answer': answer})


def question_progress(request):
    if request.user.is_authenticated:
        username = request.user.username
        question = Question.Approved.filter(name=username)
        unapproved = Question.objects.filter(name=username, approved=False)
# paginator
        paginator = Paginator(question, 5)
        page = request.GET.get('page')
        questions = paginator.get_page(page)

    return render(request,
                  'question_progress.html', {
                      'questions': questions, 'unapproved': unapproved}
                  )
