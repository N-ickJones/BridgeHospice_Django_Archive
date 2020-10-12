from django.urls import path
from . import views

app_name = 'app'
urlpatterns = [
    path('dashboard/', views.dashboard, name='dashboard'),
    path('f1/', views.function01, name='function01'),
    path('social-media/', views.social_media, name='social_media')
]
