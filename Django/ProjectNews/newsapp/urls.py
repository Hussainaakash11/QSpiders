from django.urls import path 
from newsapp import views 

urlpatterns = [
    
    # routes for Trainer App
    path('home/',views.home_view),
    path('business/',views.business_view),
    path('sports/',views.sports_view),
    path('entertainment/',views.entertainment_view),

]