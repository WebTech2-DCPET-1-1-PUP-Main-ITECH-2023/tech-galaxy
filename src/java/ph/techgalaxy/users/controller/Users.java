/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.users.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.techgalaxy.security.PasswordArgon2SpringSecurity;
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
        try {
            String action = request.getServletPath();
            switch (action) {
                case "/users/create/form":
                    showUserCreateForm(request, response);
                    break;
                case "/users/create":
                    createUser(request, response);
                    break;
                case "/users/update/form":
                    showUserUpdateForm(request, response);
                    break;
                case "/users/update":
                    updateUser(request, response);
                    break;
                case "/users/delete":
                    deleteUser(request, response);
                    break;
                default:
                    viewUsers(request, response);
                    break;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void showUserCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/addUsers");
        rd.forward(request, response);
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException, ServletException {
        String userId = request.getParameter("userID");
        PasswordArgon2SpringSecurity encrypt = new PasswordArgon2SpringSecurity();
        String salt = encrypt.generateAndStoreSalt();
        String password = "123";
        password = encrypt.encryptPassword(password, salt);
        String firstName = request.getParameter("userFirstName");
        String middleName = request.getParameter("userMiddleName");
        String lastName = request.getParameter("userLastName");
        String userRole = request.getParameter("userRole");

        UsersDao usersDao = new UsersDao();
        UsersModel users = new UsersModel(userId, password, salt, firstName, middleName, lastName, userRole, "Offline", "Valid");
        boolean successful = usersDao.createUsers(users);
        request.setAttribute("user", users);
        if (successful) {
        String message = userId + " has been added.";
        request.setAttribute("message", message);
        } else {
        String message = userId + " already exists";
        request.setAttribute("message", message);
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/users/read");
        rd.forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userId = request.getParameter("userID");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String completeAddress = request.getParameter("address");
        String birthDay = request.getParameter("birthDate");
        String mobileNumber = request.getParameter("mobileNumber");
        String userRole = request.getParameter("userRole");
        UsersDao usersDao = new UsersDao();
        UsersModel updateUsers = new UsersModel(
                userId, firstName, middleName, lastName, completeAddress, birthDay, mobileNumber, userRole);
        usersDao.updateUsers(updateUsers);
        String message = userId + " has been updated.";
        request.setAttribute("message", message);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/users/read");
        rd.forward(request, response);

    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userId = request.getParameter("userId");
        UsersDao employee = new UsersDao();
        employee.deleteUser(userId);
        System.out.println("Delete From Controller");
        String message = userId + " has been deleted.";
        request.setAttribute("message", message);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/users/read");
        rd.forward(request, response);
    }

    private void viewUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        System.out.println("view users function");
        UsersDao users = new UsersDao();
        ArrayList<UsersModel> usersList = users.getUsersList();
        request.setAttribute("usersList", usersList);
        System.out.println("Users List: " + usersList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/userManagement");
        rd.forward(request, response);
    }

    private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String usersId = request.getParameter("userId");
        System.out.println("usersId" + usersId);
        UsersDao users = new UsersDao();
        UsersModel usersList = users.getUsersDetails(usersId);
        request.setAttribute("usersList", usersList);
        String message = "Successfully updated user details.";
        request.setAttribute("message", message);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/instances/admin/Admin Tools/User Management Page/Update.jsp");
        rd.forward(request, response);
    }
}
