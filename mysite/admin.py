from django.contrib import admin
from mysite.models import MyTask, BodyInfo, NoteType, DailyNote
from mysite.models import ExchangeRate, Gallery, ProductImage

@admin.register(MyTask)
class MyTaskAdmin(admin.ModelAdmin):
    list_display = ['item', 'done', 'deleted']
    
@admin.register(NoteType)
class NoteTypeAdmin(admin.ModelAdmin):
    list_display = ['name']
    
@admin.register(BodyInfo)
class BodyInfoAdmin(admin.ModelAdmin):
    list_display = ['name', 'gender', 
                    'height', 'weight', 'bmi']
    
@admin.register(DailyNote)
class DailyNoteAdmin(admin.ModelAdmin):
    list_display = ['note', 'note_type', 'description',
                    'money', 'note_date']
    ordering = ['-note_date']
    search_fields = ['note']
    date_hierarchy = "note_date"
    empty_value_display = "-沒有說明-"
    
@admin.register(ExchangeRate)
class ExchangeRateAdmin(admin.ModelAdmin):
    list_display = ['currency', 'rate']
    
@admin.register(Gallery)
class GalleryAdmin(admin.ModelAdmin):
    list_display = ['name', 'photo']
    
@admin.register(ProductImage)
class ProductImageAdmin(admin.ModelAdmin):
    list_display = ['name', 'image']