from cms.app_base import CMSApp
from cms.apphook_pool import apphook_pool


@apphook_pool.register
class CoreAppHook(CMSApp):
    app_name = "core_app"
    name = "Core_App"

    def get_urls(self, page=None, language=None, **kwargs):
        return ["core_app.urls"]

