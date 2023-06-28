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
<!-- Start section -->
<section id="start" class="py-5 text-center container">
  <div class="container mt-5 pt-5">
    <div class="row">
      <div class="col">
        <h1 class="mb-5">{{title}}</h1>
      </div>
    </div>

    <div class="row cards">

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <img src="/static/images/pyodide-logo.png" class="card-img-top" alt="Pyodide logo">
          <div class="card-body">
            <h5 class="card-title">The Piodide Terminal Emulator</h5>
            <p class="card-text text-start">An online version of the Python shell,
            or REPL (Read-Eval-Print Loop). Here you can run Python code interactively. See this
            <a href="https://realpython.com/python-repl/">tutorial</a> to learn more.</p>
            <a href="https://pyodide.org/en/stable/console.html" target="_blank" alt="Piodide terminal emulator">
            The Piodide Terminal Emulator</a>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <img src="/static/images/pyscript.svg" class="card-img-top" alt="PyScript logo" style="background-color: black;">
          <div class="card-body">
            <h5 class="card-title">PyScript</h5>
            <p class="card-text text-start">Run Python in web browsers instead of JavaScript, or with JavaScript. See this
            <a href="https://realpython.com/pyscript-python-in-browser/">tutorial</a> to learn more.</p>
            <a href="https://pyscript.net/" target="_blank" alt="PyScript framework page">
            PyScript Framework Home Page</a>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <img src="/static/images/brython_logo.jpg" class="card-img-top" alt="Brython logo">
          <div class="card-body">
            <h5 class="card-title">Brython - Python in Browser</h5>
            <p class="card-text text-start">Python in a browser can be a lot of fun. Check out the demos,
            gallery, and console at the <a href="https://brython.info/index.html">Brython homepage</a>.</p>
            <p class="card-text text-start">Check out this <a href="https://realpython.com/brython-python-in-browser/">tutorial</a> for some extra fun.</p>
          </div>
        </div>
      </div>

<div class="d-none">

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <img src="#" class="card-img-top" alt="#">
          <div class="card-body">
            <h5 class="card-title">## card template ##</h5>
            <p class="card-text text-start">## Need something here. ##</p>
          </div>
        </div>
      </div>

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