# Generated by Django 5.0.3 on 2024-04-23 14:09

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Photo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='images/')),
                ('upload_date', models.DateField(default=datetime.datetime(2024, 4, 23, 14, 9, 52, 173177, tzinfo=datetime.timezone.utc))),
            ],
        ),
    ]
