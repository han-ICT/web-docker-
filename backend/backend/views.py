from django.views.generic import TemplateView
from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse
# Create your views here.
from django.views.generic import ListView, DetailView
from location.models import Location

def home(request):

    context = {

    }
    return render(request, 'home.html', context=context)
    #return HttpResponse("hello world")

"""

< sample code > 

# Generate counts of some of the main objects
num_books = Book.objects.all().count()
num_instances = BookInstance.objects.all().count()

# Available books (status = 'a')
num_instances_available = BookInstance.objects.filter(status__exact='a').count()

# The 'all()' is implied by default.
num_authors = Author.objects.count()

context = {
    'num_books': num_books,
    'num_instances': num_instances,
    'num_instances_available': num_instances_available,
    'num_authors': num_authors,
}
"""