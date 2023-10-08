from django import forms

FOOD_TYPE = [("早餐","早餐"), ("午餐","午餐"),
             ("晚餐","晚餐"), ("宵夜","宵夜"), ("點心","點心")]
SCORES = [(1, "1"), (2, "2"), (3, "3"), (4, "4"), (5, "5")]
class ReviewForm(forms.Form):
    food = forms.CharField(max_length=20, required=True, label="餐點")
    food_type = forms.ChoiceField(choices=FOOD_TYPE, label="用餐類別",
                                  widget=forms.CheckboxSelectMultiple)
    score = forms.ChoiceField(choices=SCORES, widget=forms.RadioSelect, label="評分")
    comment = forms.CharField(widget=forms.Textarea(attrs={'rows':5, 'cols':40}), label="評論")
    