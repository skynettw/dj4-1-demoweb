import os, json
from datetime import datetime
import django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'demoweb.settings')
django.setup()
from django.core.serializers.json import DjangoJSONEncoder
from mysite import models
filename = input("請輸入你要備份的檔名(*.json)：")
notes = list(models.DailyNote.objects.values())
with open(filename, "wt", encoding="utf-8") as f:
    data = json.dumps(notes, cls=DjangoJSONEncoder)
    f.write(data)
print(filename, "匯出完畢!")
    