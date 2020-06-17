from django.urls import path
from . import views

app_name = 'app'
urlpatterns = [
    path('', views.dashboard, name='dashboard'),
    path('f1/', views.function01, name='function01'),
]
