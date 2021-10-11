from rest_framework import serializers
from community.models import Quest

class QuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Quest
        fields = ['title','date_asked']