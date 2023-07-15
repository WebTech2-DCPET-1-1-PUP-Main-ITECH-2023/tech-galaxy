/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.logout.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import ph.techgalaxy.database.ConnectionPool;

/**
 *
 * @author ACER
 */
public class LogOutDao {

    public String checkIfUserIsOnline() throws ClassNotFoundException {
        String userId = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT userId FROM users WHERE loginStatus = 'Online'";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                userId = rs.getString("userId");
                System.out.println("loginStatus found on Database!");
            }
        } catch (SQLException e) {
            System.out.println("getUsersDetails Error: " + e);
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
        return userId;
    }

    public void setUserToOffline(String userId) throws ClassNotFoundException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "UPDATE users SET loginStatus = ? WHERE userId = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "Offline");
            ps.setString(2, userId);
            ps.executeUpdate();
            System.out.println("Set to offline");
        } catch (SQLException e) {
            System.out.println("updateEmployee Error: " + e);
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
}
