package ph.techgalaxy.customerregistration.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.techgalaxy.customerregistration.dao.CustomerRegistrationDao;
import ph.techgalaxy.customerregistration.model.CustomerRegistrationModel;
import ph.techgalaxy.security.PasswordArgon2SpringSecurity;

@WebServlet(name = "CustomerRegistration", urlPatterns = {"/customerRegistration"})
public class CustomerRegistration extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        System.out.println(action);
        switch (action) {
            case "/customerRegistration":
            {
                try {
                    getRegistrationForm(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(CustomerRegistration.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
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
            throws ServletException, IOException, ClassNotFoundException {
        String username = request.getParameter("username");
        String requestedPassword = request.getParameter("password");
        PasswordArgon2SpringSecurity encrypt = new PasswordArgon2SpringSecurity();
        String salt = encrypt.generateAndStoreSalt();
        String password = encrypt.encryptPassword(requestedPassword, salt);
        String firstname = request.getParameter("firstName");
        String middlename = request.getParameter("middleName");
        String lastname = request.getParameter("lastName");
        String completeaddress = request.getParameter("address");
        String birthday = request.getParameter("birthDate");
        
        String mobilenumber = request.getParameter("mobileNumber");
        String accountStatus = "valid";
        String loginStatus = "offline";
        String userRole = "Customer";

        CustomerRegistrationModel customerRegistrationForm = new CustomerRegistrationModel(username, password, salt, firstname, middlename, lastname, completeaddress, birthday, mobilenumber, accountStatus, loginStatus, userRole);
        CustomerRegistrationDao customerRegistrationFormDao = new CustomerRegistrationDao();

        customerRegistrationFormDao.createCustomer(customerRegistrationForm);
        String message = "Successfully added customer: " + username;
        request.setAttribute("message",message);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/users");
        rd.forward(request, response);

    }

    private void showRegistrationForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/users");
        rd.forward(request, response);
    }
}
