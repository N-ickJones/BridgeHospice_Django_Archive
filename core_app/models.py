from django.db import models


class Post(models.Model):
    id = models.CharField(max_length=50, primary_key=True)
    message = models.TextField()
    created_time = models.DateTimeField()


class Attachment(models.Model):
    description = models.TextField()
    attachment_type = models.CharField(max_length=50)
    url = models.TextField()
    post = models.ForeignKey(Post, on_delete=models.CASCADE)


class Image(models.Model):
    height = models.CharField(max_length=30)
    width = models.CharField(max_length=30)
    src = models.TextField()
    attachment = models.ForeignKey(Attachment, on_delete=models.CASCADE)


class Target(models.Model):
    url = models.TextField()
    attachment = models.ForeignKey(Attachment, on_delete=models.CASCADE)
