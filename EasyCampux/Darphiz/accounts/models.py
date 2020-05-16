from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class UserProfile(models.Model):
# This line is required. Links UserProfile to a User model instance.
    user = models.OneToOneField(User, on_delete= models.CASCADE)
# The additional attributes we wish to include.
    faculty=models.CharField(max_length= 100)
    level=models.CharField(max_length= 100)
    gender=models.CharField(max_length= 100)
    premium = models.BooleanField(default=False)
    def __str__(self):
        return self.user.username