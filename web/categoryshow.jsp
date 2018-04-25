<%@page import="com.store.objects.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show categries</title>
    </head>
    <body>
        <% ArrayList<Category> categories = (ArrayList) request.getAttribute("categories"); %> 
        <h1>Results of searching</h1>
        <div>
            <p><% for(Category c: categories) {
                out.println(c.getName() + " | " + c.getId() + " ; ");
            }
            %></p>
        </div>
    </body>
</html>
