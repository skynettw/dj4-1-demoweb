from django.http import JsonResponse
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from polls import models

def index(request):
    data = models.SchoolBabe.objects.all()
    return render(request, "polls/index.html", locals())

@login_required(login_url='/admin/login/')
def vote(request, id):
    target = models.SchoolBabe.objects.get(id=id)
    target.vote = target.vote + 1 
    target.save()
    return redirect("/polls/")

@login_required(login_url='/admin/login/')
def votejs(request, id):
    target = models.SchoolBabe.objects.get(id=id)
    target.vote = target.vote + 1 
    target.save()
    return JsonResponse({"vote":target.vote})

