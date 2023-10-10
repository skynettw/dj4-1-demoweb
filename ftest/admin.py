from django.contrib import admin
from ftest.models import FoodReview

@admin.register(FoodReview)
class FoodReviewAdmin(admin.ModelAdmin):
    list_display = ['food', 'food_type', 'score', 'review', 'photo']