<!DOCTYPE>
<html lang="{{ lang or 'en-US' }}">
  <head>
    % include('head.tpl')
  </head>
  <body>

<header>
  % include('navbar.tpl')
</header>

<main>
<!-- Pages section -->
<section id="pages" class="mt-0 py-0 text-center container">
  <div class="container mt-0 mb-5">
    <div class="row">
      <div class="col">
        <h1 class="mt-0">{{title}}</h1>
        <p class="h5"><a href="/bigbookpython/bagels" style="text-decoration: none">Bagels Game</a></p>
        <p class="h5"><a href="/bigbookpython/bagels.html" style="text-decoration: none">Bagels Game 2 (pyscript)</a></p>
      </div>
    </div>
  </div>
</section>
</main>

% include('footer.tpl')

% include('scripts.tpl')

    <!-- Place all other Javascript code below -->

  </body>
</html>