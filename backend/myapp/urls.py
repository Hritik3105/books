from myapp import views 
from .views import Book, Content
from django.urls import path

urlpatterns = [
    path("",views.AddBook,name="book"),
    path("book",Book.as_view(),name="books"),
        path("content/<int:id>",Content.as_view(),name="content"),

]