/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USUARIO
 */
@WebServlet(urlPatterns = {"/chatServlet"})
public class chatServlet extends HttpServlet {
    //String canales="{canal1}{canal2}{canal3}{canal4}";
    
    String canales="";
    String evento = "";
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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet chatServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet chatServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
    private HashMap<String, HttpServletResponse> clients = new HashMap();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/event-stream; charset=utf-8");
        //String name = request.getParameter("name");
        clients.put(UUID.randomUUID().toString(), response);
        
        while(true){
            try {
                Thread.sleep(5000);
            } catch (Exception e) {
                
            }
        }
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
        //processRequest(request, response);
        response.setContentType("text/plain; charset=utf-8");
        
        evento = request.getParameter("event");
        
        for(HttpServletResponse c: clients.values()){
            
            
            
            if(evento.equals("crearNuevoCanal")){
                String nuevoCanal = request.getParameter("canalNuevo");
                canales+="{"+nuevoCanal+"}";
                //canales+="";
                evento="registroUusario";
                ///////////////////////////////////////////////////////////7777
                /*
                String sTextoBuscado = "{"+nuevoCanal+"[";
                String sTexto = canales;
                int contador = 0;
                while (sTexto.indexOf(sTextoBuscado) > -1) {
                    sTexto = sTexto.substring(sTexto.indexOf(
                            sTextoBuscado)+sTextoBuscado.length(),sTexto.length());
                    contador++; 
                }
                if(contador<1){
                    canales+="{"+nuevoCanal+"}";
                    contador++;
                }
                System.out.println("######### "+contador+" -- "+ request.getParameter("user")+ "Evento :"+evento);
                ////////////////////////////////////////////////////////////7
                
                c.getWriter().write("event: pingCanal\n");
                c.getWriter().write("data: "+canales+" \n\n");
                c.getWriter().flush();
                System.out.println("\n\n----------------\n\n 222 \n\n----------------\n\n");
               */
            }
            
            
            if(evento.equals("registroUusario")){
                c.getWriter().write("event: pingCanal\n");
                c.getWriter().write("data: "+canales+" \n\n");
                c.getWriter().flush();
                System.out.println("\n\n----------------\n\n 1 \n\n----------------\n\n");
            }
            
            
            
            if(evento.equals("mensage")){
                String text = request.getParameter("text");
                String usuario =request.getParameter("user");
                String canal = request.getParameter("canales");
                String mensaje = "data: { \"type\" : \"message\", "
                    + " \"content\" :\""+text+"\", "
                    + " \"user\":\""+usuario+"\", "
                    + " \"event\":\""+canal+"\"}\n\n";
                System.out.println(mensaje + " " + c.toString());
                c.getWriter().write(mensaje);
                c.getWriter().flush();
            
            }
            
        }
        
        
        response.getWriter().write("Done");
    
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
