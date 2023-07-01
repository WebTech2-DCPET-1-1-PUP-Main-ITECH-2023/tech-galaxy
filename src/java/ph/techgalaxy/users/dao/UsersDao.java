/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.users.dao;

import ph.techgalaxy.users.model.UsersModel;

/**
 *
 * @author ACER
 */
public class UsersDao {
    public UsersModel getUsersDetails(UsersModel user) {
        UsersModel usersDetails;
        String userID = user.getUserID();
        String userFirstName = user.getUserFirstName();
        String userMiddleName = user.getUserMiddleName();
        String userLastName = user.getUserLastName();
        String userRole = user.getUserRole();
        usersDetails = new UsersModel(userID, userFirstName, userMiddleName, userLastName, userRole);
        System.out.println("addProductsDetails: " + usersDetails);
        return usersDetails;
    }
    
    public String getUserID(){
        String userID = null;
        return userID;
    }
}
