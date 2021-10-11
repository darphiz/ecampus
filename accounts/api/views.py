#from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view
from accounts.api.serializers import RegistrationSerializer
from rest_framework.authtoken.models import Token




@api_view(['POST',])
def register(request):
    data = {}    
    serializer = RegistrationSerializer(data=request.data) 
    if serializer.is_valid():
        account = serializer.save()
        token = Token.objects.get(user=account)
        data['response'] = "successfully registered the user"
        data['token'] = token.key
        data['email'] = account.email
        data['username'] = account.username
    else:
        data = serializer.errors
    return Response(data)

