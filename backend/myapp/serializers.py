from .models import Books
from rest_framework import serializers


class BookSerializer(serializers.ModelSerializer):
   
    class Meta:
        model = Books
        fields = ['id','title', 'summary', 'image', 'description','status']
        
        
class ContentSerializer(serializers.ModelSerializer):
       
    class Meta:
        model = Books
        fields = ['id','content']

