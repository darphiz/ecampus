from django.db import models
from django.utils.timezone import now

# Create your models here.


class OTP(models.Model):
    user = models.EmailField(unique=True)
    user_name = models.CharField(max_length=250)
    code = models.CharField(max_length=6, unique=True)
    date_created = models.DateTimeField(auto_now=True)
    expiry_date = models.DateTimeField()

    @property
    def has_timeout(self):
        if self.expiry_date <= now():
            return True
        else:
            return False

    def __str__(self):
        return self.user
