from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('', views.question_list, name='question_list'),
    path('<int:pk>/<slug:slug>/', views.question_detail, name='question_detail'),
    path('ask_question/', views.ask_question , name='ask_question'),
    path('profile/my_questions/', views.question_progress, name='question_progress'),
    path('group/<slug:slug>/', views.group_details, name='group_details'),
    path('group/<slug:slug>/join', views.group_join, name='group_join'),
    path('group/<slug:slug>/leave', views.group_leave, name='group_leave'),
    path('query/<str:action>/<str:arg>/', views.query, name="query"),
    
]

   