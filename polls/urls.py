from django.urls import path
from polls import views

urlpatterns = [
    path('', views.index),
    path('vote/<int:id>/', views.vote),
    path('votejs/<int:id>/', views.votejs),
] 
