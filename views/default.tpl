<!DOCTYPE html>
<html lang="{{ lang or 'en-US' }}">
  <head>
    % include('./landing/head.tpl')
  </head>
  <body>

% include('./landing/navbar.tpl')

% include('./landing/header.tpl')

% if banner == 'show':
	% include('./landing/banner.tpl')
% end

    <div class = "container-fluid">
    <div class = "row">
        <div class = "col">
        <h1>{{title}}</h1>
        <p>{{content}}</p>
        </div>
    </div>
    </div>

% include('./landing/footer.tpl')

  </body>
</html>
