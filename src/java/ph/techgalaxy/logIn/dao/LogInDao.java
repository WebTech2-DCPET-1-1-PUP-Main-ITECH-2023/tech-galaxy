/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.logIn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import ph.techgalaxy.database.ConnectionPool;
import ph.techgalaxy.logIn.model.LogInModel;
import ph.techgalaxy.security.PasswordArgon2SpringSecurity;
import ph.techgalaxy.users.model.UsersModel;

/**
 *
 * @author ACER
 */
public class LogInDao {

    public boolean logIn(LogInModel logInCredentials) throws ClassNotFoundException, SQLException {
        System.out.println("Log In Boolean Checkpoint");
        String userID = logInCredentials.getUserID();
        String password = logInCredentials.getPassword();
        String saltFromDatabase = getSaltFromDatabase(userID);
        System.out.println(password);
        String userPassword = getPasswordFromDatabase(userID, password);
        PasswordArgon2SpringSecurity checkPassword = new PasswordArgon2SpringSecurity();
        boolean isLoggedIn = checkPassword.matchPasswords(saltFromDatabase, password, userPassword);
        System.out.println(isLoggedIn);
        return isLoggedIn;
    }

    public String getSaltFromDatabase(String userID) throws ClassNotFoundException {
        System.out.println("Get Salt Checkpoint");
        String retrievedSalt = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select salt from users "
                + "where userId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            if (rs.next()) {
                retrievedSalt = rs.getString("salt");
                System.out.println("Salt found!");
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
        System.out.println(retrievedSalt);
        return retrievedSalt;
    }

    public String getPasswordFromDatabase(String userID, String password) throws SQLException, ClassNotFoundException {
        System.out.println("Check Password Checkpoint");
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String userPassword = null;
        String query = ""
                + "select password from users "
                + "where userId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            if (rs.next()) {
                userPassword = rs.getString("password");
                System.out.println("Password found on Database!");
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
        return userPassword;
    }

    public String getRole(String userID) throws SQLException, ClassNotFoundException {
        System.out.println("Get Role Checkpoint");
        String userRole = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select userRole from users "
                + "where userId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            if (rs.next()) {
                userRole = rs.getString("userRole");
                System.out.println("Role found!");
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
        System.out.println(userRole);
        return userRole;
    }

    public void changeLogInStatus(String userId) throws ClassNotFoundException {
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "UPDATE users SET loginStatus = ? WHERE userId = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "Online");
            ps.setString(2, userId);
            ps.executeUpdate();
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

    public void addToLogInFailed(String userId) throws SQLException, ClassNotFoundException {
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "UPDATE users SET logInFailed = logInFailed + 1 WHERE userId = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
            ps.executeUpdate();
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
