# Generated by Django 2.2 on 2020-10-12 18:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core_app', '0005_auto_20201012_1323'),
    ]

    operations = [
        migrations.AlterField(
            model_name='attachment',
            name='attachment_type',
            field=models.CharField(max_length=256),
        ),
        migrations.AlterField(
            model_name='attachment',
            name='url',
            field=models.CharField(max_length=256),
        ),
        migrations.AlterField(
            model_name='image',
            name='height',
            field=models.CharField(max_length=256),
        ),
        migrations.AlterField(
            model_name='image',
            name='src',
            field=models.CharField(max_length=256),
        ),
        migrations.AlterField(
            model_name='image',
            name='width',
            field=models.CharField(max_length=256),
        ),
        migrations.AlterField(
            model_name='post',
            name='id',
            field=models.CharField(max_length=256, primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='target',
            name='url',
            field=models.CharField(max_length=256),
        ),
    ]