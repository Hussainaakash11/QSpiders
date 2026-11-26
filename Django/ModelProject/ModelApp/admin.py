from django.contrib import admin
from ModelApp.models import CustomerModel
# Register your models here.
class Cust(admin.ModelAdmin):
    list_display = ['id','name','address']

admin.site.register(CustomerModel,Cust)