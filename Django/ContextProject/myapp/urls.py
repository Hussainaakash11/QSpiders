from django.urls import path 
from myapp import views 

urlpatterns = [
    
    # routes for Trainer App
    path('std/',views.student_view),

]