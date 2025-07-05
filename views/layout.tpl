<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Gerenciador de Tarefas</title>
    <style>
        body {
            background-color: #f8f8f8;
            font-family: Arial, sans-serif;
        }

        .form-container {
            max-width: 400px;
            margin: 60px auto;
            padding: 30px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: center;
        }

        .titulo {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .botao {
            display: inline-block;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        .botao:hover {
            background-color: #0056b3;
        }

        .link-voltar {
            display: block;
            margin-top: 15px;
            text-decoration: none;
            color: #007BFF;
            font-size: 14px;
        }

        .link-voltar:hover {
            text-decoration: underline;
        }

        .tarefas-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: center;
        }

        .titulo {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .lista-tarefas {
            list-style-type: none;
            padding: 0;
            margin-bottom: 20px;
        }

        .lista-tarefas li {
            background-color: #f3f3f3;
            margin: 10px 0;
            padding: 12px 15px;
            border-radius: 5px;
            text-align: left;
        }

        .botao-link {
            display: inline-block;
            background-color: #28a745;
            color: white;
            padding: 10px 16px;
            font-size: 14px;
            border-radius: 5px;
            text-decoration: none;
            transition: background 0.3s ease;
        }

        .botao-link:hover {
            background-color: #218838;
        }

        .link-voltar {
            display: block;
            margin-top: 15px;
            text-decoration: none;
            color: #007BFF;
            font-size: 14px;
        }

        .link-voltar:hover {
            text-decoration: underline;
        }
    </style>

</head>
<body>
    <div class="container">
        {{!base}} <!-- Isso é o que insere o conteúdo da view que usa rebase -->
    </div>
</body>
</html>