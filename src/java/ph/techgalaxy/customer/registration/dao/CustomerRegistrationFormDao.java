/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.customer.registration.dao;

import ph.techgalaxy.customer.registration.model.CustomerRegistrationFormModel;

/**
 *
 * @author ACER
 */
public class CustomerRegistrationFormDao {

    public CustomerRegistrationFormModel getCustomerRegistrationFormDetails(CustomerRegistrationFormModel customerRegistrationForm) {
        CustomerRegistrationFormModel customerRegistrationFormDetails;
        String username = customerRegistrationForm.getUsername();
        String firstname = customerRegistrationForm.getFirstname();
        String middlename = customerRegistrationForm.getMiddlename();
        String lastname = customerRegistrationForm.getLastname();
        String completeaddress = customerRegistrationForm.getCompleteaddress();
        String birthday = customerRegistrationForm.getBirthday();
        String mobilenumber = customerRegistrationForm.getMobilenumber();
        customerRegistrationFormDetails = new CustomerRegistrationFormModel(username, firstname, middlename, lastname, completeaddress, birthday, mobilenumber);
        System.out.println("RegistrationFormDetails: " + customerRegistrationFormDetails);
        return customerRegistrationFormDetails;
    }
}
