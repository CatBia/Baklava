from django.shortcuts import render
from django.views.generic import TemplateView
from django.shortcuts import render_to_response
# Create your views here.
class IndexViewa(TemplateView):
    template_name = 'index.html'
