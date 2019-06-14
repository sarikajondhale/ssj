from django.db import models

# Create your models here.
class Result(models.Model):
	student_id	= models.TextField()
	exam_id	= models.IntegerField()
	total_marks	= models.IntegerField()
	obtained_marks	= models.IntegerField()
	status	= models.BooleanField()    

