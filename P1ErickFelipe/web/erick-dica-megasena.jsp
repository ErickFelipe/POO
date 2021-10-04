<%-- 
    Document   : erick-dica-megasena
    Created on : 4 de out. de 2021, 14:54:41
    Author     : kekizero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mega Sena</title>
    </head>
    <body>
        <%@include file="WEB-INF\jspf\header.jspf" %>
         <%if(isLogged){%>
         <table>
             <thead>
                 <tr>
                     <th>
                         Numeros da Mega Sena
                     </th>
                 </tr>
             </thead>
             <%for(Integer number: numbers){%>
             <tr>
                 <td><%=number%></td>
             </tr>
             <%}%>
         </table>
         <%}else{%>
        <h1>Voce nao tem permissao para ver o conteudo, por favor, realize o login</h1>
        <a href="index.jsp">Voltar para a Pagina home</a>
        <%}%>
    </body>
</html>
