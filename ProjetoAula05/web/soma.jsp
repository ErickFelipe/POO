<%-- 
    Document   : soma
    Created on : 30 de ago. de 2021, 20:20:30
    Author     : kekizero
--%>
<%
    String erro = null;
    double n1=0, n2=0, resultado = 0;
    try{
        n1 = Double.parseDouble(request.getParameter("n1"));
    }catch(Exception e){
        erro = "Erro no n1: "+request.getParameter("n1");
    }
    
    try{
        n2 = Double.parseDouble(request.getParameter("n2"));
    }catch(Exception e){
        erro = "Erro no n2: "+request.getParameter("n2");
    }
    
    try{
        resultado = n1+n2;
    }catch(Exception e){
        erro = "Erro ao calcular soma - " + e.getMessage();
    }
%>
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
        <h3>Soma</h3>
        <%if(erro==null){%>
            <h4><%= n1 %> + <%= n2 %> = <%= resultado %></h4>
        <%}else{%>
            <div style="color: red"><%= erro %></div>
        <%}%>
        <hr>
        <form >
            <input type="number" name="n1" required="" value"<%= n1 %>" /> +
            <input type="number" name="n2" required="" value"<%= n2 %>" />
            <input type="submit" value="Calcular"/>
        </form>
    </body>
</html>
