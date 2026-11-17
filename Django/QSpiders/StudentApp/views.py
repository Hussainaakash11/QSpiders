from django.shortcuts import render
from django.http import HttpResponse

def home_view(request):
    return HttpResponse("<h1>This is Home</h1>")


def attendence_view(request):
    return HttpResponse("<h2>Present or Absent</h2>")

def exam_view(request):
    return HttpResponse("<h3>Pass or Fail</h3>")