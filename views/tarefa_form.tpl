<h1>Nova Tarefa</h1>

<form action="/tarefas" method="POST">
  <label for="titulo">Título:</label><br>
  <input type="text" id="titulo" name="titulo"><br><br>

  <label for="descricao">Descrição:</label><br>
  <textarea id="descricao" name="descricao"></textarea><br><br>

  <label for="categoria_id">Categoria:</label><br>
  <select id="categoria_id" name="categoria_id">
    % for categoria in categorias:
      <option value="{{categoria.id}}">{{categoria.nome}}</option>
    % end
  </select><br><br>

  <button type="submit">Criar</button>
</form>