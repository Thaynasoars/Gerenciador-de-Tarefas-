from bottle import route, view, request, redirect, response, template
from services.usuario_service import usuario_service
from models.usuario import Usuario

@route('/')
@view('index')
def home():
    return {}

@route('/usuarios')
def listar_usuarios():
    usuarios = usuario_service.get_all()
    return template('usuarios', usuarios=usuarios)

@route('/registrar')
@view('usuario_form')
def registrar_form():
    return {}

@route('/registrar', method='POST')
def registrar():
    nome = request.forms.get('nome')
    email = request.forms.get('email')
    senha = request.forms.get('senha')
    if usuario_service.find_by_email(email):
        return "E-mail já cadastrado!<br><a href='/registrar'>Voltar</a>"
    usuarios = usuario_service.get_all()
    novo_id = len(usuarios) + 1
    usuario = Usuario(id=novo_id, nome=nome, email=email, senha=senha)
    usuario_service.adicionar_usuario(usuario)
    return redirect('/login')

@route('/login')
@view('login')
def login_form():
    return {}

@route('/login', method='POST')
def login():
    email = request.forms.get('email')
    senha = request.forms.get('senha')

    # Depuração: mostrar os dados recebidos
    print("🔍 Email recebido:", repr(email))
    print("🔍 Senha recebida:", repr(senha))

    usuario = usuario_service.find_by_email(email)

    if usuario:
        print("✅ Usuário encontrado:", usuario.email)
        print("🔐 Senha cadastrada:", usuario.senha)
    else:
        print("❌ Nenhum usuário encontrado com o email fornecido.")

    if usuario and usuario.senha == senha:
        response.set_cookie("usuario", email)
        return redirect('/usuarios')

    return "Login inválido!<br><a href='/login'>Tentar novamente</a>"

# (Opcional) Redirecionamento alternativo
@route('/register')
def redirect_register():
    return redirect('/registrar')
