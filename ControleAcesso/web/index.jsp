<%-- 
    Document   : index
    Created on : 27 de set. de 2021, 17:59:16
    Author     : kekizero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Página 1</h2>
        <%if(sessionLoginUser==null && sessionSenha==null){%>
            <div style="color:red">Você não tem permissão para acessar essa página</div>
        <%}else{%>
        <%if(sessionLoginUser==null && sessionSenha==null){%>
            <div>Conteúdo restrito da página 1</div>
          
        
            <%}%>
            <%}%>
    </body>
</html>
