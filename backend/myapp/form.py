from distutils.command.upload import upload
from django.forms import ModelForm
from .models import Books,About
from django import forms

from ckeditor_uploader.fields import RichTextUploadingField


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

    image=forms.FileField(required=False)
    
    
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
        fields=["title","summary","image","description","content"]
        
        
class AboutForm(ModelForm):
    
 
    content=RichTextUploadingField()
    
    class Meta:
        model=About
        fields=["content"]
        
        

        
    