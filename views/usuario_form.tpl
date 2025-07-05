<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8" />
  <title>Registrar Usuário</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      margin: 0;
    }

    .card {
      background-color: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 400px;
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
    }

    .botoes {
      display: flex;
      justify-content: space-between;
      margin-top: 25px;
    }

    .botao {
      background-color: #28a745;
      color: white;
      font-weight: bold;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      text-decoration: none;
      text-align: center;
    }

    .botao:hover {
      background-color: #218838;
    }

    .link-voltar {
      background-color: #6c757d;
    }

    .link-voltar:hover {
      background-color: #5a6268;
    }
  </style>
</head>
<body>
  <div class="card">
    <h1>Registrar Usuário</h1>

    <form action="/registrar" method="post">
      <label for="nome">Nome:</label>
      <input type="text" id="nome" name="nome" required />

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required />

      <label for="senha">Senha:</label>
      <input type="password" id="senha" name="senha" required />

      <div class="botoes">
        <button type="submit" class="botao">Registrar</button>
        <a href="/" class="botao link-voltar">Voltar</a>
      </div>
    </form>
  </div>
</body>
</html>
