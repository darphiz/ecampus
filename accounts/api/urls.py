from django.urls import path
from accounts.api import views
from rest_framework.authtoken.views import obtain_auth_token
app_name = 'accounts'

urlpatterns = [
    path('register', views.register, name='register'),   
    path('login', obtain_auth_token, name='login')
]