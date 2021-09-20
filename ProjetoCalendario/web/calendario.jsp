<%-- 
    Document   : calendario
    Created on : 30 de ago. de 2021, 20:19:29
    Author     : kekizero
--%> 
<%
    String erro = null;
    int ano=0,mes=0;
    try{
        ano = Integer.parseInt(request.getParameter("ano"));
    }catch(Exception e){
        erro = "Erro no ano: '"+request.getParameter("ano")+"'";
    }
    
    try{
        mes = Integer.parseInt(request.getParameter("mes"));
    }catch(Exception e){
        erro = "Erro no mes: '"+request.getParameter("mes")+"'";
    }
    
%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendario</title>
    </head>
    <body>

       
        <h2>Erick Felipe: RA 1290481822011</h2>
        <hr>
        <h3>Calendário</h3>
<hr>
                <form action"">
                    <select name="mes" >
	<option>Escolha o mês</option>
        
	<option value="0">Janeiro</option>
	<option value="01">Fevereiro</option>
	<option value="02">Março</option>
	<option value="03">Abril</option>
	<option value="04">Maio</option>
	<option value="05">Junho</option>
	<option value="06">Julho</option>
	<option value="07">Agosto</option>
	<option value="08">Setembro</option>
	<option value="09">Outubro</option>
	<option value="10">Novembro</option>
	<option value="11">Dezembro</option>
        
</select>
            <input type="number" name="ano"  required=""  placeholder="Digite o ano"   /> 
            
            <input type="submit" value="Calcular"/>
        </form>
                <%
                    
                    if(erro!=null)
                    {
                %><div style="color: red"><%= erro %></div><%
                    }
else{
                    Calendar cal = Calendar.getInstance();
                 cal.set(ano,mes,1);
               
                int diasemana = cal.get(Calendar.DAY_OF_WEEK);
String nomemes="";
                if(mes==0){nomemes="Janeiro";}
                if(mes==1){nomemes="Fevereiro";}
                if(mes==2){nomemes="Março";}
                if(mes==3){nomemes="Abril";}
                if(mes==4){nomemes="Maio";}
                if(mes==5){nomemes="Junho";}
                if(mes==6){nomemes="Julho";}
                if(mes==7){nomemes="Agosto";}
                if(mes==8){nomemes="Setembro";}
                if(mes==9){nomemes="Outubro";}
                if(mes==10){nomemes="Novembro";}
                if(mes==11){nomemes="Dezembro";}
               

            %>
    
        <table border="1" >
<tr><th colspan="4"><%=nomemes%></th><th colspan="3"><%=ano%></th></tr>
<tr><th>DOM</th><hr><th>SEG</th><th>TER</th><th>QUA</th><th>QUI</th><th>SEX</th><th>SAB</th></tr>

        <hr/>
        <form>
            <%
            int mes28=0,mes31=0,mes30=0,calc=0;
            if(mes==1)
            {
                if((ano%4==0 && ano%100!=0) || (ano%400==0))
                {
                mes28=30;
                }
                else
                {
                mes28=29;
                }
                
            }
            else if(mes==0||mes==2||mes==4||mes==6||mes==7||mes==9||mes==11)
            {
                mes31 =32;
            }
            else
            {
                mes30 =31;
            }
            calc=mes28+mes31+mes30;
            
            if(diasemana==1)
            {
                for(int i=1;i<calc;i++)
                {
                %><td><%=i%> </td><%
                    if(i%7==0)
                    {
                %></tr><tr><%
                    }
                }
            }
            else if(diasemana==2)
            {
                for(int i=1;i<calc+1;i++)
                {
                    if(diasemana>i)
                    {
                    %><td> </td><%
                    }
                    else
                    {
                %><td><%=i-1%> </td><%
                        if(i%7==0)
                        {
                    %></tr><tr><%
                        }
                    }
                }
            }
            else if(diasemana==3)
            {
                for(int i=1;i<calc+2;i++)
                {
                    if(diasemana>i)
                    {
                    %><td> </td><%
                    }
                    else
                    {
                %><td><%=i-2%> </td><%
                        if(i%7==0)
                        {
                    %></tr><tr><%
                        }
                    }
                }
            }
            else if(diasemana==4)
            {
                for(int i=1;i<calc+3;i++)
                {
                    if(diasemana>i)
                    {
                    %><td> </td><%
                    }
                    else
                    {
                %><td><%=i-3%> </td><%
                        if(i%7==0)
                        {
                    %></tr><tr><%
                        }
                    }
                }
            }
            else if(diasemana==5)
            {
                for(int i=1;i<calc+4;i++)
                {
                    if(diasemana>i)
                    {
                    %><td> </td><%
                    }
                    else
                    {
                %><td><%=i-4%> </td><%
                        if(i%7==0)
                        {
                    %></tr><tr><%
                        }
                    }
                }
            }
            else if(diasemana==6)
            {
                for(int i=1;i<calc+5;i++)
                {
                    if(diasemana>i)
                    {
                    %><td> </td><%
                    }
                    else
                    {
                %><td><%=i-5%> </td><%
                        if(i%7==0)
                        {
                    %></tr><tr><%
                        }
                    }
                }
            }
            else if(diasemana==7)
            {
                for(int i=1;i<calc+6;i++)
                {
                    if(diasemana>i)
                    {
                    %><td> </td><%
                    }
                    else
                    {
                %><td><%=i-6%> </td><%
                        if(i%7==0)
                        {
                    %></tr><tr><%
                        }
                    }
                }
            }
            %>
            </table>
        </form>
          <% } %>
    </body>
</html>
