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

# Static CSS Files
#@route('/static/css/<filename:re:.*\.css>')
#def send_css(filename):
#    return static_file(filename, root='static/css')

#@get("/static/font/<filepath:re:.*\.(eot|otf|svg|ttf|woff|woff2?)>")
#def font(filepath):
#    return static_file(filepath, root="static/font")

#@get("/static/img/<filepath:re:.*\.(jpg|png|gif|ico|svg)>")
#def img(filepath):
#    return static_file(filepath, root="static/img")

#@get("/static/js/<filepath:re:.*\.js>")
#def js(filepath):
#    return static_file(filepath, root="static/js")

@route('/static/<filepath:path>', name='static')
def serve_static(filepath):
    return static_file(filepath, root='/home/DanCarroll/bottle/static')

@route('/')
def index():
    """Home page"""

    page = {'title': "Dan Carroll's Python with Bottle and Bootstrap Page",
            'content': 'Hello Everyone',
            'banner': 'No Show'
            }

    return template('landing', page, site)
