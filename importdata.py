import os
import django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'demoweb.settings')
django.setup()

from mysite import models

with open("tasks.txt", "rt", encoding="utf-8") as f:
    for new_item in f.readlines():
        new_item = new_item.strip()
        if not models.MyTask.objects.filter(item=new_item).exists():
            print(new_item, "已加入...")
            new_rec = models.MyTask(item = new_item)
            new_rec.save()
print("匯入完畢!")
    