/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.users.model;

/**
 *
 * @author ACER
 */
public class UsersModel {

    private String userId;
    private String password;
    private String salt;
    private String firstName;
    private String middleName;
    private String lastName;
    private String completeAddress;
    private String birthDay;
    private String mobileNumber;
    private String userRole;
    private String loginStatus;
    private String accountStatus;

    public UsersModel() {
    }
    
    public UsersModel(String userId,
            String firstName,
            String middleName,
            String lastName,
            String completeAddress,
            String birthDay,
            String mobileNumber,
            String userRole,
            String loginStatus,
            String accountStatus) {
        this.userId = userId;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.completeAddress = completeAddress;
        this.birthDay = birthDay;
        this.mobileNumber = mobileNumber;
        this.userRole = userRole;
        this.loginStatus = loginStatus;
        this.accountStatus = accountStatus;
    }
    
    public UsersModel(String userId,
            String password,
            String salt,
            String firstName,
            String middleName,
            String lastName,
            String userRole,
            String loginStatus,
            String accountStatus) {
        this.userId = userId;
        this.password = password;
        this.salt = salt;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.userRole = userRole;
        this.loginStatus = loginStatus;
        this.accountStatus = accountStatus;
    }

    public UsersModel(String userId,
            String password,
            String salt,
            String firstName,
            String middleName,
            String lastName,
            String completeAddress,
            String birthDay,
            String mobileNumber,
            String userRole,
            String loginStatus,
            String accountStatus) {
        this.userId = userId;
        this.password = password;
        this.salt = salt;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.userRole = userRole;
        this.loginStatus = loginStatus;
        this.accountStatus = accountStatus;
    }


    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setCompleteAddress(String completeAddress) {
        this.completeAddress = completeAddress;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }

    public String getUserId() {
        return userId;
    }

    public String getPassword() {
        return password;
    }

    public String getSalt() {
        return salt;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public String getLastName() {
        return lastName;
    }
    
    public String getCompleteAddress() {
        return completeAddress;
    }
    
    public String getBirthDay() {
        return birthDay;
    }
    
    public String getMobileNumber() {
        return mobileNumber;
    }

    public String getUserRole() {
        return userRole;
    }

    public String getLoginStatus() {
        return loginStatus;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

}
