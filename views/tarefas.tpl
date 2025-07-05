% rebase('layout.tpl')

<div class="tarefas-container">
  <h2 class="titulo">Lista de Tarefas</h2>

  <ul class="lista-tarefas">
  % if tarefas:
    % for tarefa in tarefas:
      <li>
        <strong>{{tarefa.title}}</strong> – {{tarefa.description}}
        % if tarefa.categoria:
          <br><small>Categoria: {{tarefa.categoria.nome}}</small>
        % else:
          <br><small>Categoria: Nenhuma</small>
        % end
      </li>
    % end
  % else:
    <li>Nenhuma tarefa cadastrada.</li>
  % end
  </ul>

  <a href="/tarefas/nova" class="botao-link">+ Nova Tarefa</a>
  <a href="/" class="link-voltar">Voltar ao início</a>
</div>