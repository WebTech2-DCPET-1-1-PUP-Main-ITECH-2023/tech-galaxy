/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.password.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.techgalaxy.password.dao.ChangePasswordDao;
import ph.techgalaxy.password.model.ChangePasswordModel;
import ph.techgalaxy.security.PasswordArgon2SpringSecurity;

/**
 *
 * @author ACER
 */
public class ChangePassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        changePasswordModule(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void changePasswordModule(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userID = request.getParameter("userID");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        try {
            PasswordArgon2SpringSecurity encrypt = new PasswordArgon2SpringSecurity();
            ChangePasswordDao changePasswordDao = new ChangePasswordDao();
            ChangePasswordModel oldPasswordMatch = changePasswordDao.checkIfOldPasswordMatches(userID);
            String passwordTobeChecked = oldPasswordMatch.getPassword();
            String saltToBeChecked = oldPasswordMatch.getSalt();
            boolean isOldPasswordMatch = encrypt.matchPasswords(saltToBeChecked, oldPassword, passwordTobeChecked);
            if (!isOldPasswordMatch) {
                String message = "Old Password is incorrect";
                request.setAttribute("oldPasswordMessage", message);
            } else {
                if (!oldPassword.equals(newPassword)) {
                    String salt = encrypt.generateAndStoreSalt();
                    String hashedNewPassword = encrypt.encryptPassword(newPassword, salt);
                    ChangePasswordModel credentials = new ChangePasswordModel(hashedNewPassword, salt, userID);
                    changePasswordDao.changePassword(credentials);
                    response.sendRedirect(request.getContextPath() + "/clientHomePage");
                } else {
                    String message = "Please do not use previous password";
                    request.setAttribute("message", message);
                    RequestDispatcher rd = getServletContext().getRequestDispatcher(
                            "/changePasswordPage");
                    rd.forward(request, response);
                }

            }
        } catch (NullPointerException e) {
            String message = userID + " not found";
            request.setAttribute("message", message);
            RequestDispatcher rd = getServletContext().getRequestDispatcher(
                    "/changePasswordPage");
            rd.forward(request, response);
        }

    }
}
