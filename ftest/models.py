from django.db import models

FOOD_TYPE = [("早餐","早餐"), ("午餐","午餐"),
             ("晚餐","晚餐"), ("宵夜","宵夜"), ("點心","點心")]
SCORES = [(1, 1), (2, 2), (3, 3), (4, 4), (5, 5)]

class FoodReview(models.Model):
    food = models.CharField(max_length=20, verbose_name="餐點")
    food_type = models.CharField(max_length=5, choices=FOOD_TYPE, verbose_name="用餐類別")
    score = models.IntegerField(choices=SCORES, verbose_name="評分")
    review = models.TextField(default="無", verbose_name="評論")
    photo = models.ImageField(upload_to="foodreview", verbose_name="照片")
    def __str__(self):
        return self.food
    
