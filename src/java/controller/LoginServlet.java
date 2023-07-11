package controller;

import com.google.gson.Gson;
import connection.TableUsers;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;
import models.User;

/*
 * @author nahue
 */

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("apllication/json;charset=UTF-8");
        
        String email = request.getParameter("email"); 
        String password = request.getParameter("password");
        Gson gson = new Gson();
        TableUsers consultasUsuarios = new TableUsers();
        Map<String, Object> resultJson = new LinkedHashMap<>();
        User usuario = null;
        
        try {
            usuario = consultasUsuarios.getUserLogin(email, password);
            if (usuario != null) {
                resultJson = usuario.getUserData();
            }
        } catch (SQLException error){
            response.sendError(404, error.toString());
        }
        
        if (usuario == null) {
            response.sendError(404, "No existe");
        }
        
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(60);
        String json = gson.toJson(resultJson);
        session.setAttribute("User", usuario);
        PrintWriter out = response.getWriter();
        out.println(json);
        response.sendRedirect("pedidos.jsp");
        
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
