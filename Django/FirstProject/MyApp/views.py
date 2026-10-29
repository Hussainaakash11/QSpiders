from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def my_view(request):
    return HttpResponse("This is my first View")


def day(request):
    return HttpResponse("It's  Wednesday")

def add(request):
    return HttpResponse("Brrrrrrrrrrrrrrooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo")