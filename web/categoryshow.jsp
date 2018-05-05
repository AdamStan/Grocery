<%@page import="com.store.objects.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">
        <title>Show categries</title>
    </head>
    <body>
        <% ArrayList<Category> categories = (ArrayList) request.getAttribute("categories"); %> 
        <h1 class="text-center">Results of searching</h1>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th> ID </th>
                        <th> category name </th>
                    </tr>
                </thead>
                <% for(Category c: categories) {
                    out.println("<tr><td>" + c.getId() + "</td><td>" + c.getName() + "</td></tr>");
                }
                %>
            </table>
            <div>
                <a href="index.html" class="btn btn-info" >Powrot</a>
            </div>
        </div>
    </body>
</html>
