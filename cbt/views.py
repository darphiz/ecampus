import random
import json
from django.contrib.auth.models import User,auth
from django.contrib.auth.decorators import login_required, permission_required
from django.core.exceptions import PermissionDenied
from django.shortcuts import get_object_or_404, render
from django.utils.decorators import method_decorator
from django.views.generic import DetailView, ListView, TemplateView
from django.views.generic.edit import FormView
from .forms import QuestionForm
from .models import Quiz, Category, Progress, Sitting, Question
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import login_required

class QuizMarkerMixin(object):
    @method_decorator(login_required)
    @method_decorator(permission_required('quiz.view_sittings'))
    def dispatch(self, *args, **kwargs):
        return super(QuizMarkerMixin, self).dispatch(*args, **kwargs)


class SittingFilterTitleMixin(object):
    def get_queryset(self):
        queryset = super(SittingFilterTitleMixin, self).get_queryset()
        quiz_filter = self.request.GET.get('quiz_filter')
        if quiz_filter:
            queryset = queryset.filter(quiz__title__icontains=quiz_filter)

        return queryset


class QuizListView(ListView):
    model = Quiz
    #@login_required
    def get_queryset(self):
        queryset = super(QuizListView, self).get_queryset()
        return queryset.filter(draft=False)


class QuizDetailView(DetailView):
    model = Quiz
    slug_field = 'url'

    def get(self, request, *args, **kwargs):
        self.object = self.get_object()

        if self.object.draft and not request.user.has_perm('quiz.change_quiz'):
            raise PermissionDenied
        if self.object.premium and not request.user.userprofile.premium:
            return render(request, 'premium.html')

        context = self.get_context_data(object=self.object)
        return self.render_to_response(context)


class CategoriesListView(ListView):
    model = Category


class ViewQuizListByCategory(ListView):
    model = Quiz
    template_name = 'view_quiz_category.html'

    def dispatch(self, request, *args, **kwargs):
        self.category = get_object_or_404(
            Category,
            category=self.kwargs['category_name']
        )

        return super(ViewQuizListByCategory, self).\
            dispatch(request, *args, **kwargs)

    def get_context_data(self, **kwargs):
        context = super(ViewQuizListByCategory, self)\
            .get_context_data(**kwargs)

        context['category'] = self.category
        return context

    def get_queryset(self):
        queryset = super(ViewQuizListByCategory, self).get_queryset()
        return queryset.filter(category=self.category, draft=False)

@method_decorator(login_required, name='dispatch')
class QuizUserProgressView(TemplateView):
    template_name = 'auth/profile.html'


    def dispatch(self, request, *args, **kwargs):
        return super(QuizUserProgressView, self)\
            .dispatch(request, *args, **kwargs)
    
    def get_context_data(self, **kwargs):
        context = super(QuizUserProgressView, self).get_context_data(**kwargs)
        progress, c = Progress.objects.get_or_create(user=self.request.user)
        context['cat_scores'] = progress.list_all_cat_scores
        context['exams'] = progress.show_exams()
        return context


class QuizMarkingList(QuizMarkerMixin, SittingFilterTitleMixin, ListView):
    model = Sitting

    def get_queryset(self):
        queryset = super(QuizMarkingList, self).get_queryset()\
                                               .filter(complete=True)

        user_filter = self.request.GET.get('user_filter')
        if user_filter:
            queryset = queryset.filter(user__username__icontains=user_filter)

        return queryset

    class Meta:
        pass


class QuizMarkingDetail(QuizMarkerMixin, DetailView):
    model = Sitting

    def post(self, request, *args, **kwargs):
        sitting = self.get_object()

        q_to_toggle = request.POST.get('qid', None)
        if q_to_toggle:
            q = Question.objects.get_subclass(id=int(q_to_toggle))
            if int(q_to_toggle) in sitting.get_incorrect_questions:
                sitting.remove_incorrect_question(q)
            else:
                sitting.add_incorrect_question(q)

        return self.get(request)

    def get_context_data(self, **kwargs):
        context = super(QuizMarkingDetail, self).get_context_data(**kwargs)
        context['questions'] =\
            context['sitting'].get_questions(with_answers=True)
        return context


class QuizTake(FormView):
    form_class = QuestionForm
    template_name = 'question.html'

    def dispatch(self, request, *args, **kwargs):
        self.quiz = get_object_or_404(Quiz, url=self.kwargs['quiz_name'])

        if self.quiz.draft and not request.user.has_perm('quiz.change_quiz'):
            raise PermissionDenied
        if self.quiz.premium and not request.user.userprofile.premium:
            return render(request, 'premium.html')

        self.logged_in_user = self.request.user.is_authenticated

        if self.logged_in_user:
            self.sitting = Sitting.objects.user_sitting(request.user,
                                                        self.quiz)
        else:
            form_error= "You must login to your easyCampus account to access the page you requested!"
            return render(request, 'login.html', { 'form_error': form_error})

        if self.sitting is False:
            return render(request, 'single_complete.html')
        
        if self.quiz.answers_at_end is True:
            self.examss = "this is an exam" 
        else:
            self.examss = None

        return super(QuizTake, self).dispatch(request, *args, **kwargs)

    def get_form(self, form_class=QuestionForm):
        if self.logged_in_user:
            self.question = self.sitting.get_first_question()
            self.progress = self.sitting.progress()
            self.start = self.sitting.get_start_time()
        return form_class(**self.get_form_kwargs())

    def get_form_kwargs(self):
        kwargs = super(QuizTake, self).get_form_kwargs()

        return dict(kwargs, question=self.question)

    def form_valid(self, form):
        if self.logged_in_user:
            self.form_valid_user(form)
            if self.sitting.get_first_question() is False:
                return self.final_result_user()
        self.request.POST = {}

        return super(QuizTake, self).get(self, self.request)

    def get_context_data(self, **kwargs):
        context = super(QuizTake, self).get_context_data(**kwargs)
        context['question'] = self.question
        context['start'] = self.start
        context['quiz'] = self.quiz
        context['exammode'] = self.examss
        if hasattr(self, 'previous'):
            context['previous'] = self.previous
        if hasattr(self, 'progress'):
            context['progress'] = self.progress

        return context

    def form_valid_user(self, form):
        progress, c = Progress.objects.get_or_create(user=self.request.user)
        guess = form.cleaned_data['answers']
        is_correct = self.question.check_if_correct(guess)

        if is_correct is True:
            self.sitting.add_to_score(1)
            progress.update_score(self.question, 1, 1)
        else:
            self.sitting.add_incorrect_question(self.question)
            progress.update_score(self.question, 0, 1)

        if self.quiz.answers_at_end is not True:
            self.previous = {'previous_answer': guess,
                             'previous_outcome': is_correct,
                             'previous_question': self.question,
                             'answers': self.question.get_answers(),
                             'question_type': {self.question
                                               .__class__.__name__: True}}
        else:
            self.previous = {}

        self.sitting.add_user_answer(self.question, guess)
        self.sitting.remove_first_question()

    def final_result_user(self):
        results = {
            'quiz': self.quiz,
            'score': self.sitting.get_current_score,
            'max_score': self.sitting.get_max_score,
            'percent': self.sitting.get_percent_correct,
            'sitting': self.sitting,
            'previous': self.previous,

        }

        self.sitting.mark_quiz_complete()

        if self.quiz.answers_at_end:
            results['questions'] =\
                self.sitting.get_questions(with_answers=True)
            results['incorrect_questions'] =\
                self.sitting.get_incorrect_questions

        if self.quiz.exam_paper is False:
            self.sitting.delete()
        return render(self.request, 'result.html', results)
    
#a function to terminate the quiz and return the result
def endquiz(request,quiz_name):
    quiz = get_object_or_404(Quiz, url= quiz_name)
    sitting = Sitting.objects.user_sitting(request.user , quiz)
   
    sitting.mark_quiz_complete()

    if quiz.answers_at_end:
        questions =\
             sitting.get_questions(with_answers=True)
        incorrect_questions =\
             sitting.get_incorrect_questions
    else:
        questions = None
        incorrect_questions = None
    if quiz.exam_paper is False:
            sitting.delete()

    results = {
            'quiz': quiz,
            'score': sitting.get_current_score,
            'max_score': sitting.get_max_score,
            'percent': sitting.get_percent_correct,
            'sitting': sitting,
            'questions' : questions,
            'incorrect_questions' :incorrect_questions,
            }

    return render(request, 'result.html', results)

#a function to jump to certain question question number


def goto(request,question_number,quiz_name):
    quiz = get_object_or_404(Quiz, url= quiz_name)
    sitting = Sitting.objects.user_sitting(request.user , quiz)
    progress,c = Progress.objects.get_or_create(user=request.user)
    question = sitting.get_question_number(question_number)
    form = QuestionForm(question)
    exammode = "True"
    start = sitting.get_start_time()
    info = "Make Changes To  Question {}".format(question_number)
    context ={'question':question,'quiz':quiz,'form':form,'progress':progress,'c':c,
            'exammode':exammode,'start':start, 'info':info}
    if quiz.premium and not request.user.userprofile.premium:
        return render(request, 'premium.html')

    if request.method == 'POST':
    # create a form instance and populate it with data from the request:
        form = QuestionForm(question,request.POST)
        question_answer = json.loads(sitting.user_answers)
        question_answers = sitting.user_answers
        quid = str(question.id)
        # check whether it's valid:
        if form.is_valid():
            guess = form.cleaned_data['answers']
            is_correct = question.check_if_correct(guess)
            incorrect_list = sitting.incorrect_questions.split(',')
            if is_correct is True:
               #if user is right but already gave wrong answer
                if quid in incorrect_list:
                    sitting.remove_incorrect_question(question)
                    try:
                        question_answer[quid] = str(guess)
                        sitting.user_answers = json.dumps(question_answer)
                        sitting.save()
                    
                    except:
                        pass

             
                else:
                    #if user gave a correct answer but in the future
                    if quid not in question_answer:
                        pass
                    #if user gave a correct answer but he already gave a correct answer
                    else:
                        try:
                            question_answer[quid] = str(guess)
                            sitting.user_answers = json.dumps(question_answer)
                            sitting.save()
                        except:
                            pass  

            else:
                #if user was wrong but was wrong before
                if quid in incorrect_list:
                    try:
                        question_answer[quid] = str(guess)
                        sitting.user_answers = json.dumps(question_answer)
                        sitting.save()
                    except:
                        pass
                else:
                    #if user was right before but changed to wrong
                    if quid in question_answers:
                        if question.id not in incorrect_list:
                            sitting.add_to_score(-1)
                            sitting.add_incorrect_question(question)
                            try:
                                question_answer[quid] = str(guess)
                                sitting.user_answers = json.dumps(question_answer)
                                sitting.save()
                            except:
                                pass
                        else:
                            try:
                                question_answer[quid] = str(guess)
                                sitting.user_answers = json.dumps(question_answer)
                                sitting.save()
                            except:
                                pass
                
            if quiz.answers_at_end is not True:
                raise "error"
            else:
                pass

        return HttpResponseRedirect('/cbt/{}/take/'.format(quiz_name))
    else:
        exammode = "True"
        form = QuestionForm(question)
        return render(request,'question.html',context)
    