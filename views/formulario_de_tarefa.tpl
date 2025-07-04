<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Nova Tarefa</title>
</head>
<body>
    <h1>Cadastrar Tarefa</h1>
    <form action="/tarefas/criar" method="post">
        Título: <input type="text" name="titulo"><br>
        Descrição: <input type="text" name="descricao"><br>
        Categoria: <input type="text" name="categoria"><br>
        <input type="submit" value="Criar">
    </form>
    <a href="/tarefas">Voltar</a>
</body>
</html>