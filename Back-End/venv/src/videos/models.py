# time zone uses UTC time not local time
from django.utils import timezone
# using pre_save to give some fields valeus when the object is created
from django.db.models.signals import pre_save

from django.db import models
# Create your models here.

# seperating publish choices in another class to make it globale and more clean code


class PublishStateChoices(models.TextChoices):
    PUBLISHED = "PU", "Published"
    DRAFT = "DR", "Draft"

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
    title = models.CharField(max_length=220)
    description = models.TextField(max_length=220, blank=True, null=True)
    slug = models.CharField(max_length=220, null=True, blank=True)
    video_id = models.CharField(max_length=220)
    active = models.BooleanField(default=False)
    state = models.CharField(
        max_length=2, choices=PublishStateChoices.choices, default=PublishStateChoices.DRAFT)

    publish_time_stamp = models.DateTimeField(
        auto_now=False, auto_now_add=False, blank=True, null=True)

    # auto_now_add=True will give the object time when it's initiated
    # auto_now=True will give the object time when it's updated

    created_time_stamp = models.DateTimeField(auto_now_add=True)
    edited_time_stamp = models.DateTimeField(auto_now=True)

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


def pre_save_publish_time_stamp(sender, instance, *args, **kwargs):
    is_published = instance.publish_time_stamp is None and instance.state == PublishStateChoices.PUBLISHED

    is_drafted = instance.state == PublishStateChoices.DRAFT
    
    if is_published:
        instance.active = True
        now = timezone.now()
        instance.publish_time_stamp = now

    elif is_drafted:
        instance.publish_time_stamp = None


pre_save.connect(pre_save_publish_time_stamp, AllVideos)
pre_save.connect(pre_save_publish_time_stamp, Videos)
