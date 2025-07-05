% rebase('layout.tpl')

<style>
  body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
    padding: 40px 20px;
    box-sizing: border-box;
  }

    h1.titulo {
        color: #222;
        font-size: 2.8rem;
        margin: 0 0 50px 0; /* maior espaçamento para o menu */
        text-align: center;
        width: 100%;
        max-width: 600px; /* opcional, limita largura do título */
    }

    .menu-lateral {
        display: flex;
        gap: 20px;
        flex-wrap: nowrap;       /* força tudo em uma linha só */
        justify-content: center;
        width: 100%;
        max-width: 600px;
        margin: 0 auto;
        overflow-x: auto;        /* permite scroll horizontal se não couber */
        -webkit-overflow-scrolling: touch; /* suaviza scroll no mobile */
    }

  .menu-lateral a {
    text-decoration: none;
    color: #28a745;
    font-weight: 600;
    padding: 12px 24px;
    border: 2px solid #28a745;
    border-radius: 6px;
    transition: background-color 0.3s ease, color 0.3s ease;
  }

  .menu-lateral a:hover {
    background-color: #28a745;
    color: white;
  }

  @media (max-width: 480px) {
    h1.titulo {
      font-size: 2rem;
    }
    .menu-lateral a {
      padding: 10px 16px;
      font-size: 0.9rem;
    }
  }
</style>

<body>
  <h1 class="titulo">Bem-vindo ao Gerenciador de Tarefas!</h1>

  <nav class="menu-lateral">
    % if not logado:
      <a href="/login">Login</a>
      <a href="/registrar">Registrar</a>
    % else:
      <a href="/usuarios">Usuários</a>
      <a href="/tarefas">Tarefas</a>
      <a href="/categorias">Categorias</a>
      <a href="/logout">Logout</a>
    % end
  </nav>
</body>
