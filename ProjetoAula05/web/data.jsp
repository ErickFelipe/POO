<%-- 
    Document   : data
    Created on : 30 de ago. de 2021, 20:20:57
    Author     : kekizero
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h3><a href="index.html">Voltar</a></h3>
        <hr>
        <h3>Data/hora do servidor</h3>
        <%Date now = new Date();%>
        <div><%= now %></div>
    </body>
</html>
