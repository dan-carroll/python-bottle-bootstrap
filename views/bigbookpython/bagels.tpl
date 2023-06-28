<%
"""Bagels, by Al Sweigart al@inventwithpython.com
A deductive logic game where you must guess a number based on clues.
This code is available at https://nostarch.com/big-book-small-python-programming
A version of this game is featured in the book, "Invent Your Own
Computer Games with Python" https://nostarch.com/inventwithpython
Tags: short, game, puzzle"""
%>
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
        <p class="fs-5 text-start fw-normal ps-2rem">
            Bagels, a deductive logic game.<br>
            By Al Sweigart al@inventwithpython.com<br>
            <br>
            I am thinking of a {{numdigits}}-digit number with no repeated digits.<br>
            Try to guess what it is. Here are some clues:<br>
            When I say:&nbsp;&nbsp;&nbsp;&nbsp;That means:<br>
            &nbsp;&nbsp;&nbsp;&nbsp;Pico&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;One digit is correct but in the wrong position.<br>
            &nbsp;&nbsp;&nbsp;&nbsp;Fermi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;One digit is correct and in the right position.<br>
            &nbsp;&nbsp;&nbsp;&nbsp;Bagels&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No digit is correct.<br>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;For example, if the secret number was 248 and your guess was 843, the<br>
            &nbsp;&nbsp;&nbsp;&nbsp;clues would be Fermi Pico.
        </p>
        <p class="fs-5 text-start fw-normal ps-2rem">
            <b>Num Digits:</b>    {{numdigits}}<br>
            <b>Max Guesses:</b>   {{maxguesses}}<br>
            <b>Secret Num:</b>    {{secret_num}}
        </p>
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