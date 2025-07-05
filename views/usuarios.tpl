<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Usuários</title>
</head>
<body>
    <h1>Lista de Usuários</h1>
    <ul>
        % for usuario in usuarios:
        <li>{{usuario.nome}} ({{usuario.email}})</li>
        % end
    </ul>
    <a href="/">Voltar ao início</a>
</body>
</html>