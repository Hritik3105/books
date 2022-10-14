from .models import Books,About
from rest_framework import serializers


class BookSerializer(serializers.ModelSerializer):
   
    class Meta:
        model = Books
        fields = ['id','title', 'summary', 'image', 'description','status']
        
        
class ContentSerializer(serializers.ModelSerializer):
       
    class Meta:
        model = Books
        fields = ['id','content','status']

class AboutSerializer(serializers.ModelSerializer):
    
    class Meta:
        model=About
        fields = ['content']

