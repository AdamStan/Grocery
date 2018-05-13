<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
        <link rel ="stylesheet" href="main.css">
    </head>
    <body>
        <h2 class ="text-center">Add category</h2>
        <div class="container">
            <form action="/GroceryStore/CategoryController" method = "GET">
                <div class="form-group">
                    <label> Name of category </label>
                    <input type="text" placeholder="np. jedzenie" name="cat_insert_name"/>
                    <input type="submit" class="btn btn-default"/>
                </div>
            </form>
        </div>
    </body>
</html>
