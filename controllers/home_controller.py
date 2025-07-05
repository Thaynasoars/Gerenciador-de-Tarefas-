from bottle import route, view, request

@route('/')
@view('index')
def home():
    usuario_logado = request.get_cookie("usuario")
    logado = usuario_logado is not None
    return dict(logado=logado)