from django.db import models
class MyTask(models.Model):
    item = models.CharField(max_length=200, verbose_name="任務名稱")
    done = models.BooleanField(default=False, verbose_name="完成狀態")
    deleted = models.BooleanField(default=False, verbose_name="封存狀態")
    def __str__(self):
        return self.item
    
class BodyInfo(models.Model):
    name = models.CharField(max_length=20, verbose_name="姓名")
    gender = models.BooleanField(default=False, verbose_name="性別") 
    height = models.FloatField(verbose_name="身高")
    weight = models.FloatField(verbose_name="體重")
    def __str__(self):
        return self.name
    def bmi(self):
        return round(self.weight / (self.height/100)**2, 2)
    
class NoteType(models.Model):
    name = models.CharField(max_length=20, verbose_name="記事類別")
    def __str__(self):
        return self.name

class DailyNote(models.Model):
    note = models.CharField(max_length=20, verbose_name="記事名稱")
    description = models.TextField(null=True, blank=True, verbose_name="說明")
    note_type = models.ForeignKey(NoteType, on_delete=models.CASCADE, verbose_name="記事類別")
    money = models.IntegerField(default=0, verbose_name="金額")
    note_date = models.DateField(verbose_name="日期")
    rec_time = models.DateTimeField(auto_now_add=True, verbose_name="記錄時間")
    def __str__(self):
        return self.note

class ExchangeRate(models.Model):
    currency = models.CharField(max_length=20, verbose_name="貨幣名稱")
    rate = models.FloatField(verbose_name="匯率")
    def __str__(self):
        return self.currency