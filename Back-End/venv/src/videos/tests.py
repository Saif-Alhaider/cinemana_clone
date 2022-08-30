from django.test import TestCase
from .models import Videos
from cinemana_project.db.models import PublishStateChoices
from django.utils.text import slugify
# Create your tests here.


class VideoTests(TestCase):
    def setUp(self):
        self.obj_a = Videos.objects.create(title="video-1",video_id="djanwdkja")
        Videos.objects.create(
            title="video-2", state=PublishStateChoices.PUBLISHED,video_id="abc")

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
    
    def test_slug_case(self):
        firstObjTitle = self.obj_a.title
        firstObjslug = slugify(firstObjTitle)
        qs = Videos.objects.filter(slug=firstObjslug)
        self.assertTrue(qs.exists())
