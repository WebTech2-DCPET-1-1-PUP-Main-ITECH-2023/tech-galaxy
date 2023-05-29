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
        System.out.println("AddProducts-Action: " + action);
        switch (action) {
            case "/addProducts":
                System.out.println("You are in the case!");
                getAddProducts(request, response);
                break;
            default:
                System.out.println("You are in the default!");
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
        System.out.println("From the model: " + addProducts);
        AddProductsDao addProductsDao = new AddProductsDao();
        System.out.println("From the dao: " + addProductsDao);
        AddProductsModel getAddProducts = addProductsDao.getAddProductDetails(addProducts);
        System.out.println("From the get details: " + getAddProducts);
        request.setAttribute("addProducts", getAddProducts);
        System.out.println();
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/Products Page/AllProducts.jsp");
        rd.forward(request, response);

    }

    private void showAddProductsForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/instances/admin/Admin Tools/Products Page/AllProducts.jsp");
        rd.forward(request, response);
    }

}
