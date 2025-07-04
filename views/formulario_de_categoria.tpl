<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Nova Categoria</title>
</head>
<body>
    <h1>Cadastrar Categoria</h1>
    <form action="/categorias/criar" method="post">
        Nome: <input type="text" name="name">
        <input type="submit" value="Criar">
    </form>
    <a href="/categorias">Voltar</a>
</body>
</html>