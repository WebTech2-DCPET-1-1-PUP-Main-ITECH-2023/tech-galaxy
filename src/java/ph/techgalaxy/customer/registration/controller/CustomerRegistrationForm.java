/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.customer.registration.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.techgalaxy.customer.registration.dao.CustomerRegistrationFormDao;
import ph.techgalaxy.customer.registration.model.CustomerRegistrationFormModel;

/**
 *
 * @author ACER
 */
public class CustomerRegistrationForm extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/customerRegistrationForm":
                getRegistrationForm(request, response);
                break;
            default:
                showRegistrationForm(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void getRegistrationForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String firstname = request.getParameter("firstName");
        String middlename = request.getParameter("middleName");
        String lastname = request.getParameter("lastName");
        String completeaddress = request.getParameter("address");
        String birthday = request.getParameter("birthDate");
        String mobilenumber = request.getParameter("mobileNumber");
        CustomerRegistrationFormModel customerRegistrationForm = new CustomerRegistrationFormModel(username, firstname, middlename, lastname, completeaddress, birthday, mobilenumber);
        CustomerRegistrationFormDao customerRegistrationFormDao = new CustomerRegistrationFormDao();
        CustomerRegistrationFormModel getCustomerRegisrationForm = customerRegistrationFormDao.getCustomerRegistrationFormDetails(customerRegistrationForm);
        request.setAttribute("customerRegistration", getCustomerRegisrationForm);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/client/Navigation Bar Tab/Customer Registration.jsp");
        rd.forward(request, response);

    }

    private void showRegistrationForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/client/Navigation Bar Tab/Customer Registration.jsp");
        rd.forward(request, response);
    }
}
