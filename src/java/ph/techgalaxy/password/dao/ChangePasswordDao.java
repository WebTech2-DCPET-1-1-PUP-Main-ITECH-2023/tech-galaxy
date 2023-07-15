/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.password.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import static jdk.nashorn.internal.runtime.Debug.id;
import ph.techgalaxy.database.ConnectionPool;
import ph.techgalaxy.password.model.ChangePasswordModel;
import ph.techgalaxy.users.model.UsersModel;

/**
 *
 * @author ACER
 */
public class ChangePasswordDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void changePassword(ChangePasswordModel credentials) {
        String query = "UPDATE users SET password = ?, salt = ? WHERE userId = ?";
        try {
        conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, credentials.getPassword());
            ps.setString(2, credentials.getSalt());
            ps.setString(3, credentials.getUserId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("updateUsers Error: " + e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ChangePasswordDao.class.getName()).log(Level.SEVERE, null, ex);
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
    }

    public ChangePasswordModel checkIfOldPasswordMatches(String userId) {
        ChangePasswordModel changePassword = null;
        boolean isMatch = false;
        String query = "SELECT password, salt "
                + "FROM users "
                + "WHERE userId = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
            rs = ps.executeQuery();
            if (rs.next()) {
                String password = rs.getString("password");
                String salt = rs.getString("salt");
                changePassword = new ChangePasswordModel(password, salt);
            }
        } catch (SQLException e) {
            System.out.println("getUsersDetails Error: " + e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ChangePasswordDao.class.getName()).log(Level.SEVERE, null, ex);
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
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }

        return changePassword;
    }
}
