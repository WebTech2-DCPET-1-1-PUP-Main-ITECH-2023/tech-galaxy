import validate from './validate.js';
import validateOption from './validateOption.js';
import validateConfirm from './validateConfirm.js';
$(document).ready(function () {
    let isUserIDValidated, isFirstNameValidated, isMiddleNameValidated, isLastNameValidated, isAddressValidated, isBirthDateValidated, isMobileNumberValidated, isUserRoleValidated = false;    
    $("#userID").on("focusout", function () {
        isUserIDValidated = validate('#userID', "#userIDLabel", /^[0-9a-zA-Z]*[0-9a-zA-Z]/, "Please use alphanumeric characters.", 5, 5, true, true, true);
        console.log(isUserIDValidated);
    });
    $("#firstName").on("focusout", function () {
        isFirstNameValidated = validate('#firstName', "#userFirstNameLabel", /^[a-zA-Z]/, "Please use characters only.", 1, 0, true, true, false);
        console.log(isFirstNameValidated);
    });
    $("#middleName").on("focusout", function () {
        isMiddleNameValidated = validate('#middleName', "#userMiddleNameLabel", /^[a-zA-Z]*$/, "Please use characters only.", 0, 0, false, false, false);
        console.log(isMiddleNameValidated);
    });
    $("#lastName").on("focusout", function () {
        isLastNameValidated = validate('#lastName', "#userLastNameLabel", /^[a-zA-Z]/, "Please use characters only.", 2, 0, true, true, false);
        console.log(isLastNameValidated);
    });
    $("#address").on("focusout", function () {
        isAddressValidated = validate('#address', "#addressLabel", /^[a-zA-Z0-9\s]*$/, "Please use alphanumeric characters.", 0, 0, false, false, false);
        console.log(isAddressValidated);
    });
    $("#birthDate").on("focusout", function () {
        isBirthDateValidated = validate('#birthDate', "#birthDateLabel", /^(0[1-9]|1[0-2])\/(0[1-9]|1[0-9]|2[0-9]|3[01])\/\d{4}$/, "Please follow correct date format(MM/DD/YYYY).", 0, 0, false, false, false);
        console.log(isBirthDateValidated);
    });
    $("#mobileNumber").on("focusout", function () {
        isMobileNumberValidated = validate('#mobileNumber', "#mobileNumberLabel", /^[0-9]*[0-9]*[0-9]?/, "Please use numeric characters only.", 11, 0, false, false, false);
        console.log(isMobileNumberValidated);
    });
    $("#userRole").on("focusout", function () {
        isUserRoleValidated = validateOption('#userRole', "#userRoleLabel", /^[a-zA-Z]+$/, "Please choose from the selection only.", 1, 0, true, true, false);
        console.log(isUserRoleValidated);
    });
    $('#addUsersSave').click(function (event) {
        console.log(isUserIDValidated);
        console.log(isFirstNameValidated);
        console.log(isMiddleNameValidated);
        console.log(isLastNameValidated);
        console.log(isAddressValidated);
        console.log(isBirthDateValidated);
        console.log(isMobileNumberValidated);
        console.log(isUserRoleValidated);
        if (isUserIDValidated && isFirstNameValidated && isMiddleNameValidated && isLastNameValidated && isAddressValidated && isBirthDateValidated && isMobileNumberValidated && isUserRoleValidated) {
            alert("Form Validation Success!");
        } else {
            event.preventDefault();
            alert("Form Validation Failed!");
        }
    })
})