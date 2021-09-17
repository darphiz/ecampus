from typing import Type
from django.db.models import Count
from datetime import timedelta
from django.utils import timezone
from tagging.models import Tag, TaggedItem
from .models import Interest, Quest, Visit
from django.http import HttpResponse
import json
from django.shortcuts import render

TWO_WEEKS = timezone.now().date() - timedelta(days=14)

def get_visits_auth(user):
    """
    Function returns ids of question already visited by an authenticated user
    """
    already_visited = Visit.objects.get_or_create(user=user)[0]
    already_visited = already_visited.questions.all().values_list('id', flat=True)
    return already_visited  

def get_visits_anon(request):
    """
    Function returns ids of question already visited by an anonymous user
    """
    if request.COOKIES.get('visited'):
        already_visited = request.COOKIES['visited'].replace('[','').replace(']','').replace(" ","").split(',')
        visited_list = [int(i) for i in already_visited]
    else:
        visited_list = []
    return visited_list

def get_popular_tag(model):
    """
    Return the trending tag in the app
    Fileted by trending in the past two weeks or all if return None
    """
    three_days_ago = timezone.now().date() - timedelta(days=3)
    tag = Tag.objects.usage_for_model(
        model, counts=True, filters=dict(date_asked__gte=three_days_ago,status="approved"))
    if not tag or len(tag) <= 3:
        tag = Tag.objects.usage_for_model(
            model, counts=True,filters=dict(status="approved"))
    return tag

def get_similar_post(question, tags):
    """
    Get similar Posts to the one currently viewed
    """
    try:
        post_tags_ids = tags.values_list(
            'name', flat=True)
        similar_posts = Quest.Approved.filter(
            tags__icontains=post_tags_ids).exclude(id=question.id)
        similar_posts = similar_posts.annotate(same_tags=Count(
            'tag'), like=Count('votes')).order_by('-same_tags', '-publish', '-like')
    except:
      similar_posts = []
    return similar_posts

##############[TRACKING SECTION]###############

def track_auth_interest(post, request,context):
    tags = post.tags.split(",")
    if len(tags) !=0:
        jsonDec = json.decoder.JSONDecoder() 
        load_interest = Interest.objects.get_or_create(user=request.user)[0]
        interest_list = jsonDec.decode(load_interest.keytags) #get list or create
        if not interest_list:
            load_interest.keytags = tags
            load_interest.save()
        else:  
            new_interest = list(set(tags + interest_list))
            load_interest.keytags = new_interest
            load_interest.save()
    def store_visit(post,user):
        user.visits.questions.add(post)
    store_visit(post,request.user)
    return render(request, 'general/details.html', context)

def track_anon_interest(request,post,context):
    visit = get_visits_anon(request)
    if post not in visit:
        visit.append(post.id)
    response =  HttpResponse(render(request, 'general/details.html', context))
    response.set_cookie('visited', visit)
    return response

def track_user(request,post,context):
    if request.user.is_authenticated:
        return track_auth_interest(post, request,context)
    else:
        return track_anon_interest(request,post,context)

#######################################




def get_popular_tag_for_group(model, group):
    three_days_ago = timezone.now().date() - timedelta(days=3)
    tag = Tag.objects.usage_for_model(
        model, counts=True, filters=dict(date_asked__gte=three_days_ago, group_asked=group))
    if not tag or len(tag) <= 3:
        tag = Tag.objects.usage_for_model(
            model, counts=True)
    return tag

####################[RECOMMENDATION ALGORITHM]########################
"""
Union of questons asked by people you followed, by someone in your faculty, 
liked by someone you followed, and the tags you clicked in the past
Excluding: the ones you've clicked   

"""

def get_question_asked_by_friends(model,user):
    following = user.following.all()
    questions = model.filter(asked_by__in = following, date_asked__gte = TWO_WEEKS)
    return questions.distinct()

def get_question_asked_by_faculty_mate(model,user):
    faculty = user.userprofile.faculty
    questions = model.filter(asked_by__userprofile__faculty = faculty, date_asked__gte = TWO_WEEKS)
    return questions.distinct()
def get_question_liked_by_followed(model,user):
    followed = user.following.all()
    questions = model.filter(votes__in = followed)
    return questions.distinct()

def get_question_by_interest(model,user):
    try:
        interest = user.Interest.keytags
    except:
        interest = Interest.objects.get_or_create(user=user)[0]
        interest = interest.keytags
    jsonDec = json.decoder.JSONDecoder()
    get_interests = jsonDec.decode(interest) 
    if get_interests:
        questions = TaggedItem.objects.get_union_by_model(model,get_interests)
        return questions.distinct()
    else:
        return model.none()


def load_auth_algo(model, user):
    by_interest = get_question_by_interest(model, user)
    by_faculty_mate = get_question_asked_by_faculty_mate(model, user)
    by_following_liked = get_question_liked_by_followed(model, user)
    by_followings = get_question_asked_by_friends(model, user)
    question_ids = (by_faculty_mate | by_following_liked | by_followings| by_interest)
    visited = get_visits_auth(user)
    question_ids = question_ids.annotate(like = Count('votes')).distinct().exclude(id__in = visited).order_by('?','-date_asked','-like')
    return question_ids


def load_anon_algo(request,model):
    exclude = get_visits_anon(request)
    questions = model.exclude(id__in = exclude).annotate(likes = Count("votes")).order_by("-likes","-date_asked")
    return questions

def recommend_questions(request,model):
    if request.user.is_authenticated:
        q = load_auth_algo(model,request.user)
    else:
        q = load_anon_algo(request,model)
    if q.count() <= 2:
        q = model.annotate(likes = Count("votes")).order_by('?',"-likes","-date_asked")
    return q

   
####################
    
