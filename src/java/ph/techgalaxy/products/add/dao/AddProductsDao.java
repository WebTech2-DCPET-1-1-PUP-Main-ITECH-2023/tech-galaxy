/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.products.add.dao;

import ph.techgalaxy.products.add.model.AddProductsModel;

/**
 *
 * @author ACER
 */
public class AddProductsDao {
    public AddProductsModel getAddProductDetails(AddProductsModel addProducts) {
        AddProductsModel addProductsDetails;
        int productID = addProducts.getProductID();
        String productName = addProducts.getProductName();
        String description = addProducts.getDescription();
        String size = addProducts.getSize();
        double productPrice = addProducts.getProductPrice();
        int quantity = addProducts.getQuantity();
        addProductsDetails = new AddProductsModel(productID, productName, description, size, productPrice, quantity);
        System.out.println("addProductsDetails: " + addProductsDetails);
        return addProductsDetails;
    }
    
    public String getProductID(){
        String productID = null;
        return productID;
    }
}
