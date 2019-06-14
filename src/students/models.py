from django.db import models
from django.contrib.auth.models import User #(admin,admin12345)

# Create your models here.
class Student(models.Model):
	name	= models.TextField()
	gender	= models.TextField()
	mobile	= models.TextField()
	email_id	= models.TextField()
	dept_id	= models.IntegerField()
	course_id	= models.IntegerField()
	password	= models.TextField()
	address	= models.TextField() 
	user = models.OneToOneField(User, on_delete=models.CASCADE,null=True)                
