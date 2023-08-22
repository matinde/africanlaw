from django.contrib import admin
from django.urls import path, include
from africanlaw_app.views import *

urlpatterns = [
    path('', index, name="home"),
    
]
