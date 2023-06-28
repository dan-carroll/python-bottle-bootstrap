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

<!-- Hero section -->
<section id="hero">
  <div class="container mt-5 pt-5 mt-lg-0 pt-lg-0">
    <div class="row">
      <div class="col">
        <h1>Software Development
        <small class="text-muted">Is My Jam!</small></h1>
        <p>Software creation is a blast. It is so interesting and satisfying to create apps that solve problems. Everything from full enterprise workflow automation to single purpose utilities and full websites to individual landing pages or online apps to mobile apps. Being challenged is the spice of life.</p>
        <p>This site is about the Python programming language and what you can accomplish with it. And some of what I have worked on. Python allows you to do so much, such as web design, application development, game programming, scientific endeavors, and so much more. Plus it's really fun and easy to learn.</p>
            <a href="https://dancarroll.pythonanywhere.com/start" class="btn btn-primary" style="width:15rem;margin:.5rem auto;">Get Started with Python</a>
            <a href="https://dancarroll.pythonanywhere.com/web-python" class="btn btn-primary" style="width:15rem;margin:.5rem auto;">Python in the Web Browser</a>
            <a href="https://dancarroll.pythonanywhere.com/projects" class="btn btn-primary" style="width:15rem;margin:.5rem auto;">Check out my Python Projects</a>
            <a href="https://dancarroll.pythonanywhere.com/pages" class="btn btn-primary" style="width:15rem;margin:.5rem auto;">My Experimental Pages</a>
      </div>
      <div class="col img-col">
        <img src="/static/images/app-development.png" class="img-fluid" alt="Software Development">
      </div>
    </div>

  </div>
</section>
<!-- End Hero section -->

</main>

% include('footer.tpl')

% include('scripts.tpl')

    <!-- Place all other Javascript code below -->
    <!-- <script type="text/javascript" src='/static/js/main.js'></script> -->

  </body>
</html>