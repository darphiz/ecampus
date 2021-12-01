from django.db import models
from django.contrib.auth.models import User
from django.db.models import Q
from django.contrib.auth import get_user_model
from django.db.models.signals import post_save
from django.dispatch import receiver
from rest_framework.authtoken.models import Token
# Create your models here.

class AccountManager(models.Manager):
    def get_queryset(self):
        return super(AccountManager, self).get_queryset()

    def search(self, query=None):
        qs = self.get_queryset()
        if query is not None:
            or_lookup = (
                         Q(user__username__icontains=query) |
                         Q(user__first_name__icontains=query) |
                         Q(user__last_name__icontains=query)
                         )
            # distinct() is often necessary with Q lookups
            qs = qs.filter(or_lookup).distinct()
        return qs


class UserProfile(models.Model):
    # This line is required. Links UserProfile to a User model instance.
    user = models.OneToOneField(User, on_delete=models.CASCADE)
# The additional attributes we wish to include.
    profile_photo = models.ImageField(
        upload_to='Profile Pics', blank=True, null=True)
    faculty = models.CharField(max_length=100)
    level = models.CharField(max_length=100)
    gender = models.CharField(max_length=100)
    premium = models.BooleanField(default=False)

    objects = models.Manager()  # The default manager.
    profile = AccountManager()  # Our custom manager


    def __str__(self):
        return self.user.username

@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        UserProfile.objects.create(user=instance)

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.userprofile.save()

class Contact(models.Model):
    user_from = models.ForeignKey('auth.User',related_name='rel_from_set',on_delete=models.CASCADE)
    user_to = models.ForeignKey('auth.User',related_name='rel_to_set',on_delete=models.CASCADE)
    created = models.DateTimeField(auto_now_add=True,db_index=True)
    class Meta:
        ordering = ('-created',)
    def __str__(self):
        return f'{self.user_from} follows {self.user_to}'

class Chakra(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='chakras')
    value = models.FloatField(default=200)
    next_claim_time = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.user.username

@receiver(post_save, sender=User)
def create_chakra(sender, instance, created, **kwargs):
    if created:
        Chakra.objects.create(user=instance)

@receiver(post_save, sender=User)
def save_chakra(sender, instance, **kwargs):
    instance.chakras.save()

@receiver(post_save, sender=User)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    if created:
        Token.objects.create(user=instance)

user_model = get_user_model()
user_model.add_to_class('following', models.ManyToManyField('self', through=Contact, related_name='followers', symmetrical=False))
