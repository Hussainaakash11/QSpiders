from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def student_view(request):
    student={
        'name' : 'virat',
        'subject' : 'cricket',
        'marks' : 189
    }
    context = student
    return render(request,'myapp/student.html', context)