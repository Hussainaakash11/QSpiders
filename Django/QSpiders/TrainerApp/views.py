from django.shortcuts import render
from django.http import HttpResponse

def profile_view(request):
    return HttpResponse("<i>Your Profile</i>")


def leave_view(request):
    return HttpResponse("<b>Present or Absent</b>")

def mock_view(request):
    return HttpResponse("<h2>Pass or Fail</h2>")