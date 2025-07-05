<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
<body>
    <h1>Bem-vindo ao Gerenciador de Tarefas!</h1>

    <nav>
        <ul>
        % if not logado:
            <li><a href="/login">Login</a></li>
            <li><a href="/registrar">Registrar</a></li>
        % else:
            <li><a href="/usuarios">Usuários</a></li>
            <li><a href="/tarefas">Tarefas</a></li>
            <li><a href="/categorias">Categorias</a></li>
            <li><a href="/logout">Logout</a></li> <!-- você pode criar rota para logout -->
        % end
        </ul>
    </nav>
</body>
</html>