import validate from './validate.js';
import validateNumber from './validateNumber.js';
$(document).ready(function () {
    let isProductIdValidated, isProductNameValidated, isDescriptionValidated, isSizeValidated, isPriceValidated, isQuantityValidated = false;

    $("#productID").on("focusout", function () {
        isProductIdValidated = validateNumber('#productID', "#productIDLabel", /^-?\d+$/, "Please use integers only.", true);
    });
    $("#productName").on("focusout", function () {
        isProductNameValidated = validate('#productName', "#productNameLabel", /^[a-zA-Z]/, "Please use letters only.", 3, 0, true, false, false);
    });
    $("#description").on("focusout", function () {
        isDescriptionValidated = validate('#description', "#descriptionLabel", /^[A-Za-z\s]*$/, "Please use letters only.", 3, 0, true, false, false);
    });
    $("#size").on("focusout", function () {
        isSizeValidated = validate('#size', "#sizeLabel", /^[a-zA-Z0-9\s]*$/, "Please use alphanumeric characters.", 0, 0, false, false, false);
    });
    $("#productPrice").on("focusout", function () {
        isPriceValidated = validateNumber('#productPrice', "#productPriceLabel", /^-?\d+\.\d{2}$/, "Please use double/decimals only in two decimal places.", true);
    });
    $("#quantity").on("focusout", function () {
        isQuantityValidated = validateNumber('#quantity', "#quantityLabel", /^-?\d+$/, "Please use integer only.", true);
    });
    $('#addProductsSave').click(function () {
        if (isProductIdValidated && isProductNameValidated && isDescriptionValidated && isSizeValidated && isPriceValidated && isQuantityValidated) {
            alert("Form Validation Success!");
        } else {
            event.preventDefault();
            alert("Form Validation Failed!");
        }
    })
})