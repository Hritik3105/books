from distutils.command.upload import upload
from enum import auto
from django.db import models

from ckeditor_uploader.fields import RichTextUploadingField


# Create your models here.
class   Books(models.Model):
    title=models.CharField(max_length=200,null=True)
    summary=models.CharField(max_length=200,null=True)
    image=models.FileField(null=True)
    description=models.CharField(max_length=200,null=True)
    status=models.BooleanField(null=True)
    created_at=models.DateTimeField(auto_now_add=True,null=True)
    updated_at=models.DateTimeField(auto_now_add=True,null=True)
    content=RichTextUploadingField(blank=True,null=True)