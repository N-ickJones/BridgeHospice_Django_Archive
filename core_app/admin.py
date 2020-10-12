from django.contrib import admin

# Register your models here.
from .models import *


admin.site.register(Post)
admin.site.register(Attachment)
admin.site.register(Target)
admin.site.register(Image)