<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Registrar Usuário</title>
</head>
<body>
    <h1>Registrar Usuário</h1>
    <form action="/register" method="post">
        <label>Nome: <input type="text" name="name" required></label><br>
        <label>Email: <input type="email" name="email" required></label><br>
        <label>Senha: <input type="password" name="password" required></label><br>
        <button type="submit">Registrar</button>
    </form>
    <a href="/">Voltar</a>
</body>
</html>