from django.urls import path
from ftest import views

urlpatterns = [
    path('bmi/', views.bmi),
    path('review/', views.review),
    path('review2/', views.review2),
] 
