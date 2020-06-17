from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin

# Register your models here.

from .models import *

class ProfileInline(admin.StackedInline):
    model = Profile
    can_delete = False
    verbose_name_plural = 'profiles'


class UserAdmin(BaseUserAdmin):
    inlines = (
        ProfileInline,
    )

admin.site.unregister(User)
admin.site.register(User, UserAdmin)


admin.site.register(VolunteerApplication)
admin.site.register(Profile)