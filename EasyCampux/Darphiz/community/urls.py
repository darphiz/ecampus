from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('question_list/', views.question_list, name='question_list'),
    path('<int:pk>/<title>/', views.question_detail, name= 'question_detail'),
    path('question_progress/', views.question_progress, name = 'question_progress'),

]


