<%-- 
    Document   : aleatorios
    Created on : 30 de ago. de 2021, 20:19:59
    Author     : kekizero
--%>
<%
    String erro = null;
    int n=10;
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception e){
        erro = "Erro no n: '"+request.getParameter("n")
                +"' não é um número válido";
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


        <hr>
        <h3><a href="index.html">Voltar</a></h3>
        <hr>
        <h3>Números aleatórios</h3>
        <%if(erro==null){%>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            <%for(int i=1; i<=n; i++){%>
            <tr>
                <td><%= i %></td>
                <td><%= ((int)(100*Math.random())) %></td>
            </tr>
            <%}%>
        </table>
        <%}else{%>
            <div style="color: red"><%= erro %></div>
        <%}%>
        <hr/>
        <form>
            <input type="number" name="n" value="<%= n %>"/>
            <input type="submit" value="Gerar"/>
        </form>
    </body>
</html>
