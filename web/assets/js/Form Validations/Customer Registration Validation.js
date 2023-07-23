import validate from './validate.js';
import validateConfirm from './validateConfirm.js';
import togglePassword from './Toggle Password.js';
$(document).ready(function () {
    let isUsernameValidated, isPasswordValidated, isConfirmPasswordValidated, isFirstNameValidated, isMiddleNameValidated, isLastNameValidated, isAddressValidated, isBirthDateValidated, isMobileNumberValidated = false;

    $("#username").on( "focusout", function () {
        isUsernameValidated = validate('#username', "#usernameLabel", /^[0-9a-zA-Z]*[0-9a-zA-Z]/,"Please use alphanumeric characters.", 5,5,true,true,true);
    });
    $("#password").on( "focusout", function () {
        isPasswordValidated = validate('#password', "#passwordLabel",/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()\-_+={}\[\]|\\:;"'<>,.?/]).+$/," Alphanumeric; At least 1 capital character; At least 1 small character; At least 1 number; At least 1 Special Character",8,16,true,true,true);
    });
    $("#userPasswordToggle").on( "click", function () {
        togglePassword('#password', '#userPasswordToggle');
    });
    $("#confirmPassword").on( "focusout", function () {
        isConfirmPasswordValidated = validateConfirm('#confirmPassword', "#confirmPasswordLabel", "#password", true);
    });
    $("#userConfirmPasswordToggle").on( "click", function () {
        togglePassword('#confirmPassword', '#userConfirmPasswordToggle');
    });
    $("#firstName").on( "focusout", function () {
        isFirstNameValidated = validate('#firstName', "#firstNameLabel",/^[a-zA-Z]/,"Please use characters only.",1,0,true,true,false);
    });
    $("#middleName").on( "focusout", function () {
        isMiddleNameValidated = validate('#middleName', "#middleNameLabel", /^[a-zA-Z]*$/,"Please use characters only.",0,0,false,false,false);
    });
    $("#lastName").on( "focusout", function () {
        isLastNameValidated = validate('#lastName', "#lastNameLabel", /^[a-zA-Z]/,"Please use characters only.",2,0,true,true,false);        
    });
    $("#address").on( "focusout", function () {
        isAddressValidated = validate('#address', "#addressLabel", /^[0-9a-zA-Z]*[0-9a-zA-Z]/, "Please use alphanumeric characters.", 0, 0, true, false, false);
    });
    $("#birthDate").on( "focusout", function () {
        isBirthDateValidated = validate('#birthDate', "#birthDateLabel", /^(0[1-9]|1[0-2])\/(0[1-9]|1[0-9]|2[0-9]|3[01])\/\d{4}$/, "Please follow correct date format(MM/DD/YYYY).", 0, 0, true, false, false);
    });
    $("#mobileNumber").on( "focusout", function () {
        isMobileNumberValidated = validate('#mobileNumber', "#mobileNumberLabel", /^[0-9]*[0-9]*[0-9]/,"Please use numeric characters only.",11,0,true,true,false);
    });
    $('#submit').click(function (event) {
        if (isUsernameValidated && isPasswordValidated && isConfirmPasswordValidated && isFirstNameValidated && isMiddleNameValidated && isLastNameValidated && isAddressValidated && isBirthDateValidated && isMobileNumberValidated) {
            alert("Form Validation Success!");
        } else {
            event.preventDefault();
            alert("Form Validation Failed!");
        }
    })
})