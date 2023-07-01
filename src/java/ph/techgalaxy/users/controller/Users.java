/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.users.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.techgalaxy.users.dao.UsersDao;
import ph.techgalaxy.users.model.UsersModel;

/**
 *
 * @author ACER
 */
public class Users extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/users":
                getProducts(request, response);
                break;
            case "/users/login":
                login(request, response);
            break;
            default:
                showProductsForm(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void logIn(HttpServletRequest request, HttpServletResponse response) {
        
    }
    private void getProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userID = request.getParameter("userID");
        String userFirstName = request.getParameter("userFirstName");
        String userMiddleName = request.getParameter("userMiddleName");
        String userLastName = request.getParameter("userLastName");
        String userRole = request.getParameter("userRole");
        UsersModel users = new UsersModel(userID, userFirstName, userMiddleName, userLastName, userRole);
        
        UsersDao usersDao = new UsersDao();
        UsersModel getUsers = usersDao.getUsersDetails(users);
        request.setAttribute("users", getUsers);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/User Management Page/User Management.jsp");
        rd.forward(request, response);

    }

    private void showProductsForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/User Management Page/User Management.jsp");
        rd.forward(request, response);
    }
}
