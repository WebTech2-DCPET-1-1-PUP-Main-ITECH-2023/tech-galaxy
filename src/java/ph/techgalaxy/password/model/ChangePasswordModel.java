/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.password.model;

/**
 *
 * @author ACER
 */
public class ChangePasswordModel {

    private String password;
    private String salt;
    private String userId;

    public ChangePasswordModel(String password, String salt) {
        this.password = password;
        this.salt = salt;
    }

    public ChangePasswordModel(String password, String salt, String userId) {
        this.password = password;
        this.salt = salt;
        this.userId = userId;
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

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
