from django.shortcuts import render
from ftest.forms import ReviewForm
def bmi(request):
    if request.method=="POST":
        try:
            h = float(request.POST.get("height"))
            w = float(request.POST.get("weight"))
            bmi = round(w / ((h/100)**2), 2)
        except:
            pass
    return render(request, "ftest/bmi.html", locals())

def review(request):
    if request.method == "POST":
        food = request.POST.get("food")
        food_type = request.POST.getlist("food-type")
        score = request.POST.get("score")
        comment = request.POST.get("comment")
    else:
        food_types = ["早餐", "午餐", "晚餐", "宵夜", "點心"]
        scores = range(1, 6)
    return render(request, "ftest/review.html", locals())
    
def review2(request):
    if request.method == "POST":
        f = ReviewForm(request.POST)
        if f.is_valid:
            food = f.data["food"]
            food_type = request.POST.getlist("food_type")
            score = f.data["score"]
            comment = f.data["comment"]
    else:
        form = ReviewForm()
    return render(request, "ftest/review2.html", locals())