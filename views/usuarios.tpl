% rebase('layout.tpl')

<div class="tarefas-container">
  <h2 class="titulo">Lista de Usuários</h2>

  <ul class="lista-tarefas">
    % if usuarios:
      % for usuario in usuarios:
        <li><strong>{{usuario.nome}}</strong> ({{usuario.email}})</li>
      % end
    % else:
      <li>Nenhum usuário cadastrado.</li>
    % end
  </ul>

  <a href="/" class="link-voltar">Voltar ao início</a>
</div>