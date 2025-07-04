from bottle import run
import controllers.user_controller
import controllers.task_controller
import controllers.category_controller
import controllers.home_controller

run(host='localhost', port=8080, debug=True, reloader=True)