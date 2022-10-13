from turtle import pos
from .models import *
from django.shortcuts import render,redirect
from .form import BookForm,AboutForm
from .serializers import BookSerializer, ContentSerializer
from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView
from bs4 import BeautifulSoup
from urllib.parse import urlsplit
from django.contrib import messages
# Create your views here.


def AddBook(request):
    if request.method =="POST":
        form1=BookForm(request.POST,request.FILES)
        if form1.is_valid():
            print("enter4")
          
            form1.instance.status =1
            post_item=form1.save()
            
            post_item.save()
            print(post_item.content)
            messages.success(request,"Data submitted successfully")
            
            return redirect("/")
        else:
            
            
            return render(request,"admin.html",{"form":form1})
    else: 
        form =BookForm()
           
    return render(request,"admin.html",{"form":form})

def AddContent(request):
    if request.method =="POST":
        form1=AboutForm(request.POST,request.FILES)
        if form1.is_valid():
            print("enter4")
          
            form1.instance.status =1
            post_item=form1.save()
            
            post_item.save()
            print(post_item.content)
            messages.success(request,"Data submitted successfully")
            
            return redirect("about")
        else:
            
            
            return render(request,"about.html",{"form":form1})
    else: 
        form =AboutForm()
           
    return render(request,"about.html",{"form":form})


class Book(APIView):
    def get(self,request):
        book_obj=Books.objects.all()
        serializer=BookSerializer(book_obj,many="true")
        return Response(serializer.data)
 
class Content(APIView):
    def get_object(self,id):
        try:
            return Books.objects.get(id=id)
        except Books.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND)
    
    def get(self,request,id):
        content1=self.get_object(id)
        serializer=ContentSerializer(content1)    
        print(serializer.data["content"]) 
        z=request.build_absolute_uri('/').strip("/")     
        input_str = serializer.data["content"]
        soup = BeautifulSoup(input_str, "html.parser")
        img_url = soup.find('img')['src']
        print(img_url)
        new_url = urlsplit(img_url)._replace(query=None).geturl()
        print(new_url)
        soup.find('img')['src'] = z+img_url
        print(str(soup))
        print(type(soup))
        resp={
            "id":serializer.data["id"],
            "content":str(soup)
            
        }
       
        return Response(resp)
 
    
    



