/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.products.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.techgalaxy.database.ConnectionPool;
import ph.techgalaxy.products.model.ProductsModel;

public class ProductsDao {
    public ArrayList<ProductsModel> getProductsList() throws ClassNotFoundException {
        ArrayList<ProductsModel> productsList = new ArrayList<>();
        System.out.println("get products list");
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM products";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductsModel products = new ProductsModel();
                products.setProductID(rs.getInt("productID"));
                products.setProductName(rs.getString("productName"));
                products.setDescription(rs.getString("description"));
                products.setSize(rs.getString("size"));
                products.setProductPrice(rs.getDouble("price"));
                products.setQuantity(rs.getInt("quantity"));
                productsList.add(products);
            }
        } catch (SQLException e) {
            System.out.println("getProductsList Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return productsList;
    }

    public boolean createProduct(ProductsModel products) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "INSERT INTO products (productID, productName, description, size, price, quantity) VALUES (?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, products.getProductID());
            ps.setString(2, products.getProductName());
            ps.setString(3, products.getDescription());
            ps.setString(4, products.getSize());
            ps.setDouble(5, products.getProductPrice());
            ps.setInt(6, products.getQuantity());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createProducts Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return success;
    }

    public boolean updateProduct(ProductsModel products) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "UPDATE products SET productName = ?, description = ?, size = ?, price = ?, quantity = ? WHERE productID = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, products.getProductName());
            ps.setString(2, products.getDescription());
            ps.setString(3, products.getSize());
            ps.setDouble(4, products.getProductPrice());
            ps.setInt(5, products.getQuantity());
            ps.setInt(6, products.getProductID());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateProducts Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return success;
    }

    public ProductsModel getProductsDetails(int productID) throws ClassNotFoundException {
        ProductsModel productsDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT productID, productName, description, size, price, quantity FROM products WHERE productID = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {
                int productId = rs.getInt("productID");
                String productName = rs.getString("productName");
                String description = rs.getString("description");
                String size = rs.getString("size");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                productsDetails = new ProductsModel(productId, productName, description, size, price, quantity);
            }
        } catch (SQLException e) {
            System.out.println("getProductsDetails Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return productsDetails;
    }

    public boolean deleteProduct(int productID) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "DELETE FROM products WHERE productID = ?";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productID);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteProducts Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return success;
    }

}