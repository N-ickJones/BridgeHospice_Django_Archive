# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals

from cms.sitemaps import CMSSitemap
from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.i18n import i18n_patterns
from django.contrib import admin
from django.contrib.sitemaps.views import sitemap
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.urls import path
from django.views.generic import TemplateView
from django.views.static import serve

from django.contrib.auth import views as auth_views

from core_app import views

admin.autodiscover()

urlpatterns = [
    path('sitemap.xml', sitemap, {'sitemaps': {'cmspages': CMSSitemap}}),
    path("robots.txt", TemplateView.as_view(template_name="robots.txt", content_type="text/plain")),
    path('login', auth_views.LoginView.as_view(), name='login'),
    path('logout', views.logout_user, name='logout'),
]

urlpatterns += ( #i18n_patterns(
    url(r'^admin/', admin.site.urls),  # NOQA
    url(r'^', include('cms.urls')),
    path('forms/', include('core_forms.urls', namespace='forms')),
    path('dashboard/', include('core_app.urls', namespace='dashboard')),
)

# This is only needed when using runserver.
if settings.DEBUG:
    urlpatterns = [
        url(r'^media/(?P<path>.*)$', serve,
            {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
        ] + staticfiles_urlpatterns() + urlpatterns
