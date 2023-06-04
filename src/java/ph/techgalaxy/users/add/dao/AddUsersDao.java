/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.users.add.dao;

import ph.techgalaxy.users.add.model.AddUsersModel;

/**
 *
 * @author ACER
 */
public class AddUsersDao {
        public AddUsersModel getAddUsersDetails(AddUsersModel addUsers) {
        AddUsersModel addUsersDetails;
        String userID = addUsers.getUserID();
        String userFirstName = addUsers.getUserFirstName();
        String userMiddleName = addUsers.getUserMiddleName();
        String userLastName = addUsers.getUserLastName();
        String userRole = addUsers.getUserRole();
        addUsersDetails = new AddUsersModel(userID, userFirstName, userMiddleName, userLastName, userRole);
        System.out.println("addProductsDetails: " + addUsersDetails);
        return addUsersDetails;
    }
    
    public String getUserID(){
        String userID = null;
        return userID;
    }
}
