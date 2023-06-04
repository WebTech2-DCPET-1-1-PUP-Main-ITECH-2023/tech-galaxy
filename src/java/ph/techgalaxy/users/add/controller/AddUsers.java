/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.users.add.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.techgalaxy.users.add.dao.AddUsersDao;
import ph.techgalaxy.users.add.model.AddUsersModel;

/**
 *
 * @author ACER
 */
public class AddUsers extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/addUsers":
                getAddProducts(request, response);
                break;
            default:
                showAddProductsForm(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void getAddProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userID = request.getParameter("userID");
        String userFirstName = request.getParameter("userFirstName");
        String userMiddleName = request.getParameter("userMiddleName");
        String userLastName = request.getParameter("userLastName");
        String userRole = request.getParameter("userRole");
        AddUsersModel addUsers = new AddUsersModel(userID, userFirstName, userMiddleName, userLastName, userRole);
        AddUsersDao addUsersDao = new AddUsersDao();
        AddUsersModel getAddUsers = addUsersDao.getAddUsersDetails(addUsers);
        request.setAttribute("addUsers", getAddUsers);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/User Management Page/User Management.jsp");
        rd.forward(request, response);

    }

    private void showAddProductsForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/User Management Page/User Management.jsp");
        rd.forward(request, response);
    }

}
