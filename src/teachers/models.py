from django.db import models

# Create your models here.
class Teacher(models.Model):
	name	= models.TextField()
	gender	= models.TextField()
	mobile	= models.TextField()
	email_id	= models.TextField()
	dept_id	= models.IntegerField()
	course_id	= models.IntegerField()
	password	= models.TextField()
	address	= models.TextField()                            
