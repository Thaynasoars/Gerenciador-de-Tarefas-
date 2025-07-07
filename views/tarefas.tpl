% rebase('layout.tpl')

<div class="tarefas-container">
  <h2 class="titulo">Lista de Tarefas</h2>

  <ul class="lista-tarefas">
  % if tarefas:
    % for tarefa in tarefas:
      % cor = "atrasada" if "VENCIDA" in tarefa.status_detalhado() else "normal"
      <li class="{{cor}}">
        <strong>{{tarefa.title}}</strong> – {{tarefa.description}}<br>

        <small><strong>Tipo:</strong> {{tarefa.tipo()}}</small><br>
        <small><strong>Status:</strong> {{tarefa.status_detalhado()}}</small><br>

        % if tarefa.categoria:
          <small><strong>Categoria:</strong> {{tarefa.categoria.nome}}</small><br>
        % else:
          <small><strong>Categoria:</strong> Nenhuma</small><br>
        % end

        <form action="/tarefas/{{tarefa.id}}/excluir" method="post" style="display:inline;">
          <button type="submit" onclick="return confirm('Tem certeza que deseja excluir esta tarefa?')">Excluir</button>
        </form>
      </li>
    % end
  % else:
    <li>Nenhuma tarefa cadastrada.</li>
  % end
  </ul>

  <a href="/tarefas/nova" class="botao-link">+ Nova Tarefa</a>
  <a href="/" class="link-voltar">Voltar ao início</a>
</div>
