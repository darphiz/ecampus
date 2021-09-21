from django.urls import path
from .views import send_otp

urlpatterns = [
    path('send_otp/', send_otp, name='otp')
]
