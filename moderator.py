import os
from bs4.builder import TreeBuilderRegistry
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Darphiz.settings")
import django
django.setup()
from django.core.management import call_command
import requests
from community.models import Quest
from dotenv import load_dotenv
from bs4 import BeautifulSoup
import html2text


from community.models import Quest
from notifications.signals import notify
from django.contrib.auth.models import User


load_dotenv()

KEY = os.getenv('IMAGE_DETECTOR_API_KEY')



def api_check_nudity(image):
    image = f'https://easycampus.pythonanywhere.com{image}'
    r = requests.post("https://api.deepai.org/api/content-moderation",data={'image': image,}, headers={'api-key': KEY }).json()
    if r['output']["nsfw_score"] > 0.5:
        nude = True
    else:
        nude = False
    return nude


def api_check_profanity(message):
    url = f"https://www.purgomalum.com/service/containsprofanity?text={message}"
    contains_profanity = requests.get(url).json()
    if contains_profanity:
        profanity = True
    else:
        profanity = False
    return profanity


def check_images(html):
    constains_nsfw = False
    soup = BeautifulSoup(html, 'lxml')
    img = soup.findAll('img')
    for image in img:
        src = image.get('src')
        is_nude = api_check_nudity(src)
        if is_nude:
            constains_nsfw = True

    return constains_nsfw

def check_text(html):
    constains_profanity = False
    h = html2text.HTML2Text()
    h.ignore_links = True
    h.ignore_images = True
    parsed_data = h.handle(html)
    is_a_bard_word = api_check_profanity(parsed_data)
    if is_a_bard_word:
        constains_profanity =True
    return constains_profanity

def AutoApprove():
    questions = Quest.Pending.all().order_by('date_asked')
    user = User.objects.get(username='admin')
    contains_bad_thumbnail = False
    if questions:
        for question in questions:
            constains_bad_images = check_images(question.body)
            contains_bad_words = check_text(question.body)
            contains_bad_title = api_check_profanity(question.title) 
            if question.image_upload.url:
                contains_bad_thumbnail = api_check_nudity(question.image_upload.url)
            if constains_bad_images or contains_bad_words or contains_bad_title or contains_bad_thumbnail:
                question.status = "rejected"
                question.save()
                message = f"rejected your {question.type}:  \"{question.title}\""
                notify.send(user ,recipient=question.asked_by, verb=message, url=question.get_absolute_url())
            else: 
                question.status = "approved"
                question.save()
                message = f"approved your {question.type}:  \"{question.title}\""
                notify.send(user ,recipient=question.asked_by, verb=message, url=question.get_absolute_url())

AutoApprove()