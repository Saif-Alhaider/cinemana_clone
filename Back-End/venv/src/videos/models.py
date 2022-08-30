# time zone uses UTC time not local time
from django.utils import timezone
# using pre_save to give some fields valeus when the object is created
from django.db.models.signals import pre_save
# importing slugigy function to set slug field value
from django.utils.text import slugify
# 
from cinemana_project.db.models import PublishStateChoices
# 
from cinemana_project.db.receivers import pre_save_publish_time_stamp,pre_save_slugify
from django.db import models
# Create your models here.



# to filter values easily instead of typing code many times more simpler more cleaner


class VideoMangerFilter(models.QuerySet):
    def publish(self):
        now = timezone.now()
        return Videos.objects.filter(
            state=PublishStateChoices.PUBLISHED, publish_time_stamp__lte=now)

    def draft(self): return Videos.objects.filter(
        state=PublishStateChoices.DRAFT)

# created new manger just so i can get querysets that i want


class VideosManager(models.Manager):
    def get_queryset(self):
        return VideoMangerFilter(model=self.model, using=self._db)

    def publish(self): return self.get_queryset().publish()

    def draft(self): return self.get_queryset().draft()


class Videos(models.Model):
    # ---------- content text fields ------------------
    title = models.CharField(max_length=220)
    description = models.TextField(max_length=220, blank=True, null=True)
    # ----------------------------------------
    slug = models.CharField(max_length=220, null=True, blank=True)

    video_id = models.CharField(max_length=220)
    # ----------state fields--------------
    active = models.BooleanField(default=False)
    state = models.CharField(
        max_length=2, choices=PublishStateChoices.choices, default=PublishStateChoices.DRAFT)

    # --------------------- time fields ------------------------

    publish_time_stamp = models.DateTimeField(
        auto_now=False, auto_now_add=False, blank=True, null=True)

    # auto_now_add=True will give the object time when it's initiated
    # auto_now=True will give the object time when it's updated

    created_time_stamp = models.DateTimeField(auto_now_add=True)
    update = models.DateTimeField(auto_now=True)

    objects = VideosManager()

    # more friendly user instead of displaying active in admin db

    @property
    def published(self):
        return self.active


class AllVideos(Videos):
    class Meta:
        proxy = True
        verbose_name = "ALL Video"
        verbose_name_plural = "All Videos"

# displaying only published videos


class PublishedVideos(Videos):
    class Meta:
        proxy = True
        verbose_name = "Published Video"
        verbose_name_plural = "Published Videos"



        
pre_save.connect(pre_save_publish_time_stamp, AllVideos)
pre_save.connect(pre_save_publish_time_stamp, Videos)

pre_save.connect(pre_save_slugify, AllVideos)
pre_save.connect(pre_save_slugify, Videos)