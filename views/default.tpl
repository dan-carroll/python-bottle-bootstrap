<!DOCTYPE html>
<html lang="{{ lang or 'en-US' }}">

% include('head.tpl')

  <body>

% include('header.tpl')
% if banner == 'show':
	% include('banner.tpl')
% end

    <div class = "container-fluid">
    <div class = "row">
        <div class = "col">
        <h1>{{title}}</h1>
        <p>{{content}}</p>
        </div>
    </div>
    </div>

% include('footer.tpl')

  </body>
</html>
