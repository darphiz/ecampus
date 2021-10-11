from accounts.api import serializers
from rest_framework.response import Response
from rest_framework.decorators import api_view,permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.pagination import PageNumberPagination
from rest_framework.generics import ListAPIView
from rest_framework.authentication import TokenAuthentication
from community.utils import recommend_questions
from community.models import Quest
from community.api.serializers import QuestionSerializer


@api_view(['GET',])
@permission_classes((IsAuthenticated,))
def question_list(request):
    serializer = QuestionSerializer(questions)
    return Response(serializer.data)

class ApiQuestionListView(ListAPIView):
    queryset =Quest.Approved.all()
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
    pagination_class =PageNumberPagination
    def list(self, request):
        queryset = recommend_questions(request, self.get_queryset())
        serializer = QuestionSerializer(queryset, many=True)
        return Response(serializer.data)
