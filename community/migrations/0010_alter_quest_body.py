# Generated by Django 3.2 on 2021-05-13 21:40

from django.db import migrations
import django_quill.fields


class Migration(migrations.Migration):

    dependencies = [
        ('community', '0009_alter_quest_body'),
    ]

    operations = [
        migrations.AlterField(
            model_name='quest',
            name='body',
            field=django_quill.fields.QuillField(default='{"delta":{"ops":[{"insert":"test"}]},"html":"<p>test</p>"}'),
        ),
    ]
