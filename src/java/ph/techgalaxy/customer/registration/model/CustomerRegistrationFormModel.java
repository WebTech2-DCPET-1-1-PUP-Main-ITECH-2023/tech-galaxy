/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.customer.registration.model;

/**
 *
 * @author ACER
 */
public class CustomerRegistrationFormModel {

    private String username;
    private String firstname;
    private String middlename;
    private String lastname;
    private String completeaddress;
    private String birthday;
    private String mobilenumber;

    public CustomerRegistrationFormModel(
            String username,
            String firstname,
            String middlename,
            String lastname,
            String completeaddress,
            String birthday,
            String mobilenumber ) {
        this.username = username;
        this.firstname = firstname;
        this.middlename = middlename;
        this.lastname = lastname; 
        this.completeaddress = completeaddress;
        this.birthday = birthday;
        this.mobilenumber = mobilenumber;
            
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String Username) {
        this.username = Username;
    }
    
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String Firstname) {
        this.firstname = Firstname;
    }

    public String getMiddlename() {
        return middlename;
    }

    public void setMiddlename(String Middlename) {
        this.middlename = Middlename;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String Lastname) {
        this.lastname = Lastname;
    }

    public String getCompleteaddress() {
        return completeaddress;
    }

    public void setCompleteaddress(String Completeaddress) {
        this.completeaddress = Completeaddress;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String Birthday) {
        this.birthday = Birthday;
    }

    public String getMobilenumber() {
        return mobilenumber;
    }

    public void setMobilenumber(String Mobilenumber) {
        this.mobilenumber = Mobilenumber;
    }
}
