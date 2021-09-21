from community.models import Quest
from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from accounts.form import UserForm
from django.contrib.auth import authenticate, login
from django.http import HttpResponseRedirect, HttpResponse
from django.urls  import reverse
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.shortcuts import get_object_or_404
from .models import Contact
from django.views.decorators.http import require_POST
from django.http import JsonResponse
from common.decorator import ajax_required
import random
from OTP.models import OTP
def otp_valid(email,username,otp):
    try:
        otp_email = OTP.objects.get(user=email)
    except:
        status = {"message":"You entered a wrong OTP", "status":False}
        return status
    if otp_email.code == otp and otp_email.user_name == username and otp_email.user == email:
        if otp_email.has_timeout:
            status = {"message":"Your OTP has expired", "status":False}
            return status
        else:
            status = {"message":"Success", "status":True}
            return status
    else:
        status = {"message":"You entered a wrong OTP", "status":False}
        return status

def register(request):
    if request.method == 'POST':
        form = UserForm(data=request.POST)
        cpassword= request.POST.get('cpassword')
        password= request.POST.get('password')
        username = request.POST.get('username')
        email = request.POST.get('email')
        otp = request.POST.get('otp')
        validate = otp_valid(email,username,otp) 
        if validate['status']==False:
            form_error = validate["message"]
            return render(request,'auth/register.html',{'form_error':form_error,'form':form})
        else:
            if cpassword != password:
                form_error = "password not matching"
                return render(request,'auth/register.html',{'form_error':form_error,'form':form})
            elif form.is_valid():
                user = form.save()
                user.set_password(user.password)
                user.save()
                u = authenticate(username=username, password=password)
                if u:
                    if u.is_active:
                        login(request,u)
                        return redirect('question_list')
                    else:
                        return HttpResponse("Your EASY Campus account is disabled.")
    else:
        form = UserForm()
    return render(request,'auth/register.html',{'form': form})

def user_login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user:
            if user.is_active:
                login(request, user)
                redirect = request.POST.get('next')
                if redirect:
                    return HttpResponseRedirect(redirect)
                else:
                    return HttpResponseRedirect(reverse('question_list'))
            else:
                return HttpResponse("Your EASY Campus account is disabled.")
        else:
            form_error= "Invalid login details: {0}, {1}".format(username, password)
            return render(request,'auth/login.html',{'form_error':form_error})
    else:
        return render(request, 'auth/login.html', {})


@login_required
def user_logout(request):
        # Since we know the user is logged in, we can now just log them out.
    logout(request)
        # Take the user back to the homepage.
    return HttpResponseRedirect(reverse('question_list'))


@login_required
def user_list(request):
    users = User.objects.filter(is_active=True).order_by('?')
    return render(request,'auth/user/list.html',{'users': users})

@login_required
def user_detail(request, username):
    user = get_object_or_404(User, username=username, is_active=True)
    timelines = Quest.Approved.filter(asked_by = user).select_related('asked_by')
    context = {'user': user, 'timelines' :timelines}
    return render(request, 'auth/user/detail.html',context)


@login_required
@ajax_required
@require_POST
def user_follow(request):
    user_id = request.POST.get('id')
    action = request.POST.get('action')
    if user_id and action:
        try:
            user = User.objects.get(id=user_id)
            if action == 'follow':
                Contact.objects.get_or_create(
                    user_from=request.user, user_to=user)
            else:
                Contact.objects.filter(
                    user_from=request.user, user_to=user).delete()
            return JsonResponse({'status': 'ok'})
        except User.DoesNotExist:
            return JsonResponse({'status': 'ko'})
    return JsonResponse({'status': 'ko'})


def auto_users(request):
    creating = 0
    def get_username():
        name = random.randint(777777,9999999)
        return name
    while creating < 200:
        create = User(username = get_username(), password = "BODmas99", first_name = "Bot", last_name = "generated" )
        create.save()
        creating+=1
    context = {"status": True}
    return render(request, 'auto.html',context)

def edit_profile(request):
    if request.method == 'POST':
        request.user.first_name = request.POST.get('first_name')
        request.user.last_name  = request.POST.get('last_name')
        request.user.userprofile.faculty  = request.POST.get('faculty')
        request.user.userprofile.level = request.POST.get('level')
        request.user.userprofile.gender  = request.POST.get('gender')
        request.user.userprofile.profile_photo  = request.FILES.get('profile_photo')
        request.user.save()
        request.user.userprofile.save()
        return redirect('profile')
    return render(request, 'auth/edit.html')