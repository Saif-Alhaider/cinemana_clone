from django.test import TestCase
from .models import Video
from cinemana_project.db.models import PublishStateChoices
from django.utils.text import slugify
from videos.models import Video
# Create your tests here.


class VideoTests(TestCase):
    def setUp(self):
        self.obj_a = Video.objects.create(title="video-1",video_id="djanwdkja")
        Video.objects.create(
            title="video-2", state=PublishStateChoices.PUBLISHED,video_id="abc")


    def test_checkQueries(self):
        qs = Video.objects.all()
        self.assertEquals(qs.count(), 2)

    def test_validate_title(self):
        title = "video-1"
        qs = Video.objects.filter(title=title)
        self.assertTrue(qs.exists())

    def test_draft_state(self):
        qs = Video.objects.draft()
        self.assertTrue(qs.exists())

    def test_published_state(self): 

        qs = Video.objects.publish()
        self.assertTrue(qs.exists())
    
    def test_slug_case(self):
        firstObjTitle = self.obj_a.title
        firstObjslug = slugify(firstObjTitle)
        qs = Video.objects.filter(slug=firstObjslug)
        self.assertTrue(qs.exists())
