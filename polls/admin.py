from django.contrib import admin
from polls.models import SchoolBabe

@admin.register(SchoolBabe)
class SchoolBabeAdmin(admin.ModelAdmin):
    list_display = ['name', 'photo', 'vote']
