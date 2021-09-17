from django import forms
from .models import Group, Quest, Answer
from django_summernote.widgets import SummernoteWidget
# comment form


class AskForm(forms.ModelForm):
    class Meta:
        model = Quest
        fields = '__all__'
        widgets = {
            'body': SummernoteWidget(),
        }

class AnswerForm(forms.ModelForm):
    class Meta:
        model = Answer
        fields = ('name', 'body')


class GroupForm(forms.ModelForm):
    class Meta:
        model = Group
        fields = ('name','group_thumb','description')