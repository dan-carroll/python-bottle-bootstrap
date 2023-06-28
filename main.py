import bottle
from bottle import route, default_app, template, static_file, error, response, request

import random

#from bottle import Bottle, template

bottle.TEMPLATE_PATH.insert(0,'/home/DanCarroll/bottle/views')

app = default_app()
#BaseTemplate.defaults['get_url'] = app.get_url  # reference to function, not function call!

site = {'name': 'Bottle app with Bootstrap 5',
        'author': 'Dan Carroll',
        'lang': 'en-US',
        'description': 'No Description'
        }

def dict_to_html(dd):
    """Generate an HTML list of the keys and
    values in the dictionary dd, return a
    string containing HTML"""

    html = "<ul>"
    for key in dd.keys():
        html += "<li><strong>%s: </strong>%s</li>" % (key, dd[key])
    html += "</ul>"
    return html

#result = dict_to_html(request.environ)

@error(410)
@error(404)
def error404(error):
    return template('404')

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

@route('/pages/<filepath:path>', name='pages')
def serve_static(filepath):
    return static_file(filepath, root='/home/DanCarroll/bottle/pages')

@route('/bigbookpython/<filepath:path>', name='bigbookpython')
def serve_static(filepath):
    return static_file(filepath, root='/home/DanCarroll/bottle/bigbookpython')

#@route('/favicon.ico', method='GET')
#def get_favicon():
#    return static_file('favicon.ico', root='/home/DanCarroll/bottle/static/')

@route('/')
def index():
    """Home page"""

    page = {'title': "Dan Carroll's Python with Bottle and Bootstrap Page",
            'content': 'Hello Everyone',
            'contact': 'Show',
            'banner': 'No Show',
            'navhome': "/"
            }

    navs = [ {'href': "/", 'active': "active", 'text': "Home"},
            {'href': "/start", 'active': "", 'text': "Getting Started"},
            {'href': "/web-python", 'active': "", 'text': "Web Python"},
            {'href': "/projects", 'active': "", 'text': "Projects"},
            {'href': "/pages", 'active': "", 'text': "Pages"} ]

    return template('index', page, site, navs = navs)

@route('/start')
def start():
    """Getting started page"""

    page = {'title': "Getting Started with Python",
            'content': 'Hello Everyone',
            'contact': 'Show',
            'banner': 'No Show',
            'navhome': "/"
            }

    navs = [ {'href': "/", 'active': "", 'text': "Home"},
            {'href': "/start", 'active': "active", 'text': "Getting Started"},
            {'href': "/web-python", 'active': "", 'text': "Web Python"},
            {'href': "/projects", 'active': "", 'text': "Projects"},
            {'href': "/pages", 'active': "", 'text': "Pages"} ]

    return template('start', page, site, navs = navs)

@route('/web-python')
def webpython():
    """Python on the Web page"""

    page = {'title': "Python is On the Web",
            'content': 'Hello Everyone',
            'contact': 'Show',
            'banner': 'No Show',
            'navhome': "/"
            }

    navs = [ {'href': "/", 'active': "", 'text': "Home"},
            {'href': "/start", 'active': "", 'text': "Getting Started"},
            {'href': "/web-python", 'active': "active", 'text': "Web Python"},
            {'href': "/projects", 'active': "", 'text': "Projects"},
            {'href': "/pages", 'active': "", 'text': "Pages"} ]

    return template('web-python', page, site, navs = navs)

@route('/projects')
def projects():
    """Projects page"""

    page = {'title': "Dan Carroll's Projects Page",
            'content': 'Hello Everyone',
            'contact': 'Show',
            'banner': 'No Show',
            'navhome': "/"
            }

    navs = [ {'href': "/", 'active': "", 'text': "Home"},
            {'href': "/start", 'active': "", 'text': "Getting Started"},
            {'href': "/web-python", 'active': "", 'text': "Web Python"},
            {'href': "/projects", 'active': "active", 'text': "Projects"},
            {'href': "/pages", 'active': "", 'text': "Pages"} ]

    return template('projects', page, site, navs = navs)

@route('/pages')
def pages():
    """Experimental pages"""

    page = {'title': "Dan Carroll's Experimental Pages",
            'content': 'Hello Everyone',
            'contact': 'Show',
            'banner': 'No Show',
            'navhome': "/",
            'page': "pages"
            }

    navs = [ {'href': "/", 'active': "", 'text': "Home"},
            {'href': "/start", 'active': "", 'text': "Getting Started"},
            {'href': "/web-python", 'active': "", 'text': "Web Python"},
            {'href': "/projects", 'active': "", 'text': "Projects"},
            {'href': "/pages", 'active': "active", 'text': "Pages"} ]

    return template('pages', page, site, navs = navs)

@route('/bigbookpython')
def bigbookpython():
    """Page for the Big Book Python code"""

    page = {'title': "Big Book Python Page",
            'content': 'Hello Everyone',
            'contact': 'Show',
            'banner': 'No Show',
            'navhome': "/"
            }

    navs = [ {'href': "/", 'active': "", 'text': "Home"},
            {'href': "/start", 'active': "", 'text': "Getting Started"},
            {'href': "/web-python", 'active': "", 'text': "Web Python"},
            {'href': "/projects", 'active': "active", 'text': "Projects"},
            {'href': "/pages", 'active': "", 'text': "Pages"} ]

    crumbs = [ {'href': "/", 'active': "", 'text': "Home"},
                {'href': "/projects", 'active': "", 'text': "Projects"},
                {'href': "#", 'active': "active", 'text': "Big Book Python"} ]

    return template('bigbookpython', page, site, navs = navs, crumbs = crumbs)

@route('/bigbookpython/bagels')
def bagels():
    """Big Book Python Bagels game"""

    NUM_DIGITS = 3  # (!) Try setting this to 1 or 10.
    MAX_GUESSES = 10  # (!) Try setting this to 1 or 100.


    """Create a string made up of NUM_DIGITS unique random digits."""
    numbers = list('0123456789')  # Create a list of digits 0 to 9.
    random.shuffle(numbers)  # Shuffle them into random order.

    # Get the first NUM_DIGITS digits in the list for the secret number:
    secretNum = ''
    for i in range(NUM_DIGITS):
        secretNum += str(numbers[i])

    page = {'title': "Bagels Game",
            'content': 'Hello Everyone',
            'contact': 'Show',
            'banner': 'No Show',
            'navhome': "/",
            'numdigits': "{0}".format(NUM_DIGITS),
            'maxguesses': "{0}".format(MAX_GUESSES),
            'secret_num': "{0}".format(secretNum)
            }

    navs = [ {'href': "/", 'active': "", 'text': "Home"},
            {'href': "/start", 'active': "", 'text': "Getting Started"},
            {'href': "/web-python", 'active': "", 'text': "Web Python"},
            {'href': "/projects", 'active': "active", 'text': "Projects"},
            {'href': "/pages", 'active': "", 'text': "Pages"} ]

    crumbs = [ {'href': "/", 'active': "", 'text': "Home"},
                {'href': "/projects", 'active': "", 'text': "Projects"},
                {'href': "/bigbookpython", 'active': "", 'text': "Big Book Python"},
                {'href': "#", 'active': "active", 'text': "Bagels Game"} ]

    return template('bigbookpython/bagels', page, site, navs = navs, crumbs = crumbs)




@route('/home')
def home():
    """Home page test"""

    page = {'title': "Dan Carroll's Alternate Python with Bottle and Bootstrap Page",
            'content': 'Hello Everyone',
            'banner': 'No Show'
            }

    return template('default', page, site)


@route('/landing')
@route('/landing/')
def landing():
    """Landing page"""

    page = {'title': "Dan Carroll's Python with Bottle and Bootstrap Page",
            'content': 'Hello Everyone',
            'banner': 'No Show'
            }

    return template('landing', page, site)


@route('/test')
def index():
    """Test page"""

    page = {'title': "Python Test Page with Bottle and Bootstrap",
            'content': 'Hello Everyone',
            'banner': 'No Show',
            'address': request.remote_addr,
            'user_agent': request.environ['HTTP_USER_AGENT']
            }

    return template('test', page, site)

@route('/hello')
def index():
    """Hello page"""

    page = {'title': "Python Hello Page with Bottle",
            'content': 'Hello Everyone',
            'banner': 'No Show'
            }

    return template('hello_template', page, site)
