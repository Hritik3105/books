from distutils.command.upload import upload
from django.forms import ModelForm
from .models import Books
from django import forms

from ckeditor_uploader.fields import RichTextUploadingField


class BookForm(ModelForm):
    
    title = forms.CharField(required=False,widget=forms.TextInput(
        attrs={
        'class':'form-control',
        
        }
    ))
    summary = forms.CharField(label="Summary",required=False,widget=forms.TextInput(
        attrs={
        'class':'form-control',    
        
        }

    ))

    image=forms.FileField(required=False)
    
    
    description=forms.CharField(required=False,label="Description", widget=forms.TextInput(
        attrs={
        'class':'form-control',
        }

    
    ))
    
    content=RichTextUploadingField()
    
    class Meta:
        model=Books
        fields=["title","summary","image","description","content"]
        
        

        
    