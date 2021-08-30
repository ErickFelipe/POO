<%-- 
    Document   : tabuada
    Created on : 30 de ago. de 2021, 20:19:29
    Author     : kekizero
--%>
<%
    String erro = null;
    int n=100;
    try{
        n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception e){
        erro = "Erro ao ler parâmetro n: '"+request.getParameter("n")
                +"' não é um número inteiro válido";
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
        <h3>Tabuada</h3>
        <%if(erro==null){%>
        <table>
            <%for(int i=1; i<=10; i++){%>
            <tr>
                <td><%= n %></td>
                <td>x</td>
                <td><%= i %></td>
                <td>=</td>
                <td><%= (n*i) %></td>
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
