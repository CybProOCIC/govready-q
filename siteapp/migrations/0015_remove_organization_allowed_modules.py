# -*- coding: utf-8 -*-
# Generated by Django 1.10.7 on 2017-04-30 22:54
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('siteapp', '0014_auto_20170329_1827'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='organization',
            name='allowed_modules',
        ),
    ]