# Generated by Django 2.2.3 on 2019-11-10 21:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_auto_20191105_0056'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='category',
            field=models.CharField(choices=[('entertainment', 'entertainment'), ('gossip', 'gossip'), ('edutainnment', 'edutainment'), ('fuoyeAspirant', 'fuoyeAspirant'), ('facultynews', 'facultynews'), ('others', 'others'), ('fuoyenews', 'fuoyenews')], default='fuoyenews', max_length=10),
        ),
        migrations.AddField(
            model_name='post',
            name='tag',
            field=models.CharField(choices=[('entertainment', 'entertainment'), ('gossip', 'gossip'), ('edutainnment', 'edutainment'), ('fuoyeAspirant', 'fuoyeAspirant'), ('facultynews', 'facultynews'), ('others', 'others'), ('fuoyenews', 'fuoyenews')], default='fuoyenews', max_length=10),
        ),
    ]
