from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth
from accounts.form import UserForm, UserProfileForm
from django.contrib.auth import authenticate, login
from django.http import HttpResponseRedirect, HttpResponse
from django.urls  import reverse
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout


 #Create your views here.
def register(request):
    # A boolean value for telling the template
    # whether the registration was successful.
    # Set to False initially. Code changes value to
    # True when registration succeeds.
    registered = False
    
    # If it's a HTTP POST, we're interested in processing form data.
    if request.method == 'POST':
        # Attempt to grab information from the raw form information.
        # Note that we make use of both UserForm and UserProfileForm.
        user_form = UserForm(data=request.POST)
        profile_form = UserProfileForm(data=request.POST)
        cpassword= request.POST.get('cpassword')
        password= request.POST.get('password')
        # If the two forms are valid...
        
        if cpassword != password:
            form_error= "password not matching"
            return render(request,'register.html',{'form_error':form_error})
     
        
        elif user_form.is_valid() and profile_form.is_valid():
        # Save the user's form data to the database.
            user = user_form.save()
            
            # Now we hash the password with the set_password method.
            # Once hashed, we can update the user object.
            user.set_password(user.password)
            user.save()
            # Now sort out the UserProfile instance.
            # Since we need to set the user attribute ourselves,
                # we set commit=False. This delays saving the model
            # until we're ready to avoid integrity problems.
            profile = profile_form.save(commit=False)


            profile.user = user
            profile.save()
            registered = True
    else:
            user_form = UserForm()
            profile_form = UserProfileForm()
# Render the template depending on the context.
    return render(request,'register.html',{'user_form': user_form,'profile_form': profile_form,'registered': registered})
    
def user_login(request):
    # If the request is a HTTP POST, try to pull out the relevant information.


    if request.method == 'POST':
            # Gather the username and password provided by the user.
            # This information is obtained from the login form.
            # We use request.POST.get('<variable>') as opposed
            # to request.POST['<variable>'], because the
            # request.POST.get('<variable>') returns None if the
            # value does not exist, while request.POST['<variable>']
            # will raise a KeyError exception.
        username = request.POST.get('username')
        password = request.POST.get('password')
                    # Use Django's machinery to attempt to see if the username/password
                    # combination is valid - a User object is returned if it is.
        user = authenticate(username=username, password=password)
                    # If we have a User object, the details are correct.
                    # If None (Python's way of representing the absence of a value), no user
                    # with matching credentials was found.
        if user:
                        # Is the account active? It could have been disabled.
            if user.is_active:
                            # If the account is valid and active, we can log the user in.
                            # We'll send the user back to the homepage.
                login(request, user)
                return HttpResponseRedirect(reverse('question_list'))
            else:
                        # An inactive account was used - no logging in!
                return HttpResponse("Your EASY Campus account is disabled.")
        else:
                  # Bad login details were provided. So we can't log the user in.
            form_error= "Invalid login details: {0}, {1}".format(username, password)
            return render(request,'login.html',{'form_error':form_error})
                                # The request is not a HTTP POST, so display the login form.
                                # This scenario would most likely be a HTTP GET.
    else:
        # No context variables to pass to the template system, hence the
        # blank dictionary object...
        return render(request, 'login.html', {})    
        
        
@login_required
def user_logout(request):
        # Since we know the user is logged in, we can now just log them out.
    logout(request)
        # Take the user back to the homepage.
    return HttpResponseRedirect(reverse('blog:post_list'))
    
    
    