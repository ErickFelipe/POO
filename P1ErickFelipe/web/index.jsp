<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 14:41:57
    Author     : kekizero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <%@include file="WEB-INF\jspf\header.jspf" %>
        <%
            String mensagem = "";
            if(usersOnline.isEmpty()){
            mensagem = "Nao ha nenhum usuario logado";
            }else if(usersOnline.size()==1){
            mensagem = "Há 1 usuario logado";
            }else{
            mensagem = "Há "+usersOnline.size()+" usuario logado";
            }
            if(isLogged){
        %>
        <table>
            <thead>
                <tr>
                    <th>
                        Usuarios Online
                    </th>
                </tr>
            </thead>
            <%for(String user: usersOnline){%>
            <tr>
                <td>
                    <%=user%>
                </td>
            </tr>
            <%}%>
        </table>
        <%}%>
        <h1><%=mensagem%></h1>
    </body>
</html>
