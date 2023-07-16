/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.customerregistration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import ph.techgalaxy.customerregistration.model.CustomerRegistrationModel;
import ph.techgalaxy.database.ConnectionPool;

/**
 *
 * @author ACER
 */
public class CustomerRegistrationDao {

    public boolean createCustomer(CustomerRegistrationModel customerRegistrationForm) throws ClassNotFoundException {
        System.out.println("Customer Registration DAO");
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "insert into users("
                + "userID, "
                + "password, "
                + "salt, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "completeAddress, "
                + "birthday, "
                + "mobileNumber, "
                + "accountStatus, "
                + "loginStatus, "
                + "userRole) "
                + "values (?, ?, ?, ?, ?, ?, ?, STR_TO_DATE(?, '%m/%d/%Y'), ?, ?, ?, ?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, customerRegistrationForm.getUsername());
            ps.setString(2, customerRegistrationForm.getPassword());
            ps.setString(3, customerRegistrationForm.getSalt());
            ps.setString(4, customerRegistrationForm.getFirstname());
            ps.setString(5, customerRegistrationForm.getMiddlename());
            ps.setString(6, customerRegistrationForm.getLastname());
            ps.setString(7, customerRegistrationForm.getCompleteaddress());
            ps.setString(8, customerRegistrationForm.getBirthday());
            ps.setString(9, customerRegistrationForm.getMobilenumber());
            ps.setString(10, customerRegistrationForm.getAccountStatus());
            System.out.println(customerRegistrationForm.getAccountStatus());
            ps.setString(11, customerRegistrationForm.getLoginStatus());
            ps.setString(12, customerRegistrationForm.getUserRole());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createEmployee Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }
}
