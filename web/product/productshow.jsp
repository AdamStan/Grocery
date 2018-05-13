<%@page import="com.store.objects.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">
        <title>Show products</title>
    </head>
    <body>
        <% ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("products"); %> 
        <h1 class="text-center">Products</h1>
        <div class="container table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th> ID </th>
                        <th> name </th>
                        <th> categoryName </th>
                        <th> price </th>
                        <th> delete </th>
                    </tr>
                </thead>
                <% for(Product p: products) {
                    out.println("<tr><td>" + p.getId() + "</td><td>" 
                            + p.getName()+ "</td><td>" 
                            + p.getCategory().toString() + "</td><td>" 
                            + p.getPrice().toString() + "</td><td>" 
                            + "<input type='checkbox' name='" + p.toString() + "'></td></tr>");
                }
                %>
            </table>
            <div class="container">
                <a href="index.jsp" class="btn btn-info" >Powrot</a>
                <a href="#" class="btn btn-warning"> Usun zaznaczone </a>
                <a href="#" class="btn btn-success"> Dodaj </a>
            </div>
        </div>
    </body>
</html>
