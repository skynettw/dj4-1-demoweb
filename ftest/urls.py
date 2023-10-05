from django.urls import path
from ftest import views

urlpatterns = [
    path('bmi/', views.bmi),
] 
