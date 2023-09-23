import os, csv
from datetime import datetime
import django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'demoweb.settings')
django.setup()
from django.contrib.auth.models import User

with open("users.csv", "rt", encoding="utf-8") as f:
    for user in csv.DictReader(f):
        try:
            new_user = User.objects.create_user(
                username = user['username'].strip(),
                password = 'MyTest@566!',
                first_name = user['first_name'].strip(),
                last_name = user['last_name'].strip(),
                email = user['email'].strip()
            )
            new_user.is_active = True
            new_user.is_staff = True
            new_user.save()
            print(user['username'], "已加入...")
        except: 
            pass
print("所有使用者匯入完畢!")
    