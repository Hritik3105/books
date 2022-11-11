from myapp import views 
from .views import Book, Content,AboutAPI
from django.urls import path
from django.contrib.auth.decorators import login_required




urlpatterns = [
    path("home",login_required(views.AddBook,login_url="login"),name="home"),
    path("",views.user_login,name="login"),
    path("about",login_required(views.AddContent,login_url="login"),name="about"),
    path("book",login_required(Book.as_view(),login_url="login"),name="books"),
    path("content/<int:id>",login_required(Content.as_view(),login_url="login"),name="content"),
    path("edit/<int:id>",login_required(views.EditBook,login_url="login"),name="edit"),
    path("list",login_required(views.List,login_url="login"),name="list"),
    path("delete/<int:id>",login_required(views.BookDelete,login_url="login"),name="delete"),
    path("about-page",login_required(AboutAPI.as_view(),login_url="login"),name="abouts"),
    path("logout/",login_required(views.userLogout,login_url="login"),name="logout"),
  
   
]