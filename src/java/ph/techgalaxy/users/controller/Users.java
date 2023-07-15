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
        System.out.println("Start");
        String inputAction = request.getParameter("verifier");
        System.out.println("Input action: " + inputAction);
        switch (inputAction) {
            case "/users/update/form":
                    try {
                System.out.println("Switch Update");
                showUserUpdateForm(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
            }
            break;
            case "/users/update": {
                try {
                    updateUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            break;

            case "/users/create":
                try {
                System.out.println("Switch Create");
                createUser(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
            }
            break;
            case "/users/delete":
                try {
                System.out.println("Switch Delete");
                deleteUser(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
            }
            break;
            default:
                try {
                System.out.println("Default read");
                viewUsers(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
            }
            break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, IOException {
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
        UsersModel users = new UsersModel(userId, password, salt, firstName, middleName, lastName, userRole, "Valid", "Offline");
        usersDao.createUsers(users);
        request.setAttribute("user", users);
        String message = "Successfully added user: " + userId;
        request.setAttribute("message", message);
        response.sendRedirect(request.getContextPath() + "/userManagement");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userId = request.getParameter("userID");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String completeAddress = request.getParameter("address");
        String birthDay = request.getParameter("birthDate");
        String mobileNumber = request.getParameter("mobileNumber");
        String userRole = request.getParameter("userRole");
        String loginStatus = request.getParameter("loginStatus");
        String accountStatus = request.getParameter("accountStatus");
        UsersDao usersDao = new UsersDao();
        PasswordArgon2SpringSecurity encrypt = new PasswordArgon2SpringSecurity();
        String salt = encrypt.generateAndStoreSalt();
        password = encrypt.encryptPassword(password, salt);
        UsersModel updateUsers = new UsersModel(
                userId, password, salt, firstName, middleName, lastName, completeAddress, birthDay, mobileNumber, userRole, loginStatus, accountStatus);
        usersDao.updateUsers(updateUsers);
        String message = "Successfully updated user: " + userId;
        request.setAttribute("message", message);
        response.sendRedirect(request.getContextPath() + "/users");

    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userId = request.getParameter("userId");
        UsersDao employee = new UsersDao();
        employee.deleteUser(userId);
        System.out.println("Delete From Controller");
        String message = "Successfully deleted user: " + userId;
        request.setAttribute("message", message);
        response.sendRedirect(request.getContextPath() + "/users/read");
    }

    private void viewUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        System.out.println("view users function");
        UsersDao users = new UsersDao();
        ArrayList<UsersModel> usersList = users.getUsersList();
        request.setAttribute("usersList", usersList);
        System.out.println("Users List: " + usersList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/instances/admin/Admin Tools/User Management Page/User Management.jsp");
        rd.forward(request, response);
    }

    private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String usersId = request.getParameter("userId");
        System.out.println("usersId" + usersId);
        UsersDao users = new UsersDao();
        UsersModel usersList = users.getUsersDetails(usersId);
        request.setAttribute("usersList", usersList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/instances/admin/Admin Tools/User Management Page/Update.jsp");
        rd.forward(request, response);
    }
}
