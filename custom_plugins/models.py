from django.db import models

from cms.models.pluginmodel import CMSPlugin


class Test1(CMSPlugin):
    test_value = models.CharField(max_length=50, default='Test1234')
