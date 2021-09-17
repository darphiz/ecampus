from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('', views.question_list, name='question_list'),
    path('<int:pk>/<slug:slug>/', views.question_detail, name='question_detail'),
    path('ask_question/', views.ask_question , name='ask_question'),
    path('profile/my_questions/', views.question_progress, name='question_progress'),
    path('group/filter/<str:action>/', views.groups_list, name='groups_list'),
    path('group/option/create/', views.create_group, name='create_group'),
    path('ajax/group_action/', views.group_action, name = 'group_action'),
    path('group/<slug:slug>/', views.group_details, name='group_details'),
    path('query/<str:action>/<str:arg>/', views.query, name="query"),
    path('question/vote/', views.vote_on_question, name='vote_post'),
    
]

   