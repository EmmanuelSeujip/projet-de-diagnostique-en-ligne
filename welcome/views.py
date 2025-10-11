from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request,'index.html',context={})

def connexion(request):
    return render(request,'connexion.html',context={})