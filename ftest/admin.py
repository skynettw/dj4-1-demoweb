from django.contrib import admin
from ftest.models import FoodReview, Diary, Photo

@admin.register(FoodReview)
class FoodReviewAdmin(admin.ModelAdmin):
    list_display = ['food', 'food_type', 'score', 'review', 'photo']
    
@admin.register(Diary)
class DiaryAdmin(admin.ModelAdmin):
    list_display = ['user', 'date', 'content', 'rec_date']
    
@admin.register(Photo)
class PhotoAdmin(admin.ModelAdmin):
    list_display = ['diary', 'photo', 'memo']