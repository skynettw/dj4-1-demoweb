from django.shortcuts import render
def bmi(request):
    if request.method=="POST":
        try:
            h = float(request.POST.get("height"))
            w = float(request.POST.get("weight"))
            bmi = round(w / ((h/100)**2), 2)
        except:
            pass
    return render(request, "ftest/bmi.html", locals())
