
from django.urls import path
from test_app import views

urlpatterns = [
    path('', views.test_app, name='test_app'),
]