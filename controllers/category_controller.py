from bottle import route, view, request, redirect
from services.category_service import category_service
from models.category import Category

@route('/categories')
@view('categories')
def list_categories():
    categories = category_service.get_all()
    return dict(categories=categories)

@route('/categories/new')
@view('category_form')
def new_category():
    return {}

@route('/categories', method='POST')
def create_category():
    name = request.forms.get('name')
    category = Category(id=name.lower(), name=name)
    category_service.add_category(category)
    return redirect('/categories')