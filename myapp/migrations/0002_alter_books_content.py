# Generated by Django 4.1.2 on 2022-10-11 04:31

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='books',
            name='content',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]
