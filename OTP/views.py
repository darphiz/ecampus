from django.shortcuts import render
import datetime
from django.http import JsonResponse
from django.contrib.auth.models import User
from random import randint
from django.core.mail import send_mail
from django.utils.timezone import now
from .models import OTP
from common.decorator import ajax_required
from django.views.decorators.http import require_POST
# Create your views here.


def generate_otp(email, username):
    code = randint(100000, 999999)
    date = now() + datetime.timedelta(minutes=7)
    cd = OTP(user=email, user_name=username, code=code, expiry_date=date)
    cd.save()
    return cd.code


def reset_otp(email, username):
    try:
        OTP.objects.get(user=email).delete()
        code = randint(100000, 999999)
        date = now() + datetime.timedelta(minutes=7)
        cd = OTP(user=email, user_name=username, code=code, expiry_date=date)
        cd.save()
        return cd.code
    except:
        return "not generated successfully, resend."


@ajax_required
@require_POST
def send_otp(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        if User.objects.filter(email=email).exists():
            error = 'Email taken, try another one'
            return JsonResponse({'status': 'ko', "error": error})
        if User.objects.filter(username=username).exists():
            error = 'Username taken, try another one'
            return JsonResponse({'status': 'ko', "error": error})
        try:
            otp = generate_otp(email, username)
        except:
            otp = reset_otp(email, username)
        subject = "Confirm Your Email On Easy Campus"
        message = f"Hello {username}, Your OTP is {otp}. Do not share this otp if you do not intend to create an account on easycampus."
        try:
            send_mail(subject, message, 'mail.easycampus@gmail.com',
                  [email], fail_silently=False)
            return JsonResponse({'status': 'ok'})
        except:
            error = 'An error occurred, Try again'
            return JsonResponse({'status': 'ko',"error": error})

    return JsonResponse({'status': 'ko'})
