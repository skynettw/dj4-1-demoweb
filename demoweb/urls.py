
from django.contrib import admin
from django.urls import path, include
from mysite import views
from demoweb import settings
from django.conf.urls.static import static

mytask_patterns = [
    path('', views.mytask),
    path('archive/', views.mytask_archive),
    path('archive/<int:id>/', views.mytask_archive),
    path('unarchive/<int:id>/', views.mytask_unarchive),
    path('status/<int:id>/', views.mytask_status),
    path('delete/<int:id>/', views.mytask_delete),   
]

urlpatterns = [
    path('', views.index),
    path('gallery/', views.gallery),
    path('rate/', views.rate),
    path('rate/<str:currency>/<int:amount>/', views.rate),
    path('note/list/', views.note_list, name='notelist'),
    path('note/list/<int:nt>/', views.note_list, name='notelist'),
    path('bmi2/', views.bmi2, name="bmi2"),
    path('bmi2/<int:g>/', views.bmi2, name="bmi2"),
    path('bmi/', views.bmi),
    path('jqtest/', views.jqtest),
    path('tasklist/', views.tasklist),
    path('chart/', views.chart),
    path('saveimage/', views.saveimage),
    path('task/', views.task),
    path('lotto/', views.lotto),
    path('admin/', admin.site.urls),
    path('mytask/', include(mytask_patterns)),
    path('polls/', include('polls.urls')),
    path('filer/', include('filer.urls')),
    path('ftest/', include('ftest.urls')),
    path('pnote/list/', views.pnote_list),
    path('pnote/list/<int:p>/', views.pnote_list),
    path('pnote/add/', views.pnote_add),
] 
urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
admin.site.site_title = "管理後台"
admin.site.site_header = "歡迎使用管理後台"
admin.site.index_title = "何老師的網站管理後台"
