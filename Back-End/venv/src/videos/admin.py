from django.contrib import admin
from .models import AllVideos,PublishedVideos
# Register your models here.



class AllVideosAdmin(admin.ModelAdmin):
    list_display = ['title','video_id','published','publish_time_stamp']
    readonly_fields = ['publish_time_stamp','active']
    class Meta:
        model = AllVideos
        

class PublishedVideosAdmin(admin.ModelAdmin):
    list_display = ['title','video_id','published']
    
    def get_queryset(self,request):
        queryset = AllVideos.objects.filter(active=True)
        return queryset

admin.site.register(PublishedVideos, PublishedVideosAdmin)


admin.site.register(AllVideos, AllVideosAdmin)
