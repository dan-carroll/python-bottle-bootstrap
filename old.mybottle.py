import bottle
from bottle import route, default_app, template

bottle.TEMPLATE_PATH.insert(0,'/home/DanCarroll/bottle/views')
#bottle.TEMPLATES.clear()

@route('/')
def hello():
    return "<h1>Hello from PythonAnywhere with Bottle!</h1>"

@route('/hello')
@route('/hello/<name>')
def index(name='World'):
    return template('hello_template', name=name)


app = default_app()
