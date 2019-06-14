from django.db import models

# Create your models here.
class Exam(models.Model):
	name	= models.TextField()
	subject_id	= models.IntegerField()
	total_marks	= models.IntegerField()
	ex_date	= models.DateField()
                       
