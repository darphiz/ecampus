from django.urls import path
from community.api import views
app_name = 'community'


urlpatterns = [
    path('lists/', views.ApiQuestionListView.as_view(), name='question_list'),
]