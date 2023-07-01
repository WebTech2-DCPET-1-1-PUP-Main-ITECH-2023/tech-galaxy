/*
     * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
     * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.customerregistration.model;

/**
 *
 * @author ACER
 */
public class CustomerRegistrationModel {

    private String username;
    private String password;
    private String salt;
    private String firstname;
    private String middlename;
    private String lastname;
    private String completeaddress;
    private String birthday;
    private String mobilenumber;
    private String accountStatus;
    private String loginStatus;
    private String userRole;

    public CustomerRegistrationModel(
            String username,
            String password,
            String salt,
            String firstname ,
            String middlename ,
            String lastname ,
            String completeaddress ,
            String birthday ,
            String mobilenumber ,
            String accountStatus ,
            String loginStatus ,
            String userRole

    
        ) {
            this.username = username;
            this.password = password;
            this.salt = salt;
        this.firstname = firstname;
        this.middlename = middlename;
        this.lastname = lastname;
        this.completeaddress = completeaddress;
        this.birthday = birthday;
        this.mobilenumber = mobilenumber;
        this.accountStatus = accountStatus;
        this.loginStatus = loginStatus;
        this.userRole = userRole;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getMiddlename() {
        return middlename;
    }

    public void setMiddlename(String middlename) {
        this.middlename = middlename;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getCompleteaddress() {
        return completeaddress;
    }

    public void setCompleteaddress(String completeaddress) {
        this.completeaddress = completeaddress;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getMobilenumber() {
        return mobilenumber;
    }

    public void setMobilenumber(String mobilenumber) {
        this.mobilenumber = mobilenumber;
    }
    
    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }
    
    public String getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }
    
    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
}
