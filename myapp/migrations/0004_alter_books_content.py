# Generated by Django 4.1.2 on 2022-10-11 12:06

import ckeditor_uploader.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0003_alter_books_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='books',
            name='content',
            field=ckeditor_uploader.fields.RichTextUploadingField(blank=True, null=True),
        ),
    ]
