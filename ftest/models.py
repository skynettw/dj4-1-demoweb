from django.db import models
from django.contrib.auth.models import User

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
    
class Diary(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    date = models.DateField(verbose_name="日期")
    content = models.TextField(verbose_name="記事")
    rec_date = models.DateTimeField(auto_now_add=True, verbose_name="記錄日期")
    def __str__(self):
        return str(self.date)

class Photo(models.Model):
    diary = models.ForeignKey(Diary, on_delete=models.CASCADE)
    photo = models.ImageField(upload_to="diary", verbose_name="照片")
    memo = models.CharField(max_length=20, verbose_name="照片說明")
    def __str__(self):
        return self.memo
    
    
