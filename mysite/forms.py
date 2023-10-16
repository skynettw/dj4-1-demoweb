from django.forms import ModelForm
from mysite.models import DailyNote

class DailyNoteForm(ModelForm):
    class Meta:
        model = DailyNote
        fields = '__all__'