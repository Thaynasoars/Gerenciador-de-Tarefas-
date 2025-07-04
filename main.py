from bottle import run
import controllers.usuario_controller
import controllers.tarefa_controller
import controllers.categoria_controller
import controllers.home_controller

run(host='localhost', port=8080, debug=True, reloader=True)