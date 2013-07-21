from django.conf.urls import patterns, include, url
from django.contrib import admin

admin.autodiscover()

from website.views import *

urlpatterns = patterns('',
    # Examples:
    url(r'^$', HomeView.as_view(), name='home'),
    url(r'^web$', WebsitePageView.as_view(), name='web'),
    url(r'^music$', MusicPageView.as_view(), name='music'),
    url(r'^projects$', ProjectPageView.as_view(), name='projects'),
    # url(r'^website/', include('website.foo.urls')),
    # (r'^contact/',    include('envelope.urls')),
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),
)
