<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
        <!-- <style type="text/css">
            include file="bootstrap4/css/bootstrap.css" %>
        </style> -->
    </head>
    <body>
        <h2>Wyszukiwarka</h2>
        <div class="container">
        <form action="/jakaśstronka.php" method = "POST" class = "jumbotron">
            <div class="form-group">
                <label> Name of category </label>
                <input type="text" id="email" placeholder="Enter category name" name="cat_name"/> 
            </div>
        </form>
        </div>
    </body>
</html>
