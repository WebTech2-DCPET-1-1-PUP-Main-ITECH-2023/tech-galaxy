/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.techgalaxy.products.add.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.techgalaxy.products.add.dao.AddProductsDao;
import ph.techgalaxy.products.add.model.AddProductsModel;

/**
 *
 * @author ACER
 */
public class AddProducts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/addProducts":
                getAddProducts(request, response);
                break;
            default:
                showAddProductsForm(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void getAddProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        AddProductsModel addProducts = new AddProductsModel(productID, productName, description, size, productPrice, quantity);
        AddProductsDao addProductsDao = new AddProductsDao();
        AddProductsModel getAddProducts = addProductsDao.getAddProductDetails(addProducts);
        request.setAttribute("addProducts", getAddProducts);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/Products Page/AllProducts.jsp");
        rd.forward(request, response);

    }

    private void showAddProductsForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/Products Page/AllProducts.jsp");
        rd.forward(request, response);
    }

}
