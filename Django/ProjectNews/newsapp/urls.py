from django.urls import path 
from newsapp import views 

urlpatterns = [
    path('', views.home_view, name='home_index'),
    path('home/', views.home_view, name='home'),
    path('business/', views.business_view, name='business'),
    path('sports/', views.sports_view, name='sports'),
    path('entertainment/', views.entertainment_view, name='entertainment'),
]
