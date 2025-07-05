% rebase('layout.tpl')

<div class="form-container">
  <h2 class="titulo">Entrar</h2>
  <form action="/login" method="post">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="text" name="email" id="email" required>
    </div>
    <div class="form-group">
      <label for="senha">Senha:</label>
      <input type="password" name="senha" id="senha" required>
    </div>
    <button type="submit" class="botao">Entrar</button>
  </form>
  <a href="/" class="link-voltar">Voltar</a>
</div>