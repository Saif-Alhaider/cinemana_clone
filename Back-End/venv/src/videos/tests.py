from os import stat
from sre_parse import State
from django.utils import timezone
from turtle import title
from django.test import TestCase
from .models import Videos, PublishStateChoices
# Create your tests here.


class VideoTests(TestCase):
    def setUp(self):
        Videos.objects.create(title="video-1")
        Videos.objects.create(
            title="video-2", state=PublishStateChoices.PUBLISHED)

    def test_checkQueries(self):
        qs = Videos.objects.all()
        self.assertEquals(qs.count(), 2)

    def test_validate_title(self):
        title = "video-1"
        qs = Videos.objects.filter(title=title)
        self.assertTrue(qs.exists())

    def test_draft_state(self):
        qs = Videos.objects.draft()
        self.assertTrue(qs.exists())

    def test_published_state(self):

        qs = Videos.objects.publish()
        self.assertTrue(qs.exists())
