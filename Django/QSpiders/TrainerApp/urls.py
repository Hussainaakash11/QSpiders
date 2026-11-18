from django.urls import path 
from TrainerApp import views 

urlpatterns = [
    
    # routes for Trainer App
    path('profile/',views.profile_view),
    path('leave/',views.leave_view),
    path('mock/',views.mock_view),

]