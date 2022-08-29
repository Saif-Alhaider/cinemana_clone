from django.db import models

# Create your models here.

class Videos(models.Model):
    title = models.CharField(max_length=220)
    description = models.TextField(max_length=220,blank=True, null=True)
    # slug
    video_id = models.CharField(max_length=220)
    # state = models.CharField(max_length=2)
    # state_time_stamp
    # edit_time_stamp
    