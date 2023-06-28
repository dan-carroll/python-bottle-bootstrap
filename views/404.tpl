<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dan Carroll python bottle test -- 404 error page</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
        crossorigin="anonymous">

    <link rel="shortcut icon" href="/static/favicon.ico">

</head>

<body>

    <div class="d-flex align-items-center justify-content-center vh-100 bg-primary">
        <div class="text-center text-white">
            <h1 class="display-1 fw-bold">404 Error -- Requested Page Not Found!</h1>
            <p class="fs-3"> <span class="text-warning fw-bold">Oops!</span> Page not found.</p>
            <p class="lead">
                The requested page either does not exist or has been moved.
              </p>
            <a href="/" class="btn btn-warning"><strong>Go Home</strong></a>

            <div id="footer" class="position-absolute bottom-0 start-50 translate-middle-x">
                <p>This page designed and maintained by Dan Carroll &copy;2022</p>
            </div>
        </div>
    </div>
</body>

</html>