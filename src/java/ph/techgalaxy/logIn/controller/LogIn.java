/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.logIn.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ph.techgalaxy.logIn.dao.LogInDao;
import ph.techgalaxy.logIn.model.LogInModel;

public class LogIn extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            logIn(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LogIn.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LogIn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void logIn(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        System.out.println("Log In Function Checkpoint");
        String userId = request.getParameter("clientUsername");
        String password = request.getParameter("clientLogInPassword");
        LogInDao logInDao = new LogInDao();
        LogInModel loginModel = new LogInModel(userId, password);
        boolean isLoggedIn = logInDao.logIn(loginModel);
        String getRole = logInDao.getRole(userId);
        System.out.println(getRole);
        HttpSession session = request.getSession();
        if (isLoggedIn) {
            System.out.println("True Log In Checkpoint");
            if (getRole.equals("Administrator")) {
                System.out.println("Admin Log In Checkpoint");
                logInDao.changeLogInStatus(userId);
                String message = "Successful Admin Log In";
                request.setAttribute("logInErrorMessage", message);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Home Page.jsp");
                rd.forward(request, response);
            } else if (getRole.equals("Customer")) {
                System.out.println("Customer Log In Checkpoint");
                logInDao.changeLogInStatus(userId);
                String message = "Successful Customer Log In";
                request.setAttribute("logInErrorMessage", message);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/client/Customer Home Page.jsp");
                rd.forward(request, response);
            }
        } else {
            System.out.println("Not Logged In Checkpoint");
            String message = "userId and password do not match.";
            logInDao.addToLogInFailed(userId);
            request.setAttribute("logInErrorMessage", message);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/client/Client Home Page.jsp");
            rd.forward(request, response);
        }
    }
}
