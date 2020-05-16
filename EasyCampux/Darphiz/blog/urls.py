from django.urls import path
from . import views

app_name = 'blog'



urlpatterns = [
    path('',views.post_list, name='post_list'),
    path('<int:year>/<int:month>/<int:day>/<slug:post>/',
            views.post_detail,
            name='post_detail'),
    path('gospost', views.gospost, name='gospost'),
    path('fapost', views.fapost, name='fapost'),
    path('fnpost', views.fnpost, name='fnpost'),
    path('entpost', views.entpost, name='entpost'),
    path('hthpost', views.hthpost, name='hthpost'),
    path('tipost', views.tipost, name='tipost'),
    path('spopost', views.spopost, name='spopost'),
    path('contact/',views.contact,name ='contact'),
    path('premium/',views.premium,name ='premium'),
    path('<pay>/pay/',views.premium_payment, name = 'pay'),
]