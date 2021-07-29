from django.db.models import Count
from datetime import timedelta
from django.utils import timezone
from tagging.models import Tag
from .models import Quest

def get_popular_tag(model):
    three_days_ago = timezone.now().date() - timedelta(days=3)
    tag = Tag.objects.usage_for_model(
        model, counts=True, filters=dict(date_asked__gte=three_days_ago))
    if not tag or len(tag) <= 3:
        tag = Tag.objects.usage_for_model(
            model, counts=True)
    return tag
def get_similar_post(question, tags):
    try:
        post_tags_ids = tags.values_list(
            'name', flat=True)
        similar_posts = Quest.Approved.filter(
            tags__icontains=post_tags_ids).exclude(id=question.id)
        similar_posts = similar_posts.annotate(same_tags=Count(
            'tag'), like=Count('votes')).order_by('-same_tags', '-publish', '-like')
        if not similar_posts:
            similar_posts = Quest.Approved.filter(
                faculty=question.faculty).exclude(id=question.id)
            similar_posts = similar_posts.annotate(like=Count(
                'votes')).order_by('-publish', '-like')
    except:
        similar_posts = Quest.Approved.filter(
            faculty=question.faculty).exclude(id=question.id)
    return similar_posts


def get_popular_tag_for_group(model, group):
    three_days_ago = timezone.now().date() - timedelta(days=3)
    tag = Tag.objects.usage_for_model(
        model, counts=True, filters=dict(date_asked__gte=three_days_ago, group_asked=group))
    if not tag or len(tag) <= 3:
        tag = Tag.objects.usage_for_model(
            model, counts=True)
    return tag

