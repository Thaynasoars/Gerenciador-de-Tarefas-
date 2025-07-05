% rebase('layout.tpl')

<h2>Lista de Tarefas</h2>

<ul>
% for tarefa in tarefas:
  <li>{{tarefa.title}} - {{tarefa.description}}</li>
% else:
  <li>Nenhuma tarefa cadastrada.</li>
% end
</ul>

<a href="/tarefas/nova">+ Nova Tarefa</a>