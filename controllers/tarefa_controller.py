from bottle import route, view, request, redirect
from services import tarefa_service, categoria_service
from models.tarefa import Tarefa

@route('/tarefas')
@view('tarefas')
def listar_tarefas():
    tarefas = tarefa_service.get_all()
    categorias = categoria_service.get_all()
    return dict(tarefas=tarefas, categorias=categorias)

@route('/tarefas/nova')
@view('tarefa_form')
def nova_tarefa():
    categorias = categoria_service.get_all()
    return dict(categorias=categorias)

@route('/tarefas', method='POST')
def criar_tarefa():
    titulo = request.forms.get('titulo')
    descricao = request.forms.get('descricao')
    categoria_id = request.forms.get('categoria_id')
    usuario_id = "1"  # Simplificado: substitua pelo usuário logado
    # Chame o service para criar a tarefa aqui
    # Redirecione para /tarefas após criar
    redirect('/tarefas')