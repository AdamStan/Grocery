<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Category</title>
        <link rel ="stylesheet" href="main.css">
    </head>
    <body>
        <h2 class ="text-center">Search Category</h2>
        <div class="container">
        <form action="/GroceryStore/CategoryController" method = "GET" class = "jumbotron">
            <div class="form-group">
                <div class = "text-center">
                    <p> <label class="title"> Name of category </label>
                        <input name="cat_name" type="text" id="text" placeholder="Enter category name" /> 
                    </p>
                    <p><input type="submit" class="btn btn-default"/> </p>
                </div>
            </div>
        </form>
        </div>
    </body>
</html>
