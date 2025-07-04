% rebase('layout.tpl')
<h2>Tarefas</h2>
<ul>
% for task in tasks:
    <li>{{task['title']}} ({{task['status']}})</li>
% end
</ul>
<a href="/tasks/new">Nova Tarefa</a>