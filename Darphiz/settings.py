"""
Django settings for Darphiz project.

Generated by 'django-admin startproject' using Django 2.2.3.

For more information on this file, see
https://docs.djangoproject.com/en/2.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.2/ref/settings/
"""

import os
from django.urls import reverse_lazy

import os
from dotenv import load_dotenv



# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
load_dotenv(os.path.join(BASE_DIR, '.env'))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.getenv("SECRET_KEY")

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False


ALLOWED_HOSTS = ['www.easyclassmate.com','easyclassmate.com']

SITE_ID = 1
# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sites',
    'django.contrib.sitemaps',
    #'paystack.frameworks.django',
    'accounts',
    'cbt',
    'mcq',
    'community',
    'tagging',
    'django_summernote',
    'sorl.thumbnail',
    'OTP',
    'notifications',
    'rest_framework',
    'rest_framework.authtoken',

]

REST_FRAMEWORK = {
   'DEFAULT_AUTHENTICATION_CLASSES': (
       'rest_framework.authentication.TokenAuthentication',
          'rest_framework.authentication.SessionAuthentication',
   ),
   'DEFAULT_PERMISSION_CLASSES': (
        'rest_framework.permissions.IsAdminUser',
   ),
}
"""
REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework.authentication.TokenAuthentication',
    ],
     'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',
    ],
    'DEFAULT_PAGINATION_CLASS':
        'rest_framework.pagination.PageNumberPagination',
        'PAGE_SIZE':4,


}
"""
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'Darphiz.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'libraries': {
            #    'paystack': 'paystack.frameworks.django.templatetags.paystack',
                },
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'Darphiz.wsgi.application'
FORCE_LOWERCASE_TAGS = True

# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases


"""
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
"""

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'easycampus$easyclassmatebase',
        'USER': 'easycampus',
        'PASSWORD': os.getenv("DATA_BASE_PASSWORD"),
        'HOST': 'easycampus.mysql.pythonanywhere-services.com',
    }
}

DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
# Password validation
# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.2/howto/static-files/
# this tells django to look for a folder called static and add it as a static folder
# the django automaticall create folder named assets ,by typing pyhton mange.py collectstatic on the command prompt

STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static')
]

STATIC_ROOT = os.path.join(BASE_DIR, 'assets')

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

X_FRAME_OPTIONS = 'SAMEORIGIN'
XS_SHARING_ALLOWED_METHODS = ['POST','GET','OPTIONS', 'PUT', 'DELETE']


ABSOLUTE_URL_OVERRIDES = {'auth.user': lambda u: reverse_lazy('user_detail',args=[u.username])}
LOGIN_REDIRECT_URL = reverse_lazy("question_list")
LOGIN_URL = reverse_lazy("login")
LOGOUT_URL = reverse_lazy("logout")


def static_url(url):
    return os.path.join(STATIC_URL, url)

SUMMERNOTE_CONFIG = {
    'width':'100%',
    'toolbar': [
        ['style', ['style']],
        ['font', ['bold', 'italic','superscript','subscript','strikethrough']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']],

        ['insert', ['link', 'picture', 'video',]],
        ['view', ['codeview']],
        ['help', ['help']],


        ],
          "imageTitle": {
          "specificAltField": True,
        },

        "popover": {
            "image": [
                ['custom', ['imageTitle']],
            ]},

    'attachment_filesize_limit': 10240 * 10240, # specify the file size
}


EMAIL_HOST = 'smtp.zeptomail.com'
EMAIL_PORT = 587
EMAIL_HOST_USER = os.getenv('EMAIL_HOST_USER')
EMAIL_HOST_PASSWORD = os.getenv('EMAIL_PASSWORD')
EMAIL_USE_TLS = True
DEFAULT_FROM_EMAIL = EMAIL_HOST_USER
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_USE_SSL = False

PAYSTACK_PUBLIC_KEY = os.getenv('PAYSTACK_PUBLIC_KEY')
PAYSTACK_SECRET_KEY = os.getenv('PAYSTACK_SECRET_KEY')
PASSWORD_MIN_LENGTH = 8

DJANGO_NOTIFICATIONS_CONFIG = { 'USE_JSONFIELD': True}