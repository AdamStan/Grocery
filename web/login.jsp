<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">
        <link href="bootstrap4/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <title>Login Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
            <a href="index.html" class="navbar-brand"> GroceryStore </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                  <a class="nav-link" href="/GroceryStore/CategoryController"> Categories </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Orders </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Products </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Purchases </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Salesmen </a>
                </li>
              </ul>
              <div class="form-inline mt-2 mt-md-0">
                <!--
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                -->
                <button class="nav-item btn btn-secondary" onclick="location.href='login.jsp';">
                  Login
                </button>
                <button class="nav-item btn btn-secondary">
                  Rejestracja
                </button>
              </div>
            </div>
        </nav>
        <form class="container text-center" action="\GroceryStore\Login" method="GET">
            <p> Username 
            <input type="text" name="username" /></p>
            <p> Password
            <input type="password" name="password" /></p>
            <p> <input type="submit"/></p>
        </form>
    </body>
</html>
