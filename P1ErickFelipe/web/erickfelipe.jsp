<%-- 
    Document   : erickfelipe
    Created on : 4 de out. de 2021, 14:49:43
    Author     : kekizero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ErickFelipe</title>
    </head>
    <body>
         <%@include file="WEB-INF\jspf\header.jspf" %>
         <%if(isLogged){%>
         <h1>Erick Felipe de Souza Silva</h1>
         <h2>RA: 1290481822011</h2>
         <h2>Ingressei no 2º semestre</h2>
         <a href="https://www.github.com/ErickFelipe" target="_blank">Meu GitHub</a>
         <table>
                <thead>
                    <tr>
                        <th>Cursos</th>
                        <th>Professores</th>
                    </tr>
                </thead>
                
                    <tr>
                        <td>Empreendedorismo</td>
                        <td>JOSE AUGUSTO THEODOSIO PAZETTI</td>
                    </tr>
                    <tr>
                        <td>Estágio Supervisionado em Análise e Desenvolvimento de Sistemas</td>
                        <td>FERNANDA SCHIMITZ DE ALMEIDA LARGUESA</td>
                    </tr>
                    <tr>
                        <td>Estruturas de Dados</td>
                        <td>FERNANDA SCHIMITZ DE ALMEIDA LARGUESA</td>
                    </tr>
                    <tr>
                        <td>Programação Orientada a Objetos</td>
                        <td>RICARDO PUPO LARGUESA</td>
                    </tr>
                    <tr>
                        <td>Tópicos Especiais em Informática (Escolha 2)</td>
                        <td>JÔNATAS CERQUEIRA DIAS</td>
                    </tr>
                    <tr>
                        <td>Gestão e Governança de Tecnologia da Informação</td>
                        <td>FERNANDA SCHIMITZ DE ALMEIDA LARGUESA</td>
                    </tr>
                    <tr>
                        <td>Programação Linear e Aplicações</td>
                        <td>JÔNATAS CERQUEIRA DIAS</td>
                    </tr>
   		    <tr>
                        <td>Trabalho de Graduação II</td>
                        <td>JÔNATAS CERQUEIRA DIAS</td>
                    </tr>
                
            </table>
         <%}else{%>
        <h1>Voce nao tem permissao para ver o conteudo, por favor, realize o login</h1>
        <a href="index.jsp">Voltar para a Pagina home</a>
        <%}%>
    </body>
</html>
