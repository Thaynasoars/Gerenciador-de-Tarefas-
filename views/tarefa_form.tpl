<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Nova Tarefa</title>
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
        input[type="date"],
        select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
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

        input[type="submit"]:hover {
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
        <h1>Nova Tarefa</h1>
        <form action="/tarefas" method="post">
            <label for="titulo">Título:</label>
            <input type="text" name="titulo" id="titulo" required>

            <label for="descricao">Descrição:</label>
            <input type="text" name="descricao" id="descricao" required>

            <label for="categoria">Categoria:</label>
            <select name="categoria_id" id="categoria" required>
                <option value="">Selecione uma categoria</option>
                % for cat in categorias:
                    <option value="{{cat.id}}">{{cat.nome}}</option>
                % end
            </select>

            <label for="prazo">Prazo (opcional):</label>
            <input type="date" name="prazo" id="prazo">

            <input type="submit" value="Criar">
        </form>
        <a href="/tarefas" class="link-voltar">Voltar à listagem de tarefas</a>
    </div>
</body>
</html>
