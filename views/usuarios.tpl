% rebase('layout.tpl')

<div class="tarefas-container">
  <h2 class="titulo">Lista de Usuários</h2>

  <ul class="lista-tarefas">
    % if usuarios:
      % for usuario in usuarios:
        <li>
          <strong>{{usuario.nome}}</strong> ({{usuario.email}})
          <form action="/usuarios/{{usuario.id}}/excluir" method="post" style="display:inline;">
            <button type="submit" onclick="return confirm('Deseja excluir este usuário?')">Excluir</button>
          </form>
        </li>
      % end
    % else:
      <li>Nenhum usuário cadastrado.</li>
    % end
  </ul>

  <a href="/" class="link-voltar">Voltar ao início</a>
</div>