from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns= [
            path("register/",views.register, name= "register"),
            path("login/",views.user_login, name= "login"),
            path("logout/",views.user_logout, name= "logout"),
            path('users/', views.user_list, name='user_list'),
            path('users/<username>/', views.user_detail, name='user_detail'),
            path('password_reset/',
            auth_views.PasswordResetView.as_view(template_name= "auth/password_reset_form.html"),{
        'template_name':'auth/password_reset_email.html',
        'html_email_template_name': 'auth/password_reset_email.html',
        'email_template_name': 'auth/password_reset_email.html',
        'subject_template_name': 'auth/password_reset_email.html', },
            name='password_reset'),
            path('password_reset/done/',
            auth_views.PasswordResetDoneView.as_view(template_name= "auth/password_reset_done.html"),
            name='password_reset_done'),
            path('reset/<uidb64>/<token>/',
            auth_views.PasswordResetConfirmView.as_view(template_name= "auth/password_reset_confirm.html"),
            name='password_reset_confirm'),
            path('reset/done/',
            auth_views.PasswordResetCompleteView.as_view(template_name="auth/password_reset_complete.html"),
            name='password_reset_complete'),


        ]
