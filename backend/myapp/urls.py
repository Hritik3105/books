from myapp import views 
from .views import Book, Content,AboutAPI
from django.urls import path



urlpatterns = [
    path("home",views.AddBook,name="home"),
    path("",views.user_login,name="login"),
    path("about",views.AddContent,name="about"),
    path("book",Book.as_view(),name="books"),
    path("content/<int:id>",Content.as_view(),name="content"),
    path("edit/<int:id>",views.EditBook,name="edit"),
    path("list",views.List,name="list"),
    path("delete/<int:id>",views.BookDelete,name="delete"),
    path("about-page",AboutAPI.as_view(),name="abouts"),
    path("logout/",views.userLogout,name="logout"),
  
   
]