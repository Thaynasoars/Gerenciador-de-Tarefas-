<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Categorias</title>
</head>
<body>
    <h1>Lista de Categorias</h1>
    <a href="/categorias/novo">Nova Categoria</a>
    <ul>
        % for categoria in categorias:
            <li>{{categoria.name}}</li>
        % end
    </ul>
    <a href="/">Voltar ao início</a>
</body>
</html>