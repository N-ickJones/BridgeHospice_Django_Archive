from django.http import HttpResponse
from django.shortcuts import render
from django.contrib.auth import logout
from core_app.models import *


def dashboard(request):
    return render(request, 'dashboard.html')

def function01(request):
    return render(request, 'function01.html')

def logout_user(request):
    logout(request)
    return render(request, 'logout.html')

def social_media(request):
    posts = Post.objects.all().order_by('-created_time')
    attachments = Attachment.objects.all()
    images = Image.objects.all()
    targets = Target.objects.all()
    return render(request, 'social-media.html', { 'posts': posts, 'attachments': attachments, 'images': images, 'targets': targets })