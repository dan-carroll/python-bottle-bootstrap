<!-- header -->
% from bottle import request
<section id="header">
  <div class="container">
    <div class="row">
      <div class="col">
        <header class="test_header mt-2 pt-1">
            <div class="overlay"></div>
            <div class="container mt-5 pt-5">
                <div class = "description">
                    <h1>{{title}}</h1>
                    <p>Your IP address is: <span  class="fw-bold">{{address}} </span></p>
                    <p>Your browser is: <span  class="fw-bold">{{user_agent}} </span></p>
                    <button class="btn btn-outline-secondary btn-lg">Test</button>
                    <hr style="height:4px; width:80%;" class="mx-auto">
                    <p>
                        <ul>
                        % key = 'bottle.request'
                        % result = request.environ[key]
                    <!--    <li><strong>{{key}}: </strong>{{result}}</li> -->
                        </ul>
                    </p>
                    <p>
                        <ul>
                        % for key, value in request.environ.items():
                          % sub = key[0:4]
                          <li><strong>{{key}}: </strong>
                          % if isinstance(value, str):
                            {{value}}
                          % elif isinstance(value, bytes):
                            {{value}}
                          % elif isinstance(value, bool):
                            {{'*'}}{{value}}{{'*'}}
                          % elif sub == 'wsgi':
                            {{value}}
                          % elif sub == 'rout':
                            {{value}}
                          % elif sub == 'bott':
                            % if key == 'bottle.app':
                              {{value}}
                            % elif key == 'bottle.route':
                              {{value}}
                            % elif key == 'bottle.request':
                              % result = request.environ['bottle.request']
                              {{result}}
                            % end
                          % else:
                            {{'TEST'}}
                            % res = type(value)
                            {{res  }}{{sub}}
                          % end
                        % end
                        </ul>
                    </p>
                    <hr style="height:4px; width:80%;" class="mx-auto">
                </div>
            </div>
        </header>
      </div>
    </div>
  </div>
</section>
