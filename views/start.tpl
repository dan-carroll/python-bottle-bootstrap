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
          <img src="/static/images/python-logo-master-v3-TM.png" class="card-img-top" alt="python logo">
          <div class="card-body">
            <h5 class="card-title">The Python Tutorial</h5>
            <p class="card-text text-start">Ready to start learning Python? What
            could be better than the <a href="https://docs.python.org/3.11/tutorial/">
            official Python tutorial</a>.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <img src="/static/images/pfe-cover.png" class="card-img-top img-thumbnail mx-auto" alt="python logo" style="width: 6rem;">
          <div class="card-body">
            <h5 class="card-title">Python for Everybody</h5>
            <p class="card-text text-start">There are numerous courses, tutorials, and books available to learn Python from.
            So here is a quick pick for an online book that can double as a tutorial. <a href="https://books.trinket.io/pfe/" target="_blank">
            Python for Everybody by Charles Severance</a> is an updated take on a good educational Python volume.
            I haven't completed my review on it but it has impressed me so far.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <div class="row g-0">
            <div class="col-4">
              <img src="/static/images/cover_automate2_thumb.jpg" class="img-thumbnail" alt="Automate the Boring Stuff with Python" style="width: 6rem;">
            </div>
            <div class="col-4">
              <img src="/static/images/cover_bigbookpython_thumb.jpg" class="img-thumbnail" alt="The Big Book of Small Python Projects" style="width: 6rem;">
            </div>
            <div class="col-4">
              <img src="/static/images/cover_beyond_thumb.jpg" class="img-thumbnail" alt="Beyond the Basic Stuff with Python" style="width: 6rem;">
            </div>
          </div>
          <div class="card-body">
            <h5 class="card-title">Online Python Books</h5>
            <p class="card-text text-start">There are many good resources and books available online.
            One prolific author with the knowledge and wit to make learning python fun is Al Sweigart.</p>
            <a href="https://inventwithpython.com/" target="_blank" alt="Invent with Python">
            Learn to Program. For Free. Books by Al Sweigart.</a>
          </div>
        </div>
      </div>

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
          <img src="https://www.pythonanywhere.com/static/anywhere/images/PA-logo.svg" class="card-img-top" alt="pythonanywhere logo">
          <div class="card-body">
            <h5 class="card-title">Host, run, and code Python in the cloud!</h5>
            <p class="card-text text-start">You need a place to run and test your Python code. Where else are you going to go other than
            <a href="https://www.pythonanywhere.com/" target="_blank"><strong>PythonAnywhere</strong></a>?</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <div class="card-body">
            <img src="/static/images/icons8-python-64.png" alt="python framework icon" class="pb-2">
            <h5 class="card-title">Python Frameworks</h5>
            <p class="card-text text-start">PythonAnywhere has wizards to help you install frameworks on that platform.
            If you need to know more, <a
            href="https://www.simplilearn.com/python-frameworks-article#:~:text=Python%20frameworks%20automate%20the%20implementation,stack%2C%20micro%2C%20or%20asynchronous."
            target="_blank">here is an article</a> that should help.</p>
            <p class="card-text text-start">My recommendations are <a href="http://www.web2py.com/">web2py</a> for a full-stack framework.
            And <a href="https://www.bottlepy.org/docs/dev/index.html" target="_blank">Bottle</a> for a micro-framework.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card mb-3" style="width: 18rem;">
          <img src="/static/images/web2py_logo_lb.png" class="card-img-top" alt="web2py logo">
          <div class="card-body">
            <h5 class="card-title">Learn Python with a Full-Stack Framework</h5>
            <p class="card-text text-start">For anyone wanting a thorough immersion in Python and/or looking to learn the internals
            of a full-stack web application, the <a href="http://web2py.com/book" target="_blank">web2py Complete Reference Manual</a>, 6th Edition by Massimo Di Pierro
            is a great way to go. It has enabled me to complete several quality business applications for clients. And have some fun (learning) along the way.</p>
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