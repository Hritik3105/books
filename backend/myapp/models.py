from .manager import CustomUserManager
from django.db import models
from django.contrib.auth.models import AbstractBaseUser
from django.contrib.auth.models import PermissionsMixin
from django.utils.translation import gettext_lazy as _
from ckeditor_uploader.fields import RichTextUploadingField


class User(AbstractBaseUser,PermissionsMixin):
    username 	= models.CharField(max_length=255,default="")
    email 		= models.EmailField(_('email'),unique=True)
    password    = models.CharField(max_length=255,default="")
    is_staff 	= models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.')
    is_active 	= models.BooleanField(default=True,
		help_text='Designates whether this user should be treated as active.\
		Unselect this instead of deleting accounts.')
    created_at = models.DateTimeField(auto_now_add=True,null=True)
    updated_at =  models.DateTimeField(auto_now=True)


    USERNAME_FIELD 	='email'
    objects 		= CustomUserManager()
    
    def __str__(self):
        return self.email


# Create your models here.
class Books(models.Model):
    title=models.CharField(max_length=200,null=True)
    summary=models.TextField(null=True)
    image=models.FileField(null=True)
    description=models.TextField(null=True)
    status=models.BooleanField(null=True)
    created_at=models.DateTimeField(auto_now_add=True,null=True)
    updated_at=models.DateTimeField(auto_now_add=True,null=True)
    content=RichTextUploadingField(blank=True,null=True)
    
    
class About(models.Model):
    status=models.BooleanField(null=True)
    content=RichTextUploadingField(blank=True,null=True)
    created_at=models.DateTimeField(auto_now_add=True,null=True)
    updated_at=models.DateTimeField(auto_now_add=True,null=True)
  