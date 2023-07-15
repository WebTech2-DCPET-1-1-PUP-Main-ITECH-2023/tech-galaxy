import validate from './validate.js';
import validateOption from './validateOption.js';
import validateConfirm from './validateConfirm.js';
import togglePassword from './Toggle Password.js';
$(document).ready(function () {
    let isUserIDValidated, isPasswordValidated, isConfirmPasswordValidated, isFirstNameValidated, isMiddleNameValidated, isLastNameValidated, isAddressValidated, isBirthDateValidated, isMobileNumberValidated, isUserRoleValidated, isAccountStatusValidated, isLoginStatusValidated = false;
    $("#userPasswordToggle").on("click", function () {
        togglePassword('#password', '#userPasswordToggle');
    });

    $("#userConfirmPasswordToggle").on("click", function () {
        togglePassword('#confirmPassword', '#userConfirmPasswordToggle');
    });

    $("#userID").on("focusout", function () {
        isUserIDValidated = validate('#userID', "#userIDLabel", /^[0-9a-zA-Z]*[0-9a-zA-Z]/, "Please use alphanumeric characters.", 5, 5, true, true, true);
    });

    $("#password").on("focusout", function () {
        isPasswordValidated = validate('#password', "#passwordLabel", /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()\-_+={}\[\]|\\:;"'<>,.?/]).+$/, " Alphanumeric; At least 1 capital character; At least 1 small character; At least 1 number; At least 1 Special Character", 8, 16, true, true, true);
    });

    $("#confirmPassword").on("focusout", function () {
        isConfirmPasswordValidated = validateConfirm('#confirmPassword', "#confirmPasswordLabel", "#password", true);
    });

    $("#firstName").on("focusout", function () {
        isFirstNameValidated = validate('#firstName', "#userFirstNameLabel", /^[a-zA-Z]/, "Please use characters only.", 1, 0, true, true, false);
    });
    $("#middleName").on("focusout", function () {
        isMiddleNameValidated = validate('#middleName', "#userMiddleNameLabel", /^[a-zA-Z]*$/, "Please use characters only.", 0, 0, false, false, false);
    });
    $("#lastName").on("focusout", function () {
        isLastNameValidated = validate('#lastName', "#userLastNameLabel", /^[a-zA-Z]/, "Please use characters only.", 2, 0, true, true, false);
    });
    $("#address").on("focusout", function () {
        isAddressValidated = validate('#address', "#addressLabel", /^[0-9a-zA-Z]*[0-9a-zA-Z]/, "Please use alphanumeric characters.", 0, 0, true, false, false);
    });
    $("#birthDate").on("focusout", function () {
        isBirthDateValidated = validate('#birthDate', "#birthDateLabel", /^(0[1-9]|1[0-2])\/(0[1-9]|1[0-9]|2[0-9]|3[01])\/\d{4}$/, "Please follow correct date format(MM/DD/YYYY).", 0, 0, true, false, false);
    });
    $("#mobileNumber").on("focusout", function () {
        isMobileNumberValidated = validate('#mobileNumber', "#mobileNumberLabel", /^[0-9]*[0-9]*[0-9]/, "Please use numeric characters only.", 11, 0, true, true, false);
    });
    $("#userRole").on("focusout", function () {
        isUserRoleValidated = validateOption('#userRole', "#userRoleLabel", /^[a-zA-Z]+$/, "Please choose from the selection only.", 1, 0, true, true, false);
    });
    $("#accountStatus").on("focusout", function () {
        isAccountStatusValidated = validateOption('#accountStatus', "#accountStatusLabel", /^[a-zA-Z]+$/, "Please choose from the selection only.", 1, 0, true, true, false);
    });
    $("#loginStatus").on("focusout", function () {
        isLoginStatusValidated = validateOption('#loginStatus', "#loginStatusLabel", /^[a-zA-Z]+$/, "Please choose from the selection only.", 1, 0, true, true, false);
    });
    $('#addUsersSave').click(function (event) {
        System.out.println(isUserIDValidated);
        System.out.println(isPasswordValidated);
        System.out.println(isConfirmPasswordValidated);
        System.out.println(isFirstNameValidated);
        System.out.println(isMiddleNameValidated);
        System.out.println(isLastNameValidated);
        System.out.println(isAddressValidated);
        System.out.println(isBirthDateValidated);
        System.out.println(isMobileNumberValidated);
        System.out.println(isUserRoleValidated);
        System.out.println(isAccountStatusValidated);
        System.out.println(isLoginStatusValidated);
        if (isUserIDValidated && isPasswordValidated && isConfirmPasswordValidated && isFirstNameValidated && isMiddleNameValidated && isLastNameValidated && isAddressValidated && isBirthDateValidated && isMobileNumberValidated && isUserRoleValidated && isAccountStatusValidated && isLoginStatusValidated) {

            alert("Form Validation Success!");
        } else {
            event.preventDefault();
            alert("Form Validation Failed!");
        }
    })
})