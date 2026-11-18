from django.urls import path
from StudentApp import views 

urlpatterns = [
    # routes for student app
    path('home/',views.home_view),
    path('attendence/',views.attendence_view),
    path('exam/',views.exam_view),

]