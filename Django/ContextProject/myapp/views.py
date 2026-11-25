from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def student_view(request):
    student = [
        {
        'name' : 'Aakash' ,
        'subject' : 'History',
        'marks': 198,
    },
    {
        'name' : 'virat',
        'subject' : 'cricket',
        'marks' : 189
    },
    {
        'name' : 'rohit',
        'subject' : 'cricket',
        'marks' : 264
    }
    ]
    context = {'data' : student}
    return render(request,'myapp/student.html', context)