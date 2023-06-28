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
        <h1 class="mt-3">{{title}}</h1>
      </div>
    </div>

    <div class="row cards">

      <div class="col-md-4 d-flex justify-content-center mb-2">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <img src="/static/images/cover_bigbookpython_thumb.jpg" alt="The Big Book of Small Python Projects cover" height="30%" width="30%">
            <h5 class="card-title">The Big Book of Small Python Projects</h5>
            <p class="card-text">A great book to get started with Python projects that you can modify to make your own.</p>
            <a href="bigbookpython" class="btn btn-primary">Go to Big Book page</a>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <i class="fa fa-globe icon" style="font-size:48px;" alt="globe icon"></i>
            <h5 class="card-title">Web Dev</h5>
            <p class="card-text">The Web is a great place to be. With endless variety and possibilities for work, play, and creativity.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <i class="fa fa-tablet icon" style="font-size:48px;" alt="Service Two"></i>
            <h5 class="card-title">Machine Learning</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4 d-flex justify-content-center">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <i class="fa fa-fort-awesome icon" style="font-size:48px;" alt="Service Three"></i>
            <h5 class="card-title">Security</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
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