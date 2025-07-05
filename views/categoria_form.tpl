<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8" />
    <title>Nova Categoria</title>
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

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button.botao {
            margin-top: 20px;
            width: 100%;
            background-color: #28a745;
            color: white;
            font-weight: bold;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button.botao:hover {
            background-color: #218838;
        }

        .link-voltar {
            display: block;
            text-align: center;
            margin-top: 15px;
            text-decoration: none;
            color: #007bff;
        }

        .link-voltar:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Nova Categoria</h1>

        <form action="/categorias" method="post">
            <label for="nome">Nome da Categoria:</label>
            <input type="text" id="nome" name="nome" required />

            <button type="submit" class="botao">Salvar</button>
        </form>

        <a href="/categorias" class="link-voltar">Voltar à lista de categorias</a>
    </div>
</body>
</html>