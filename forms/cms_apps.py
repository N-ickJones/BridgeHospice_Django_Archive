from cms.app_base import CMSApp
from cms.apphook_pool import apphook_pool


@apphook_pool.register
class Formshook(CMSApp):
    app_name = "forms"
    name = "Forms"

    def get_urls(self, page=None, language=None, **kwargs):
        return ["forms.urls"]
