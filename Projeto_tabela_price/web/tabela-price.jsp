<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 22:30:36
    Author     : kekizero
--%>

<%
    String erro = null;
    double saldo_devedor=0, juros = 0;
           int periodo = 0;
    try{
         saldo_devedor = Double.parseDouble(request.getParameter("saldo_devedor"));
         
    }catch(Exception e){
        erro = "Erro no saldo_devedor: '"+request.getParameter("saldo_devedor")+"'";
    }
    
    try{
        juros = Double.parseDouble(request.getParameter("juros"));
    }catch(Exception e){
        erro = "Erro no juros: '"+request.getParameter("juros")+"'";
    }
    
    try{
        periodo = Integer.parseInt(request.getParameter("periodo"));
    }catch(Exception e){
        erro = "Erro no periodo: '"+request.getParameter("periodo")+"'";
    }
    
%>

<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%@include file="../WEB-INF/jspf/header.jspf" %>
    <body>
       
        <h1>Tabela-Price</h1>
        <form action "">
            
              <input type="number" name="saldo_devedor"  required=""  placeholder="Valor do empréstimo"   /> 
              <input type="number" name="juros"  required=""  placeholder="Taxa de juros"   /> 
              <input type="number" name="periodo"  required=""  placeholder="Parcelas"   /> 
            
            <input type="submit" value="Calcular"/>
        </form>
        
      <%  
         
         
         
        
         DecimalFormat df = new DecimalFormat(".##");
         df.setRoundingMode(RoundingMode.UP);
         
         double pmt =(saldo_devedor*(juros/100))/(1-(1/(Math.pow(1+(juros/100), periodo))));
         
         double amortizacao =0;
         
         double conta_juros = juros/100;
         
         
         %>
         <table border="1" >

<tr><th>Periodo</th><hr><th>Saldo Devedor</th><th>Parcela</th><th>Juros</th><th>Amortização</th>
<%
         for(int i=0;i<=periodo;i++)
         {
         
       
 
       
     
       
       if(i==0)
       {
       %></tr><tr><%
                
            %><td><%= i%> </td><%
            %><td><%=df.format(saldo_devedor)%> </td><%
            %><td> </td><%
            %><td> <%=df.format(juros*10)%></td><%
            %><td> </td><%

       amortizacao = pmt - juros*10;
       saldo_devedor = saldo_devedor - amortizacao ;
       juros = (saldo_devedor )* conta_juros;
       
       }
       else
       {
       
       %></tr><tr><%
                
            %><td><%= i%> </td><%
            %><td><%=df.format(saldo_devedor)%> </td><%
            %><td><%=df.format(pmt)%> </td><%
            %><td><%=df.format(juros)%> </td><%
            %><td><%=df.format(amortizacao)%> </td><%
                
       amortizacao = pmt - juros;
       saldo_devedor = saldo_devedor - amortizacao ;
       juros = (saldo_devedor )* conta_juros;
       
       }
       
                 
         }

      %>
    </table>
    </body>

</html>
<%@include file="../WEB-INF/jspf/footer.jspf" %>