from django.views.generic import TemplateView


class HomeView(TemplateView):
	template_name = 'index.jade'


class WebsitePageView(TemplateView):
	template_name = 'web.jade'


class MusicPageView(TemplateView):
	template_name = 'music.jade'


class CodePageView(TemplateView):
	template_name = 'code.jade'