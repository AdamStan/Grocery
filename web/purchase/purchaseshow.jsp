<%@page import="com.store.objects.Purchase"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">
        <title>Show Purchases</title>
    </head>
    <body>
        <% ArrayList<Purchase> purchases = (ArrayList<Purchase>) request.getAttribute("purchases"); %> 
        <h1 class="text-center">Purchases</h1>
        <div class="container table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th> ID </th>
                        <th> product name </th>
                        <th> amount </th>
                        <th> order </th>
                        <th> delete </th>
                    </tr>
                </thead>
                <% for(Purchase p: purchases) {
                    out.println("<tr><td>" + p.getId() + "</td><td>" 
                            + p.getProduct().getName() + "</td><td>" 
                            + p.getAmount() + "</td><td>" 
                            + p.getOrder().toString() + "</td><td>" 
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
