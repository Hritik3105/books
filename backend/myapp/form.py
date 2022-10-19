
from django.forms import ModelForm
from .models import Books,About,User
from django import forms
from django_toggle_switch_widget.widgets import DjangoToggleSwitchWidget
from ckeditor_uploader.fields import RichTextUploadingField
from django.forms import ModelForm

from image_uploader_widget.widgets import ImageUploaderWidget


class BookForm(ModelForm):
    
    title = forms.CharField(required=False,widget=forms.TextInput(
        attrs={
        'class':'form-control',
        
        }
    ))
    summary = forms.CharField(label="Summary",required=False,widget=forms.Textarea(
        attrs={
        'class':'form-control', 
         'rows':3, 
         'cols':15   
        
        }

    ))
    image = forms.ImageField(required=False,widget=ImageUploaderWidget())
   
   
    description=forms.CharField(required=False,label="Description", widget=forms.Textarea(
        attrs={
        'class':'form-control',
        'rows':4, 
         'cols':15
        }

    
    ))
    
    
    
    content=RichTextUploadingField()
    
    class Meta:
        model=Books
        fields=["title","summary","image","description","content","status"]
        widgets = {
            "status": DjangoToggleSwitchWidget(klass="django-toggle-switch-dark-primary"),        
            
        
        }


        
        
class AboutForm(ModelForm):
    
 
    content=RichTextUploadingField()
    
    class Meta:
        model=About
        fields=["content"]
        


class AddCreateForm(ModelForm):
    username = forms.CharField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Username'
        }
    ))
    
    email = forms.CharField(widget=forms.TextInput(
        attrs={
        'class':'form-control',
        'placeholder':'Email'
        }
    ))
    password = forms.CharField(widget=forms.PasswordInput(
        attrs={
        'class':'form-control',
        'placeholder':'Password'
        }
    ))


    class Meta:
        model = User
        fields = ["username","email","password"]
        

        
class LoginForm(forms.Form):
    email = forms.CharField(widget=forms.TextInput(
    attrs={
 
    'placeholder':'Email'
    }
))
    password = forms.CharField(widget=forms.PasswordInput(
        attrs={
       
        'placeholder':'Password'
        }
    ))

    class Meta:
        model = User
        fields = ["email","password"]
        
        