from django.http import HttpResponse, FileResponse, JsonResponse
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator
from django.contrib import messages
from mysite.forms import DailyNoteForm
from demoweb.settings import BASE_DIR
from yattag import Doc
import random
from mysite import models
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

def gallery(request):
    data = models.Gallery.objects.all()
    return render(request, "gallery.html", locals())

# def rate(request):
#     data = models.ExchangeRate.objects.all()
#     currency = request.GET.get("currency")
#     amount = request.GET.get("amount")
#     if (currency is not None) and (amount is not None):
#         try:
#             target = models.ExchangeRate.objects.get(currency=currency)
#             money = round(float(target.rate) * float(amount))
#         except:
#             pass
#     return render(request, "rate.html", locals())

def rate(request, currency=0, amount=0):
    data = models.ExchangeRate.objects.all()
    try:
        target = models.ExchangeRate.objects.get(currency=currency)
        money = round(float(target.rate) * float(amount))
    except:
        pass
    return render(request, "rate.html", locals())

def note_list(request, nt=0):
    ntypes = models.NoteType.objects.all()
    if nt > 0:
        ntype = models.NoteType.objects.get(id=nt)
        notes = models.DailyNote.objects.filter(note_type=ntype)
    else:
        notes = models.DailyNote.objects.all()
    return render(request, "note-list.html", locals())

def bmi2(request, g=2):
    if g==2:
        bodyinfo = models.BodyInfo.objects.all()
    else:
        bodyinfo = models.BodyInfo.objects.filter(gender=bool(g))
    data = pd.DataFrame(bodyinfo.values())
    data['BMI'] = round(data.weight / (data.height/100)**2, 2)
    return render(request, "bmi2.html", locals())    

def bmi(request):
    bodyinfo = models.BodyInfo.objects.all()
    data = pd.DataFrame(bodyinfo.values())
    data['BMI'] = round(data.weight / (data.height/100)**2, 2)
    print(data)
    return render(request, "bmi.html", locals())

def mytask(request):
    if request.method == "POST":
        item_name = request.POST.get("itemname").strip()
        models.MyTask.objects.create(item=item_name)
        return redirect("/mytask/")
    tasks = models.MyTask.objects.filter(deleted=False)
    return render(request, "mytask.html", locals())

@login_required(login_url="/admin/login/")
def mytask_archive(request, id=0):
    if id != 0:
        target = models.MyTask.objects.get(id=id)
        target.deleted = True
        target.save()
        return redirect('/mytask/')
    else:
        tasks = models.MyTask.objects.filter(deleted=True)
        return render(request, "mytask-archive.html", locals())

@login_required(login_url="/admin/login/")
def mytask_unarchive(request, id):
    target = models.MyTask.objects.get(id=id)
    target.deleted = False
    target.save()
    return redirect('/mytask/archive/')

@login_required(login_url="/admin/login/")
def mytask_delete(request, id):
    target = models.MyTask.objects.get(id=id)
    target.delete()
    return redirect("/mytask/archive")

@login_required(login_url="/admin/login/")    
def mytask_status(request, id):
    target = models.MyTask.objects.get(id=id)
    target.done = not target.done
    target.save()
    return redirect("/mytask/")

def jqtest(request):
    return render(request, "jqtest.html", locals())

def tasklist(request):
    tasks = models.MyTask.objects.all()
    return render(request, "tasklist.html", locals())

def chart(request):
    th = np.linspace(0, 2*np.pi, 360)
    plt.plot(th, np.sin(th))
    plt.xlabel('theta')
    plt.ylabel('sin(theta)')
    plt.title('sin chart')
    plt.grid(True)
    plt.savefig(BASE_DIR / 'images/mychart.png')
    return FileResponse(open(BASE_DIR / 'images/mychart.png', 'rb'))

def saveimage(request):
    filename = BASE_DIR / 'images/drink.png'
    image = open(filename, 'rb')
    return FileResponse(image)

def task(request):
    tasks = models.MyTask.objects.all()
    doc, tag, text = Doc().tagtext()
    with tag('html'):
        with tag('body'):
            with tag('ol'):
                for task in tasks:
                    with tag('li'):
                        text(task.item)
    return HttpResponse(doc.getvalue())

def index(request):
    images = models.ProductImage.objects.all()
    return render(request, "index.html", locals())

def lotto(request):
    data = {
        'status': 'ok',
        'lotto':random.sample(range(1,46),6)
    }
    return JsonResponse(data, safe=False)

def ftest(request):
    return render(request, "ftest.html", locals())

def pnote_list(request, p=1):
    request.session.set_expiry(0)
    notes = models.DailyNote.objects.all().order_by("-note_date")
    ntypes = models.NoteType.objects.all()
    paginator = Paginator(notes, 5)
    page = paginator.page(p)
    items = page.object_list
    return render(request, "pnote-list.html", locals())

def pnote_add(request):
    ntypes = models.NoteType.objects.all()
    if request.method == "POST":
        form = DailyNoteForm(request.POST)
        if form.is_valid():
            form.save()
            if not request.session.has_key('counter'):
                request.session['counter'] = 1
            else:
                request.session['counter'] = request.session['counter'] + 1
            messages.add_message(request, messages.SUCCESS, "新增成功")
        else:
            messages.add_message(request, messages.WARNING, "無法新增")
        return redirect("/pnote/list/")
    else:
        form = DailyNoteForm()
    return render(request, "pnote-add.html", locals())