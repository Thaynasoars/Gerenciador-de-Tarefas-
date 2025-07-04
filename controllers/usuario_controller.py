from bottle import route, view, request, redirect, response, template
from services import user_service
from models.user import User

@route('/')
@view('index')
def home():
    return {}

@route('/usuarios')
def listar_usuarios():
    usuarios = user_service.get_all()
    return template('usuarios', usuarios=usuarios)

@route('/register')
@view('user_form')
def register_form():
    return {}

@route('/register', method='POST')
def register():
    name = request.forms.get('name')
    email = request.forms.get('email')
    senha = request.forms.get('password')          # <-- Troque para senha
    if user_service.find_by_email(email):
        return "E-mail já cadastrado!<br><a href='/register'>Voltar</a>"
    users = user_service.get_all()
    new_id = len(users) + 1
    user = User(id=new_id, name=name, email=email, senha=senha)  # <-- senha
    user_service.add_user(user)
    return redirect('/login')

@route('/login')
@view('login')
def login_form():
    return {}

@route('/login', method='POST')
def login():
    email = request.forms.get('email')
    senha = request.forms.get('password')         # <-- Troque para senha
    user = user_service.find_by_email(email)
    if user and user.senha == senha:              # <-- user.senha
        response.set_cookie("user", email)
        return redirect('/usuarios')
    return "Login inválido!<br><a href='/login'>Tentar novamente</a>"