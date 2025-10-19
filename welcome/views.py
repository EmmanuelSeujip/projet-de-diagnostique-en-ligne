from django.shortcuts import render,redirect
from django.contrib.auth import authenticate, login,get_user_model

# Creer un objet user
User=get_user_model()
# Create your views here.
def index(request):
    return render(request,'index.html',context={})

def connexion(request):
    error=None
    context={
        "fields":[
            {
            "label":"Email",
            "icon":"fas fa-envelope",
            "type":"mail",
            "required":True,
            "name":"mail"
            },
            {
            "label":"Mot de passe",
            "icon":"fas fa-lock",
            "type":"password",
            "required":True,
            "name":"password"
            }
        
        ]    
    }

    if request.method == 'POST':
        mail=request.POST.get('mail')
        password=request.POST.get('password')
        try:
            user_obj=User.objects.get(email=mail)
            user= authenticate(request,username=user_obj.username,password=password)
            if user is not None:
                # login(request,user)
                return redirect('home/')
            else:
                error="Mot de passe incorrect"
        except User.DoesNotExist:
            error="Adresse email introuvable"
    return render(request,'connexion.html',context=context)