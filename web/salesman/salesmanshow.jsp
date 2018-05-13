<%@page import="com.store.objects.Salesman"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">
        <title>Show salesmen</title>
    </head>
    <body>
        <% ArrayList<Salesman> salesmen = (ArrayList<Salesman>) request.getAttribute("salesmen"); %> 
        <h1 class="text-center">Salesmen</h1>
        <div class="container table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th> ID </th>
                        <th> name </th>
                        <th> surname </th>
                        <th> delete </th>
                    </tr>
                </thead>
                <% for(Salesman s: salesmen) {
                    out.println("<tr><td>" + s.getId() + "</td><td>" 
                            + s.getName() + "</td><td>" 
                            + s.getSurname() + "</td><td>" 
                            + "<input type='checkbox' name='" + s.toString() + "'></td></tr>");
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
