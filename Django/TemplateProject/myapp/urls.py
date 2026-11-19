from django.urls import path 
from myapp import views 

urlpatterns = [
    
    # routes for Trainer App
    path('home/',views.home_view),

]