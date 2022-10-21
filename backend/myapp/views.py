from django.contrib import auth
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render,redirect
from .form import BookForm,AboutForm,LoginForm
from .serializers import BookSerializer, ContentSerializer,AboutSerializer
from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView
from bs4 import BeautifulSoup
from urllib.parse import urlsplit
from django.contrib import messages
from django.shortcuts import get_object_or_404
from django.shortcuts import render,redirect
from myapp.models import *
from django.contrib.auth import authenticate, login


# Create your views here.


#USER LOGIN
def user_login(request):
    
  if request.method == "POST":
    form = LoginForm(request.POST)
    if form.is_valid():
      uname = form.cleaned_data.get('email')
      password = form.cleaned_data.get('password')
      user = authenticate(username=uname, password=password)
      if user is not None:
        login(request, user)
        return redirect("home")
      else:
        messages.error(request,"Invalid username or password.")
    else:
      return render(request,"login.html",{'form':form})
  form = LoginForm()
  return render(request, "login.html",{"form":form})


#ADD BOOK CONTENT
def AddBook(request):
    if request.method =="POST":
        form1=BookForm(request.POST,request.FILES)
       
        if form1.is_valid():  
            post_item=form1.save()
            post_item.save()
            messages.success(request,"Data submitted successfully")  
            return redirect("home")
        else: 
            return render(request,"admin.html",{"form":form1})
    else: 
        form =BookForm()
           
    return render(request,"admin.html",{"form":form})


#ADD CONTENT
def AddContent(request):
    val_obj=About.objects.all()
    if len(val_obj) ==0:
        if request.method =="POST":
            form1=AboutForm(request.POST,request.FILES)
            if form1.is_valid():
                post_item=form1.save()
                post_item.save()
                messages.success(request,"About submitted successfully")
                return redirect("about")
            else:
                return render(request,"about.html",{"form":form1})
        else: 
            form =AboutForm()
            return render(request,"about.html",{"form":form})
        
    if request.method =="POST":
        item=get_object_or_404(About) 
        val2=AboutForm(request.POST,request.FILES)
        if val2.is_valid():
            post=val2.save(False)
            updt=About.objects.filter(id=item.id).update(content=post.content)
            messages.success(request,"About updated successfully")
            return render(request,"about.html",{"form":val2,"status":1})  
        
    item=get_object_or_404(About) 
    form =AboutForm(instance=item)
    return render(request,"about.html",{"form":form,"status":1})  



#SHOW LIST OF BOOK
class Book(APIView):
    def get(self,request):
        book_obj=Books.objects.all()
        serializer=BookSerializer(book_obj,many="true")
        return Response(serializer.data)


#SHOW LIST OF CONTENT 
class Content(APIView):
    def get_object(self,id):
        try:
            return Books.objects.get(id=id)
        except Books.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND)
        
    
    def get(self,request,id):
        content1=self.get_object(id)
     
        if content1.status == True:
            serializer=ContentSerializer(content1)
            z=request.build_absolute_uri('/').strip("/")     
            input_str = serializer.data["content"]
            
            soup = BeautifulSoup(input_str, "html.parser")
            check=soup.find("img")
            if check != None:
                img_url = soup.find('img')['src']
                new_url = urlsplit(img_url)._replace(query=None).geturl()
                soup.find('img')['src'] = z+img_url
                resp={
                    "id":serializer.data["id"],
                    "content":str(soup)
                    
                }
                return Response(resp)    
            else:
                resp={
                    "id":serializer.data["id"],
                    "content":input_str
                    
                }
                return Response(resp)
        resp={
            "Book is not Published"    
        }
        return Response(resp)
        
#FOR DATATABLE             
def List(request):   
    val=Books.objects.all() 
    user=User.objects.filter(id=request.user.id)
    return render(request,"list.html",{"val":val,"user":user})

    
#EDIT BOOK
def EditBook(request,id):
    if request.method=="POST":
        item=get_object_or_404(Books,id=id)
        form=BookForm(request.POST,request.FILES,instance=item)
        if form.is_valid():
            z=form.save()
       
        messages.success(request,"Books Edit successfully")
        return redirect('list')
    
    item=get_object_or_404(Books,id=id)
    form=BookForm(instance=item)
    return render(request,'edit.html',{'form':form})


#DELETE BOOK
def BookDelete(request,id):
    dele=get_object_or_404(Books,id=id)
    dele.delete()
    messages.error(request,"Delete successfully")
    return redirect('list')


#ABOUT API LIST
class AboutAPI(APIView):
    def get(self,request):
        book_obj=About.objects.all()
        for i in book_obj:
            pass
        serializer=AboutSerializer(i)
        z=request.build_absolute_uri('/').strip("/")     
        input_str = serializer.data["content"]
            
        soup = BeautifulSoup(input_str, "html.parser")
        check=soup.find("img")
    
        if check != None:
            img_url = soup.find('img')['src']
            new_url = urlsplit(img_url)._replace(query=None).geturl()
            soup.find('img')['src'] = z+img_url
            resp={
                "content":str(soup)
                
            }
            return Response(resp)    
        else:
            resp={
                "content":input_str
                
            }
            return Response(resp)


#DELETE
@csrf_exempt
def userLogout(request):
  auth.logout(request)
  return redirect('/')




