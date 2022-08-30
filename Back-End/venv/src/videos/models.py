from django.utils import timezone
from weakref import proxy
from django.db import models
from django.db.models.signals import pre_save
# Create your models here.


class PublishStateChoices(models.TextChoices):
    PUBLISHED = "PU", "Published"
    DRAFT = "DR", "Draft"


class VideoMangerFilter(models.QuerySet):
    
    def publish(self):
        now = timezone.now()
        return Videos.objects.filter(
            state=PublishStateChoices.PUBLISHED, publish_time_stamp__lte=now)
        
    def draft(self):return Videos.objects.filter(state=PublishStateChoices.DRAFT)


class VideosManager(models.Manager):
    def get_queryset(self):
        return VideoMangerFilter(model=self.model, using=self._db)

    def publish(self):return self.get_queryset().publish()
    
    def draft(self):return self.get_queryset().draft()


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

    # edit_time_stamp
    created_time_stamp = models.DateTimeField(auto_now_add=True)
    edited_time_stamp = models.DateTimeField(auto_now=True)
    
    
    objects = VideosManager()
    


    @property
    def published(self):
        return self.active


class AllVideos(Videos):
    class Meta:
        proxy = True
        verbose_name = "ALL Video"
        verbose_name_plural = "All Videos"


class PublishedVideos(Videos):
    class Meta:
        proxy = True
        verbose_name = "Published Video"
        verbose_name_plural = "Published Videos"


def pre_save_publish_time_stamp(sender, instance, *args, **kwargs):
    if instance.publish_time_stamp is None and instance.state == PublishStateChoices.PUBLISHED:
        now = timezone.now()
        instance.publish_time_stamp = now

    elif instance.state == PublishStateChoices.DRAFT:
        instance.publish_time_stamp = None


pre_save.connect(pre_save_publish_time_stamp, AllVideos)
pre_save.connect(pre_save_publish_time_stamp, Videos)
