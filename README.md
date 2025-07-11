# Projeto Template: POO com Python + Bottle + JSON

Este é um projeto de template educacional voltado para o ensino de **Programação Orientada a Objetos (POO)** do Prof. Lucas Boaventura, Universidade de Brasília (UnB).

Utiliza o microframework **Bottle**. Ideal para uso em disciplinas introdutórias de Engenharia de Software ou Ciência da Computação.

## 💡 Objetivo

Fornecer uma base simples, extensível e didática para construção de aplicações web orientadas a objetos com aplicações WEB em Python, ideal para trabalhos finais ou exercícios práticos.

---

## 🗂 Estrutura de Pastas

```bash
poo-python-bottle-template/
├── app.py # Ponto de entrada do sistema
├── config.py # Configurações e caminhos do projeto
├── main.py # Inicialização da aplicação
├── requirements.txt # Dependências do projeto
├── README.md # Este arquivo
├── controllers/ # Controladores e rotas
├── models/ # Definição das entidades (ex: User)
├── services/ # Lógica de persistência (JSON)
├── views/ # Arquivos HTML (Bottle Templating)
├── static/ # CSS, JS e imagens
├── data/ # Arquivos JSON de dados
└── .vscode/ # Configurações opcionais do VS Code
```


---

## 📁 Descrição das Pastas

### `controllers/`
Contém as classes responsáveis por lidar com as rotas da aplicação. Exemplos:
- `user_controller.py`: rotas para listagem, adição, edição e remoção de usuários.
- `base_controller.py`: classe base com utilitários comuns.

### `models/`
Define as classes que representam os dados da aplicação. Exemplo:
- `user.py`: classe `User`, com atributos como `id`, `name`, `email`, etc.

### `services/`
Responsável por salvar, carregar e manipular dados usando arquivos JSON. Exemplo:
- `user_service.py`: contém métodos como `get_all`, `add_user`, `delete_user`.

### `views/`
Contém os arquivos `.tpl` utilizados pelo Bottle como páginas HTML:
- `layout.tpl`: estrutura base com navegação e bloco `content`.
- `users.tpl`: lista os usuários.
- `user_form.tpl`: formulário para adicionar/editar usuário.

### `static/`
Arquivos estáticos como:
- `css/style.css`: estilos básicos.
- `js/main.js`: scripts JS opcionais.
- `img/BottleLogo.png`: exemplo de imagem.

### `data/`
Armazena os arquivos `.json` que simulam o banco de dados:
- `users.json`: onde os dados dos usuários são persistidos.

---

## ▶️ Como Executar

1. Crie o ambiente virtual na pasta fora do seu projeto:
```bash
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\\Scripts\\activate     # Windows
```

2. Entre dentro do seu projeto criado a partir do template e instale as dependências:
```bash
pip install -r requirements.txt
```

3. Rode a aplicação:
```bash
python main.py
```

4. Accese sua aplicação no navegador em: [http://localhost:8080](http://localhost:8080)

---

## ✍️ Personalização
Para adicionar novos modelos (ex: Atividades):

1. Crie a classe no diretório **models/**.

2. Crie o service correspondente para manipulação do JSON.

3. Crie o controller com as rotas.

4. Crie as views .tpl associadas.

---

## 🧠 Autor e Licença
Projeto desenvolvido como template didático para disciplinas de Programação Orientada a Objetos, baseado no [BMVC](https://github.com/hgmachine/bmvc_start_from_this).
Você pode reutilizar, modificar e compartilhar livremente.


#  Gerenciador de Tarefas - Bottle MVC

![Interface Inicial](static/img/tela_inicial.png)

---

## Sistema de Autenticação

### Fluxo de Login/Logout

1. *Login* (/login):
   - Valida credenciais contra usuários cadastrados
   - Cria sessão segura com cookie HTTP-only
   - Redireciona para dashboard

2. *Área Logada*:
   - Menu mostra "Logout" quando autenticado
   - Todas as rotas protegidas verificam sessão

3. *Logout* (/logout):
   - Encerra a sessão
   - Remove cookies
   - Redireciona para página inicial

### 👤 Usuário de Teste

Email: test@test.com
Senha: 12345678
---

##  Tecnologias Utilizadas

-  *Python 3* + *Bottle Framework*
-  Persistência em arquivos *JSON*
-  Estilo com *CSS* e *JavaScript Vanilla*
-  Senhas com *hash SHA-256*

---

##  Estrutura MVC

| Componente   | Pasta         | Exemplos                   |
|--------------|---------------|----------------------------|
| *Models*   | models/     | Usuario.py, Tarefa.py |
| *Views*    | views/      | Templates .tpl          |
| *Controllers* | controllers/ | Rotas e lógica do sistema |

---

## ✅ Critérios Atendidos

- ✅ Aplicação Web + MVC 
- ✅ Persistência em JSON 
- ✅ 4 Pilares da OO: abstração, encapsulamento, herança e polimorfismo 
- ✅ Autenticação de Usuários 

---

##  Execução do Projeto

```bash
# Clone o repositório
git clone https://github.com/Thaynasoars/Gerenciador-de-Tarefas-.git                                                                                     
# Crie e ative o ambiente virtual
python -m venv venv
.\venv\Scripts\activate  # Windows
source venv/bin/activate  # Linux/Mac

# Instale as dependências
pip install -r requirements.txt

# Execute o sistema
python main.py
Acesse no navegador: 👉 http://localhost:8080/login
