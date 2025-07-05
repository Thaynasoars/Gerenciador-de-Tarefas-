from bottle import route, view, request, redirect
from services.categoria_service import categoria_service
from models.categoria import Categoria

@route('/categorias')
@view('categorias')
def listar_categorias():
    categorias = categoria_service.get_all()
    return dict(categorias=categorias)

@route('/categorias/nova')
@view('categoria_form')
def nova_categoria():
    return {}

@route('/categorias', method='POST')
def criar_categoria():
    nome = request.forms.get('nome')

    categorias = categoria_service.get_all()
    if categorias:
        ultimo_id = max(int(c.id) for c in categorias)
        novo_id = ultimo_id + 1
    else:
        novo_id = 1

    categoria = Categoria(id=novo_id, nome=nome)
    categoria_service.adicionar_categoria(categoria)
    return redirect('/categorias')