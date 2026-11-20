from django.urls import path
from StudentApp import views 

urlpatterns = [
    # routes for student app
    path('home/',views.home_view),

]