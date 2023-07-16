/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.users.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import ph.techgalaxy.database.ConnectionPool;
import ph.techgalaxy.users.model.UsersModel;

/**
 *
 * @author ACER
 */
public class UsersDao {

    public ArrayList<UsersModel> getUsersList() throws ClassNotFoundException {
        ArrayList<UsersModel> usersList = new ArrayList<>();
        System.out.println("get user list");
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from users";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                UsersModel users = new UsersModel();
                users.setUserId(rs.getString("userId"));
                users.setFirstName(rs.getString("firstName"));
                users.setMiddleName(rs.getString("middleName"));
                users.setLastName(rs.getString("lastName"));
                users.setCompleteAddress(rs.getString("completeAddress"));
                String birthDay = rs.getString("birthday");
                LocalDate date = LocalDate.parse(birthDay);
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
                String formattedDate = date.format(formatter);
                users.setBirthDay(formattedDate);
                users.setMobileNumber(rs.getString("mobileNumber"));
                users.setAccountStatus(rs.getString("accountStatus"));
                users.setLoginStatus(rs.getString("loginStatus"));
                users.setUserRole(rs.getString("userRole"));
                usersList.add(users);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getUsersList Error: " + e);
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
        return usersList;
    }

    public boolean createUsers(UsersModel users) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "insert into users ("
                + "userId, "
                + "password,"
                + "salt, "
                + "firstName, "
                + "middleName, "
                + "lastName, "
                + "birthday, "
                + "accountStatus,"
                + "loginStatus, "
                + "userRole) "
                + "values (?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, users.getUserId());
            ps.setString(2, users.getPassword());
            ps.setString(3, users.getSalt());
            ps.setString(4, users.getFirstName());
            ps.setString(5, users.getMiddleName());
            ps.setString(6, users.getLastName());
            ps.setString(7, "2000-01-01");
            ps.setString(8, users.getAccountStatus());
            ps.setString(9, users.getLoginStatus());
            ps.setString(10, users.getUserRole());
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

    public boolean updateUsers(UsersModel users) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "update users set "
                + "firstName = ?, "
                + "middleName = ?, "
                + "lastName = ?, "
                + "completeAddress = ?, "
                + "birthday = ?, "
                + "mobileNumber = ?, "
                + "userRole = ? "
                + "where userId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, users.getFirstName());
            ps.setString(2, users.getMiddleName());
            ps.setString(3, users.getLastName());
            ps.setString(4, users.getCompleteAddress());
            LocalDate date = LocalDate.parse(users.getBirthDay(), DateTimeFormatter.ofPattern("MM/dd/yyyy"));
            String formattedDate = date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            ps.setString(5, formattedDate);
            ps.setString(6, users.getMobileNumber());
            ps.setString(7, users.getUserRole());
            ps.setString(8, users.getUserId());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateUsers Error: " + e);
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

    public UsersModel getUsersDetails(String id) throws ClassNotFoundException {
        System.out.println("Get Users Details");
        UsersModel usersDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT userId, firstName, middleName, lastName, completeAddress, birthday, mobileNumber, accountStatus, loginStatus, userRole "
                + "FROM users "
                + "WHERE userId = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                String userId = rs.getString("userId");
                System.out.println(userId);
                String firstName = rs.getString("firstName");
                String middleName = rs.getString("middleName");
                String lastName = rs.getString("lastName");
                String completeAddress = rs.getString("completeAddress");
                String birthDay = rs.getString("birthday");
                System.out.println(birthDay);
                LocalDate date = LocalDate.parse(birthDay);
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
                String formattedDate = date.format(formatter);
                System.out.println(formattedDate);
                String mobileNumber = rs.getString("mobileNumber");
                String accountStatus = rs.getString("accountStatus");
                String loginStatus = rs.getString("loginStatus");
                String userRole = rs.getString("userRole");
                usersDetails = new UsersModel(userId, firstName, middleName, lastName, completeAddress, formattedDate, mobileNumber, userRole, loginStatus, accountStatus);
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
        return usersDetails;
    }

    public boolean deleteUser(String userId) throws ClassNotFoundException {
        System.out.println("Delete From DAO FIRST");
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "delete from users "
                + "where userId = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteUsers Error: " + e);
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
        System.out.println("Delete From DAO LAST");
        return success;
    }
}
