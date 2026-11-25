from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home_view(request):
    return render(request,'newsapp/home.html')
def business_view(request):
    data = {
            'msg1' : "Nvidia's Jensen Huang says he is in therapy as comeback rally fades",
            'msg2' : "Microsoft declares ‘Code Red’ after historic outage, internal memos show",
            'msg3' : "US preparing to unveil plan for new tariffs on global trading partners",
            'type' : "business"
        }
    context = data
    return render(request, 'newsapp/news.html',context)
def sports_view(request):
    data = {
        'msg1' : "Records tumble as Indian teen Sooryavanshi smashes 53-ball 204 against UAE",
        'msg2' : "Ben Stokes registers for IPL 2027 auction, 12 Bangladesh players also listed",
        'msg3' : "Dohni Retired on 19 Nov 2026",
        'type' : "sports"
    }
    context = data
    return render(request, 'newsapp/news.html',context)
def entertainment_view(request):
    data = {
            'msg1' : "Pakistani Netflix series starring Fawad Khan, Mahira Khan faces opposition in India, AICWA urges PM Modi to stop December 4 release",
            'msg2' : "Michael B Jordan acknowledges Dadasaheb Phalke International Film Festival award for Sinners",
            'msg3' : "Dune Nominated for Oscars",
            'type' : "entertainment"
        }
    context = data
    return render(request, 'newsapp/news.html',context)