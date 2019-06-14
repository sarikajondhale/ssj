from django.db import models

# Create your models here.
class Subject(models.Model):
	name	= models.TextField()
	dept_id	= models.IntegerField()
	course_id	= models.IntegerField()
	teacher_id	= models.IntegerField()        
