package ph.techgalaxy.products.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.techgalaxy.products.dao.ProductsDao;
import ph.techgalaxy.products.model.ProductsModel;

public class Products extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String inputAction = request.getParameter("verifier");
        if (null == inputAction) {
            try {
                viewProducts(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Products.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            switch (inputAction) {
                case "update":
                {
                    try {
                        updateProduct(request, response);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(Products.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                    break;

                case "create":
                {
                    try {
                        createProduct(request, response);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(Products.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                    break;

                case "delete":
                {
                    try {
                        deleteProduct(request, response);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(Products.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                    break;

                default:
                {
                    try {
                        viewProducts(request, response);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(Products.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                    break;

            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        ProductsDao productsDao = new ProductsDao();
        ArrayList<ProductsModel> productsList = productsDao.getProductsList();
        request.setAttribute("productsList", productsList);
        RequestDispatcher rd = request.getRequestDispatcher("/instances/admin/Admin Tools/Products Page/All Products.jsp");
        rd.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ClassNotFoundException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductsDao productsDao = new ProductsDao();
        ProductsModel updateProduct = new ProductsModel(productID, productName, description, size, price, quantity);
        productsDao.updateProduct(updateProduct);
        response.sendRedirect(request.getContextPath() + "/Products");
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ClassNotFoundException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductsDao productsDao = new ProductsDao();
        ProductsModel newProduct = new ProductsModel(productID, productName, description, size, price, quantity);
        productsDao.createProduct(newProduct);
        response.sendRedirect(request.getContextPath() + "/Products");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ClassNotFoundException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        ProductsDao productsDao = new ProductsDao();
        productsDao.deleteProduct(productID);
        response.sendRedirect(request.getContextPath() + "/Products");
    }
}