from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import ugettext_lazy as _

from .models import Test1


@plugin_pool.register_plugin
class TestPlugin(CMSPluginBase):
    model = Test1
    name = _("Test Plugin")
    render_template = "test_plugin.html"
    cache = False

    def render(self, context, instance, placeholder):
        context = super(TestPlugin, self).render(context, instance, placeholder)
        return context


@plugin_pool.register_plugin
class BannerStickyPlugin(CMSPluginBase):
    model = CMSPlugin
    render_template = "banner_sticky_plugin.html"
    cache = False

