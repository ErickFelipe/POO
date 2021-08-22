/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kekizero
 */
@WebServlet(name = "MathServlet", urlPatterns = {"/MathServlet.html"})
public class MathServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet pagina02</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h2>Math Servlet</h2>");
            out.println(" <form action=''>");
            out.println(" <input type='number'  name='n1' value='1' step='0.1'/>  ");
            out.println(" <select name='operacao' id='operacao'> ");
            out.println(" <option value='op'>  </option> ");
            out.println(" <option value='soma'> + </option> ");
            out.println(" <option value='subtracao'> - </option> ");
            out.println(" <option value='multiplicacao'> x </option> ");
            out.println(" <option value='divisao'> / </option> ");
            out.println(" </select> ");
            
            out.println(" <input type='number'  name='n2' value='1' step='0.1' />");
            out.println(" <input type='submit' value='Calcular'/> ");
            out.println(" </form> ");
            String Operacao = request.getParameter("operacao");
            
            try{
                double n1 = Double.parseDouble(request.getParameter("n1"));
                out.println("<h4><b>N1</b>: "+n1+"</h4>");
                double n2 = Double.parseDouble(request.getParameter("n2"));
                out.println("<h4><b>N2</b>: "+n2+"</h4>");
                out.println("<hr/>");
                
                if(Operacao.equals("soma"))
                {
                out.println("<h4><b>SOMA</b>: "+(n1+n2)+"</h4>");
                }
                
                if(Operacao.equals("subtracao"))
                {
                out.println("<h4><b>SUBTRAÇÃO</b>: "+(n1-n2)+"</h4>");
                }
                
                if(Operacao.equals("multiplicacao"))
                {
                out.println("<h4><b>MULTIPLICAÇÃO</b>: "+(n1*n2)+"</h4>");
                }
                
                if(Operacao.equals("divisao"))
                {
                out.println("<h4><b>DIVISÃO</b>: "+(n1/n2)+"</h4>");
                }
                
                if((Operacao.equals("op")))
                {
                out.println("<p style='color:red'> Escolha uma operação </p>");
                }
                
            }catch(Exception ex){
                
            }
            
            out.println("<h3><a href='index.html'>Voltar</a></h3>");
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
