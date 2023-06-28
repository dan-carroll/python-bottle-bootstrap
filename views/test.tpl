<!DOCTYPE html>
<html lang="{{ lang or 'en-US' }}">
  <head>
    % include('head.tpl')
  </head>
  <body>

<header>
  % include('test_navbar.tpl')
</header>

<main>
% include('test_header.tpl')
</main>

<footer class="contact" id="contact">
  <div class="container pt-2">

% include('footer.tpl')

  </div>
</footer>

% include('scripts.tpl')

    <!-- Place all other Javascript code below -->

  </body>
</html>
