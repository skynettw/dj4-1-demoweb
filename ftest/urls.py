from django.urls import path
from ftest import views

urlpatterns = [
    path('bmi/', views.bmi),
    path('review/', views.review),
    path('review2/', views.review2),
    path('review3/', views.review3),
    path('diary/', views.diary),
    path('diary/show/<int:id>/', views.diary_show),
    path('diary/add/', views.diary_add),
    path('diary/del/<int:id>/', views.diary_del),
    path('diary/edit/<int:id>/', views.diary_edit),
    path('photo/list/<int:id>/', views.photo_list),
    path('photo/add/<int:id>/', views.photo_add),
    path('photo/del/<int:id>/', views.photo_del),
] 
