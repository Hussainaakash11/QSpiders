"""
URL configuration for ProjectNews project.
"""
from django.contrib import admin
from django.urls import path, include
from django.views.generic import RedirectView

urlpatterns = [
    path('admin/', admin.site.urls),
    # Redirect root to newsapp home
    path('', RedirectView.as_view(url='newsapp/home/', permanent=False)),
    path('newsapp/', include('newsapp.urls')),
]
