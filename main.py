import bottle
from bottle import route, default_app, template, static_file

#from bottle import Bottle, template

bottle.TEMPLATE_PATH.insert(0,'/home/DanCarroll/bottle/views')

app = default_app()
#BaseTemplate.defaults['get_url'] = app.get_url  # reference to function, not function call!

site = {'name': 'Bottle app with Bootstrap',
        'author': 'Dan Carroll',
        'lang': 'en-US',
        'description': 'No Description'
        }

# Static Routes
#@get("/static/css/<filepath:re:.*\.css>")
#def css(filepath):
#    return static_file(filepath, root="static/css")

#@get("/static/font/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
#def font(filepath):
#    return static_file(filepath, root="static/font")

#@get("/static/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
#def img(filepath):
#    return static_file(filepath, root="static/img")

#@get("/static/js/<filepath:re:.*\.js>")
#def js(filepath):
#    return static_file(filepath, root="static/js")

@route('/static/<filename:path>', name='static')
def serve_static(filename):
    return static_file(filename, root='/home/DanCarroll/bottle/static')

@route('/')
def index():
    """Home page"""

    page = {'title': 'Welcome Home!',
            'content': 'Hello World',
            'banner': 'No Show'
            }

    return template('default', page, site)
