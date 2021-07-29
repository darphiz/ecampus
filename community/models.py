from django.db import models
from django.contrib.auth.models import User
from django.db.models.deletion import CASCADE
from django.utils import timezone
from django.urls import reverse
from django.utils.text import slugify
from tagging.fields import TagField
from django.db.models import Q

class ApprovedManager(models.Manager):
    def get_queryset(self):
        return super().get_queryset().filter(approved=True)
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
    title = models.CharField(max_length=250)
    slug = models.SlugField(max_length=250, unique=True, blank=True, null=True)
    asked_by = models.ForeignKey(User,
                                 on_delete=models.CASCADE,
                                 related_name='user', null=True,blank=True)
    body = models.TextField()
    date_asked = models.DateTimeField(auto_now_add=True)
    approved = models.BooleanField(default=False)
    image_upload = models.ImageField(upload_to="QThumbnail", blank=True,
                                     null=True)
    faculty = models.CharField(max_length=250, null=True, blank=True)
    tags = TagField()
    type = models.CharField(max_length=10,
                            choices=TYPE_CHOICES,
                            default='question')
    votes = models.ManyToManyField(User, related_name='vote_count',
                                   blank=True)

    class Meta:
        ordering = ('date_asked',)

    objects = models.Manager()  # The default manager.
    Approved = ApprovedManager()  # Our custom manager.

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super(Quest, self).save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('question_detail',
                       kwargs={'pk': self.pk, 'slug': self.slug})


class Answer(models.Model):
    question = models.ForeignKey(Quest,
                                 on_delete=models.CASCADE,
                                 related_name='answers')
    name = models.CharField(max_length=80)
    body = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    active = models.BooleanField(default=True)
    votes = models.ManyToManyField(User, blank=True)
    class Meta:
        ordering = ('created',)

    def __str__(self):
        return 'Answered by {} on {}'.format(self.name, self.Quest)

class Group(models.Model):
    name = models.CharField(max_length=250)
    slug = models.SlugField()
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
    def get_join_url(self):
        return reverse('group_join',
        kwargs={'slug': self.slug})
    def get_leave_url(self):
        return reverse('group_leave',
        kwargs={'slug': self.slug})

