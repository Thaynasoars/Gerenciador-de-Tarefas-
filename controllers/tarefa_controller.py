from bottle import route, view, request, redirect
from services.tarefa_service import tarefa_service
from services.categoria_service import categoria_service
from models.tarefa import Tarefa, TarefaComPrazo

@route('/tarefas')
@view('tarefas')
def listar_tarefas():
    tarefas = tarefa_service.get_all()
    categorias = categoria_service.get_all()

    # Dicionário de lookup para exibir a categoria de cada tarefa
    categoria_por_id = {str(cat.id): cat for cat in categorias}

    # Adiciona a categoria na tarefa
    for tarefa in tarefas:
        tarefa.categoria = categoria_por_id.get(str(tarefa.category_id), None)

    return dict(tarefas=tarefas)

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
    prazo = request.forms.get('prazo')  # <- Novo campo opcional
    usuario_id = "1"  # Simulação de usuário logado

    tarefas = tarefa_service.get_all()
    novo_id = len(tarefas) + 1

    if prazo:
        nova_tarefa = TarefaComPrazo(
            id=novo_id,
            title=titulo,
            description=descricao,
            category_id=categoria_id,
            user_id=usuario_id,
            prazo=prazo
        )
    else:
        nova_tarefa = Tarefa(
            id=novo_id,
            title=titulo,
            description=descricao,
            category_id=categoria_id,
            user_id=usuario_id
        )

    tarefa_service.add_tarefa(nova_tarefa)
    return redirect('/tarefas')

@route('/tarefas/<id:int>/excluir', method='POST')
def excluir_tarefa(id):
    tarefa_service.remover_tarefa(id)
    return redirect('/tarefas')