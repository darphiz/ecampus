from rest_framework import serializers
from django.contrib.auth.models import User


class RegistrationSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['username','password','email']
        extra_kwargs = {
            'password': {'write_only': True}
        }
    def save(self):
        account = User(username=self.validated_data['username'], 
        password=self.validated_data['password'],
        email=self.validated_data['email'])
        email=self.validated_data['email']
        if User.objects.filter(email=email).exists():
            raise serializers.ValidationError({"email":"A user with that email already exists."})
        password=self.validated_data['password']
        account.set_password(password)
        account.save()
        return account

