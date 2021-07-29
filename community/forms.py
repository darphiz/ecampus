from django import forms
from .models import Quest, Answer
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


