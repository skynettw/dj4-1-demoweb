from django.db import models
class SchoolBabe(models.Model):
    name = models.CharField(max_length=10, verbose_name="姓名")
    photo = models.ImageField(null=True, blank=True, verbose_name="相片")
    vote = models.PositiveIntegerField(default=0, verbose_name="選票")
    def __str__(self):
        return self.name
    def photo_with_path(self):
        return 'polls/images/'+str(self.photo)
