from datetime import date
import os
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from ftest.forms import ReviewForm, FoodReviewForm, DiaryForm, PhotoForm
from ftest.models import FoodReview, Diary, Photo

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

def review3(request):
    if request.method == "POST":
        data = FoodReviewForm(request.POST, request.FILES)
        if data.is_valid():
            data.save()
        return redirect("/ftest/review3/")
    else:
        form = FoodReviewForm()
    reviews = FoodReview.objects.all().order_by('-id')
    return render(request, "ftest/review3.html", locals())

@login_required(login_url="/admin/login/")
def diary(request):
    user = User.objects.get(username=request.user.username)
    diaries = Diary.objects.filter(user=user).order_by('-date')
    return render(request, "ftest/diary.html", locals())

@login_required(login_url="/admin/login")
def diary_show(request, id):
    diary = Diary.objects.get(id=id)
    photos = Photo.objects.filter(diary=diary)
    return render(request, "ftest/diary-show.html", locals())

@login_required(login_url="/admin/login/")
def diary_add(request):
    if request.method == "POST":
        user = User.objects.get(username=request.user.username)
        new_item = Diary(user=user, date=date.today(), content="")
        form = DiaryForm(request.POST, instance=new_item)
        if form.is_valid():
            form.save()
        return redirect("/ftest/diary/")
    else:
        form = DiaryForm()
    return render(request, "ftest/diary-add.html", locals())

@login_required(login_url="/admin/login/")
def diary_del(request, id):
    target = Diary.objects.get(id=id)
    photos = Photo.objects.filter(diary=target)
    for photo in photos:
        os.remove(photo.photo.path)
        photo.delete()
    target.delete()
    return redirect("/ftest/diary/")

@login_required(login_url="/admin/login/")
def diary_edit(request, id):
    if request.method == "POST":
        curr_item = Diary.objects.get(id=id)
        form = DiaryForm(request.POST, instance=curr_item)
        if form.is_valid():
            form.save()
            return redirect("/ftest/diary/show/{}/".format(id))
    else:
        item = Diary.objects.get(id=id)
        form = DiaryForm(instance=item)
    return render(request, "ftest/diary-edit.html", locals())
        
@login_required(login_url="/admin/login/")        
def photo_list(request, id):
    diary = Diary.objects.get(id=id)
    plist = Photo.objects.filter(diary=diary).order_by('-id')
    return render(request, "ftest/photo-list.html", locals())

@login_required(login_url="/admin/login/")
def photo_add(request, id):
    diary = Diary.objects.get(id=id)
    if request.method == "POST":
        new_photo = Photo(diary=diary, memo="")
        form = PhotoForm(request.POST, request.FILES, instance=new_photo)
        if form.is_valid():
            form.save()
        return redirect("/ftest/photo/list/{}/".format(diary.id))
    else:
        form = PhotoForm()
    return render(request, "ftest/photo-add.html", locals())

@login_required(login_url="/admin/login/")
def photo_del(request, id):
    target = Photo.objects.get(id=id)
    os.remove(target.photo.path)
    diary = target.diary
    target.delete()
    return redirect("/ftest/photo/list/{}/".format(diary.id))