# Generated by Django 3.0 on 2020-01-07 16:57

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cbt', '0005_question_question_symbol'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='question',
            name='question_symbol',
        ),
    ]
