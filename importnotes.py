import os, csv
from datetime import datetime
import django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'demoweb.settings')
django.setup()
from mysite import models

with open("notes.csv", "rt", encoding="utf-8") as f:
    for note in csv.DictReader(f):
        if not models.NoteType.objects.filter(name=note['note_type'].strip()).exists():
            models.NoteType.objects.create(name=note['note_type'].strip())
        ntype = models.NoteType.objects.get(name=note['note_type'].strip())
        if not models.DailyNote.objects.filter(
            note = note['note'].strip(),
            note_date = datetime.strptime(note['note_date'].strip(), "%Y/%m/%d")
        ).exists():
            models.DailyNote.objects.create(
                note = note['note'].strip(),
                note_type = ntype,
                note_date = datetime.strptime(note['note_date'].strip(), "%Y/%m/%d"),
                money = note['money'].strip()
            )
            print(note['note'], "已加入...")
print("匯入完畢!")
    