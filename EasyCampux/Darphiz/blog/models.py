from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse

class PublishedManager(models.Manager):
    def get_queryset(self):
        return super(PublishedManager,
                    self).get_queryset()\
                    .filter(status='published')



class Post(models.Model):
    STATUS_CHOICES = (
        ('draft', 'Draft'),
            ('published', 'Published'),
                )
    TAG_CHOICES= (
                    ('entertainment','entertainment'),
                    ('gossip','gossip'),
                    ('edutainnment','edutainment'),
                    ('fuoyeAspirant','fuoyeAspirant'),
                    ('facultynews', 'facultynews'),
                    ('others','others'),
                    ('fuoyenews','fuoyenews')
    )
   
    title = models.CharField(max_length=250)
    slug = models.SlugField(max_length=250,
    unique_for_date='publish')
    author = models.ForeignKey(User,
                            on_delete=models.CASCADE,
                                    related_name='blog_posts')
    body = models.TextField()
    image_upload= models.ImageField(upload_to="pics")
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    status = models.CharField(max_length=10,
    choices=STATUS_CHOICES,
    default='draft')
    category = models.CharField(max_length=20,
    choices=TAG_CHOICES,
    default='fuoyenews')

    class Meta:
        ordering = ('-publish',)
    def __str__(self):
        return self.title
       #  ...
    objects = models.Manager() # The default manager.
    published = PublishedManager() # Our custom manager.

    def get_absolute_url(self):
        return reverse('blog:post_detail',
        args=[self.publish.year,
        self.publish.month,
        self.publish.day,
        self.slug])
  #comment section
class Comment(models.Model):
    post = models.ForeignKey(Post,
            on_delete=models.CASCADE,
                    related_name='comments')
    name = models.CharField(max_length=80)
    email = models.EmailField()
    body = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)
    class Meta:
        ordering = ('created',)
    def __str__(self):
        return 'Comment by {} on {}'.format(self.name, self.post)



class BroadCast_Email(models.Model):
    subject = models.CharField(max_length=200)
    created = models.DateTimeField(default=timezone.now)
    message = models.TextField()

    def __unicode__(self):
        return self.subject

    class Meta:
        verbose_name = "BroadCast Email to all Member"
        verbose_name_plural = "BroadCast Email"

