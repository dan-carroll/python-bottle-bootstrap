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
<section id="pages" class="py-5 text-center container">
  <div class="container mt-5 pt-5">
    <div class="row">
      <div class="col">
        <h1 class="mt-3">{{title}}</h1>
        <p class="h5"><a href="/pages/navbarpg.html" style="text-decoration: none">Navbar Test Page</a></p>
        <p class="h5"><a href="/pages/navbarpg2.html" style="text-decoration: none">Navbar Test Page 2</a></p>
        <p class="h5"><a href="/pages/pyscript.html" style="text-decoration: none">Pyscript Test</a></p>
        <p class="h5"><a href="/pages/pychart.html" style="text-decoration: none">PyChart Test</a></p>
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