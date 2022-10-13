from myapp import views 
from .views import Book, Content
from django.urls import path

urlpatterns = [
    path("",views.AddBook,name="book"),
    path("about",views.AddContent,name="about"),
    path("book",Book.as_view(),name="books"),
    path("content/<int:id>",Content.as_view(),name="content"),
    path("edit/<int:id>",views.EditBook,name="edit"),
    path("list",views.List,name="list"),
    path("delete/<int:id>",views.BookDelete,name="delete"),
   
]