# Generated by Django 3.2 on 2021-05-09 16:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('community', '0003_group_description'),
    ]

    operations = [
        migrations.AlterField(
            model_name='upvote',
            name='question',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='votes', to='community.quest'),
        ),
    ]