<%@page import="java.util.concurrent.TimeUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "ex" uri = "/mainmenu.tld"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">
    <link href="bootstrap4/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
    <title>MainPage</title>
  </head>

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
            <a class="nav-link" href="/GroceryStore/Order"> Orders </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/GroceryStore/Product"> Products </a>
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
          <% 
              TimeUnit.SECONDS.sleep(1);
              Cookie[] u1 = request.getCookies();//musi byc z cookies
              if(u1 != null) { %>
                <button class="nav-item btn btn-secondary">
                    <%
                        out.println(u1[1].getValue());
                    %>
                </button>
                <button class="nav-item btn btn-secondary">
                  Wyloguj
                </button>
          <% 
            }
            else {
             %>           
            <button class="nav-item btn btn-secondary" onclick="location.href='login.jsp';">
              Login
            </button>
            <button class="nav-item btn btn-secondary">
              Rejestracja
            </button>
            <% } %>
        </div>
      </div>
    </nav>
    <p><ex:mainmenu/></p>
    asdadsadadsaassadsadds
</body>
</html>
