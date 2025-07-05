from bottle import route, view, request, redirect
from services.tarefa_service import tarefa_service
from services.categoria_service import categoria_service
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
    usuario_id = "1"  # Simulação do usuário logado

    # Cria um ID simples (baseado na quantidade atual de tarefas)
    tarefas = tarefa_service.get_all()
    novo_id = len(tarefas) + 1

    nova_tarefa = Tarefa(
        id=novo_id,
        title=titulo,
        description=descricao,
        category_id=categoria_id,
        user_id=usuario_id
    )

    tarefa_service.add_tarefa(nova_tarefa)

    return redirect('/tarefas')
