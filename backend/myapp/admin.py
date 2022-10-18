from django.contrib import admin

# Register your models here.

from .models import Books

@admin.register(Books)
class QuillPostAdmin(admin.ModelAdmin):
    pass
