% rebase('layout.tpl')

<div class="tarefas-container">
  <h2 class="titulo">Lista de Categorias</h2>

  <ul class="lista-tarefas">
    % if categorias:
      % for categoria in categorias:
        <li>{{categoria.nome}}</li>
      % end
    % else:
      <li>Nenhuma categoria cadastrada.</li>
    % end
  </ul>

  <a href="/categorias/nova" class="botao-link">+ Nova Categoria</a>
  <a href="/" class="link-voltar">Voltar ao início</a>
</div>