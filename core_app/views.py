from django.http import HttpResponse
from django.shortcuts import render
from django.contrib.auth import logout


def dashboard(request):
    return render(request, 'dashboard.html')

def function01(request):
    return render(request, 'function01.html')

def logout_user(request):
    logout(request)
    return render(request, 'logout.html')