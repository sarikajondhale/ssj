from django.db import models

# Create your models here.
class Attendence(models.Model):
	student_id	= models.TextField()
	ex_date	= models.DateField()
	status	= models.BooleanField()    

