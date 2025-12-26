from django.urls import path, re_path
from basic import views

urlpatterns = [
    path('', views.index),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name='logout'),
    path('admin_home/', views.admin_home, name='admin_home'),
    path('add_doctors/', views.add_doctor, name='add_doctor'),
    path('upload_file/', views.upload_file, name='upload_file'),
    path('records/', views.records, name='records'),
    path('viewprofile/', views.viewprofile, name='viewprofile'),

    path('patientrecord/', views.patientrecord, name='patientrecord'),
    path('viewdoctorrecord/', views.viewdoctorrecord, name='viewdoctorrecord'),
    path('doctorprofile/', views.doctorprofile, name='doctorprofile'),
    path('viewslot/', views.viewslot, name='viewslot'),

    path('slots/', views.slots, name='slots'),
    path('slots/addslot', views.addslot, name='addslot'),
    path('appoints/<int:id>', views.appoints, name='appoints'),
    path('appoints/addapoint', views.addapoint, name='addapoint'),
    path('emaill/', views.emaill, name='emaill'),

    path('add_patient/', views.add_patient, name='add_patient'),
    path('home/', views.home, name='home'),
    re_path(r'^patients_downloads/(?P<id>\d+)/$', views.patients_downloads, name='patients_downloads'),
    re_path(r'^download/(?P<id>\d+)/$', views.download, name='download'),
    re_path(r'^patient_records/(?P<id>\d+)/$', views.patient_records, name='patient_records'),
]