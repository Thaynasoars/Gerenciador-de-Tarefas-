from bottle import route, template

@route('/')
def home():
    return template('index')