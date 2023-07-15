/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.logout.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ph.techgalaxy.logIn.dao.LogInDao;
import ph.techgalaxy.logout.dao.LogOutDao;

/**
 *
 * @author ACER
 */
public class LogOut extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            logOut(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LogOut.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void logOut(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, ServletException, IOException {
        LogOutDao dao = new LogOutDao();
        String userId = dao.checkIfUserIsOnline();
        dao.setUserToOffline(userId);
        System.out.println("Logging out");
        HttpSession session = request.getSession();
        session.invalidate();
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/client/Client Home Page.jsp");
        rd.forward(request, response);
    }

}
