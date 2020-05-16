from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from django.urls import reverse
# Create your models here.

class ApprovedManager(models.Manager):
    def get_queryset(self):
        return super().get_queryset().filter(approved= True)




class Question(models.Model):
    title = models.CharField(max_length=250)
    name= models.CharField(max_length=250)
    body= models.TextField()
    date_asked= models.DateTimeField(auto_now_add=True)
    approved= models.BooleanField(default=False)
    image_upload= models.ImageField(upload_to="pics",blank=True,
                               null=True)
    faculty = models.CharField(max_length=250, null= True, blank=True)
    tags = models.CharField(max_length = 30, null =True, blank=True)
    class Meta:
        ordering = ('date_asked',)
    def __str__(self):
        return 'Asked by {} on {}'.format(self.name, self.date_asked)

    objects = models.Manager() # The default manager.
    Approved = ApprovedManager() # Our custom manager.

    def get_absolute_url(self):
        return reverse('question_detail',
        kwargs={'pk':self.pk,'title':self.title})

#comment section


class Answer(models.Model):
    question = models.ForeignKey(Question,
            on_delete=models.CASCADE,
                    related_name='answers')
    name = models.CharField(max_length=80)
    body = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    active = models.BooleanField(default=True)
    class Meta:
        ordering = ('created',)
    def __str__(self):
        return 'Answered by {} on {}'.format(self.name, self.question)