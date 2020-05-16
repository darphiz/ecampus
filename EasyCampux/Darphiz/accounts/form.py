from django import forms
from django.contrib.auth.models import User
from accounts.models import UserProfile

class UserForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput())
    first_name= forms.CharField(max_length = 100)
    last_name= forms.CharField(max_length = 100)
    class Meta:
        model = User
        fields = ('username', 'email', 'password','first_name','last_name')
class UserProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ('gender', 'faculty', 'level')