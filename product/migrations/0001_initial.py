# Generated by Django 5.0.3 on 2024-04-06 07:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Goods',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('price', models.IntegerField()),
                ('photo_url', models.CharField(max_length=200)),
                ('goods_url', models.CharField(max_length=200)),
                ('discount', models.FloatField()),
                ('created_date', models.DateField(auto_now_add=True)),
            ],
            options={
                'db_table': 'product',
            },
        ),
    ]
