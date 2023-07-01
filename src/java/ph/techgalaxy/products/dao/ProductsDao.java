/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.products.dao;

import ph.techgalaxy.products.model.ProductsModel;

/**
 *
 * @author ACER
 */
public class ProductsDao {
    public ProductsModel getProductDetails(ProductsModel products) {
        ProductsModel productsDetails;
        int productID = products.getProductID();
        String productName = products.getProductName();
        String description = products.getDescription();
        String size = products.getSize();
        double productPrice = products.getProductPrice();
        int quantity = products.getQuantity();
        productsDetails = new ProductsModel(productID, productName, description, size, productPrice, quantity);
        System.out.println("addProductsDetails: " + productsDetails);
        return productsDetails;
    }
    
    public String getProductID(){
        String productID = null;
        return productID;
    }
}
