from django import forms
from django.contrib.auth.models import User
from passwords.fields import PasswordField


class UserForm(forms.ModelForm):
    password = PasswordField(label="Password")
    class Meta:
        model = User
        fields = ('username', 'email', 'password')
