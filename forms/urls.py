from django.urls import path
from . import views

app_name = 'forms'
urlpatterns = [
    path('volunteer/', views.volunteer_form, name='volunteer_form')
]
