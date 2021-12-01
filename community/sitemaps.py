from django.contrib.sitemaps import Sitemap
from .models import Quest


class QuestionSitemap(Sitemap):
    changefreq = 'weekly'
    priority = 0.9

    def items(self):
        return Quest.Approved.all()

    def lastmod(self, obj):
        return obj.updated
