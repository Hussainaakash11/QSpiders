"""
URL configuration for QSpiders project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/6.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from StudentApp import views as v1
from TrainerApp import views as v2

urlpatterns = [
    path('admin/', admin.site.urls),

    # routes for Trainer App
    path('profile/',v2.profile_view),
    path('leave/',v2.leave_view),
    path('mock/',v2.mock_view),

    # routes for student app
    path('home/',v1.home_view),
    path('attendence/',v1.attendence_view),
    path('exam/',v1.exam_view),

]