from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth
from accounts.form import UserForm, UserProfileForm
from django.contrib.auth import authenticate, login
from django.http import HttpResponseRedirect, HttpResponse
from django.urls  import reverse
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from django.shortcuts import get_object_or_404

#Create your views here.
def register(request):
    registered = False
    if request.method == 'POST':
        user_form = UserForm(data=request.POST)
        profile_form = UserProfileForm(data=request.POST)
        cpassword= request.POST.get('cpassword')
        password= request.POST.get('password')
        if cpassword != password:
            form_error= "password not matching"
            return render(request,'auth/register.html',{'form_error':form_error})
        elif user_form.is_valid() and profile_form.is_valid():
            user = user_form.save()
            user.set_password(user.password)
            user.save()
            profile = profile_form.save(commit=False)
            profile.user = user
            profile.save()
            registered = True
    else:
            user_form = UserForm()
            profile_form = UserProfileForm()
    return render(request,'auth/register.html',{'user_form': user_form,'profile_form': profile_form,'registered': registered})
    
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
    return render(request, 'auth/user/detail.html',{'user': user})