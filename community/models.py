from django.db import models
from django.contrib.auth.models import User
from django.db.models.deletion import CASCADE
from django.utils import timezone
from django.urls import reverse
from django.utils.text import slugify
from tagging.fields import TagField
from django.db.models import Q
import json
from random import randint
from django.db.models.signals import post_save
from notifications.signals import notify

class ApprovedManager(models.Manager):
    def get_queryset(self):
        return super().get_queryset().filter(status="approved")
    def search(self, query):
        qs = self.get_queryset()
        if query is not None:
            or_lookup = (Q(title__icontains=query) |
                         Q(body__icontains=query) |
                         Q(slug__icontains=query)
                         )
            # distinct() is often necessary with Q lookups
            qs = qs.filter(or_lookup).distinct()
        return qs


class Quest(models.Model): 
    TYPE_CHOICES = (
        ('article', 'Article'),
        ('question', 'Question'),
        ('link', 'Link'),
    )
    
    STATUS_CHOICES = (
        ('approved', 'Approved'),
        ('pending', 'Pending'),
        ('rejected', 'Rejected'),
    )
    title = models.CharField(max_length=250)
    slug = models.SlugField(max_length=250, unique=True, blank=True, null=True)
    asked_by = models.ForeignKey(User,
                                 on_delete=models.CASCADE,
                                 related_name='user', null=True,blank=True)
    body = models.TextField()
    date_asked = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=10,
                            choices=STATUS_CHOICES,
                            default='pending', blank=True,
                                     null=True)
    image_upload = models.ImageField(upload_to="QThumbnail", blank=True,
                                     null=True)
    tags = TagField()
    type = models.CharField(max_length=10,
                            choices=TYPE_CHOICES,
                            default='question')
    votes = models.ManyToManyField(User, related_name='vote_count',
                                   blank=True)

    class Meta:
        ordering = ('date_asked',)
        indexes = [models.Index(fields=[ 'date_asked', 'asked_by', 'title','tags'])]

    objects = models.Manager()  # The default manager.
    Approved = ApprovedManager()  # Our custom manager.

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        """
        if self.status == "approved":
            message = "approved your question."
            notify.send(request.user ,recipient=self.asked_by, verb=message, url=self.get_absolute_url())
        """
        super(Quest, self).save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('question_detail',
                       kwargs={'pk': self.pk, 'slug': self.slug})


class Answer(models.Model):
    question = models.ForeignKey(Quest,
                                 on_delete=models.CASCADE,
                                 related_name='answers')
    name = models.ForeignKey(User,
                                 on_delete=models.CASCADE,
                                 related_name='question_answered',blank=True, null=True)
    body = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    active = models.BooleanField(default=True)
    votes = models.ManyToManyField(User, blank=True)
    class Meta:
        ordering = ('created',)

    def __str__(self):
        return 'Answered by {} on {}'.format(self.name, self.Quest)


class Group(models.Model):
    name = models.CharField(max_length=250,unique=True)
    slug = models.SlugField(unique=True)
    group_thumb = models.ImageField(
        upload_to='group_thumbnail', blank=True, null=True)
    members = models.ManyToManyField(User, related_name='groups_joined',
                                     blank=True)
    questions = models.ManyToManyField(
        Quest, related_name='group_asked', blank=True)
    moderators = models.ManyToManyField(User, related_name='groups_heading',
                                        blank=True)
    rules = models.TextField()
    description = models.TextField()
    creator = models.ForeignKey(
        User, related_name='created_groups', on_delete=models.CASCADE, null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('group_details',
        kwargs={'slug': self.slug})
    def save(self, *args,**kwargs):
        if Group.objects.filter(slug=slugify(self.name)).exists():
            extra = str(randint(1, 10000))
            self.slug = slugify(self.name) + "-" + extra
        else:
            self.slug = slugify(self.name)
        super(Group, self).save(*args, **kwargs)


class Interest(models.Model):
    user = models.OneToOneField(User, on_delete=CASCADE, related_name="Interest",db_index=True)
    keytags = models.TextField(blank=True,null=True, db_index=True)
    
    def save(self, *args, **kwargs):
        self.keytags = json.dumps(self.keytags)
        super(Interest, self).save(*args, **kwargs)
    def get_user_interest(self):
        jsonDec = json.decoder.JSONDecoder()
        get_interests = jsonDec.decode(self.keytags)
        return get_interests 

    def __str__(self):
        return self.user.username

class Visit(models.Model):
    user = models.OneToOneField(User, on_delete=CASCADE, related_name= 'visits', db_index=True)
    questions = models.ManyToManyField(Quest, blank=True)
    def __str__(self):
        return self.user.username
    