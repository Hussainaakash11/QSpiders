from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home_view(request):
    return render(request,'newsapp/home.html')
def business_view(request):
    return render(request, 'newsapp/news.html')
def sports_view(request):
    return render(request, 'newsapp/news.html')
def entertainment_view(request):
    return render(request, 'newsapp/news.html')