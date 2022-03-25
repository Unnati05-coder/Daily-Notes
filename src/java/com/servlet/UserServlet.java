/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.DAO.UserDao;
import com.Db.Dbconnector;
import com.User.UserDetails;
import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
public class UserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("line 1");
        response.setContentType("text/html;charset=UTF-8");
         System.out.println("line 2");
        String name=request.getParameter("fname");
        String email=request.getParameter("uemail");
        String password=request.getParameter("upassword");
        UserDetails us=new UserDetails();
        us.setName(name);
        us.setEmail(email);
        us.setPassword(password);
        UserDao dao=new UserDao(Dbconnector.getConn());
        boolean f=dao.addUser(us);
       HttpSession session;
        if(f)
        {
            session=request.getSession();
            session.setAttribute("reg-success","Registration sucessfully....");
            response.sendRedirect("register.jsp");
        }
        else{
              session=request.getSession();
               session.setAttribute("failed-msg","Something went wrong in server");
                response.sendRedirect("register.jsp");
        }
        
       
    }
    public void destroy() {
       Dbconnector.closeconnection(); //To change body of generated methods, choose Tools | Templates.
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
