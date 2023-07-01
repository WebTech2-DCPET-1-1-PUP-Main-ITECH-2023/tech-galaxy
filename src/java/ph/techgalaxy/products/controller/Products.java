/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.products.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
        String action = request.getServletPath();
        System.out.println(action);
        switch (action) {
            case "/products":
                getProducts(request, response);
                break;
            default:
                showProductsForm(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void getProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        ProductsModel addProducts = new ProductsModel(productID, productName, description, size, productPrice, quantity);
        ProductsDao addProductsDao = new ProductsDao();
        ProductsModel getAddProducts = addProductsDao.getProductDetails(addProducts);
        request.setAttribute("products", getAddProducts);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/Products Page/All Products.jsp");
        rd.forward(request, response);


    }

    private void showProductsForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/Products Page/All Products.jsp");
        rd.forward(request, response);
    }
}
