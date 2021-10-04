<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 19:50:58
    Author     : rlarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página 2 - SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página 2</h2>
        <%if(sessionName==null){%>
            <div style="color:red">Você não tem permissão para acessar essa página</div>
        <%}else{%>
            <div>Conteúdo restrito da página 2</div>
        <%}%>
    </body>
</html>
