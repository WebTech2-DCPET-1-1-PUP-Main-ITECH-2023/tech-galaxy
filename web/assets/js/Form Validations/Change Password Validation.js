import validate from './validate.js';
import validateEmpty from './validateEmpty.js';
import validateConfirm from './validateConfirm.js';
import togglePassword from './Toggle Password.js';
$(document).ready(function () {
    let isUserIDValidated, isOldPasswordValidated, isNewPasswordValidated, isConfirmPasswordValidated = false;
    $("#oldPasswordToggle").on("click", function () {
        togglePassword('#oldPassword', '#oldPasswordToggle');
    });
    $("#newPasswordToggle").on("click", function () {
        togglePassword('#newPassword', '#newPasswordToggle');
    });
    $("#userConfirmNewPasswordToggle").on("click", function () {
        togglePassword('#confirmNewPassword', '#userConfirmNewPasswordToggle');
    });

    $("#userID").on("focusout", function () {
        isUserIDValidated = validateEmpty('#userID', "#userIDLabel");
    });
    $("#oldPassword").on("focusout", function () {
        isOldPasswordValidated = validateEmpty('#oldPassword', "#oldPasswordLabel");
    });
    $("#newPassword").on("focusout", function () {
        isNewPasswordValidated = validate('#newPassword', "#newPasswordLabel", /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()\-_+={}\[\]|\\:;"'<>,.?/]).+$/, " Alphanumeric; At least 1 capital character; At least 1 small character; At least 1 number; At least 1 Special Character", 8, 16, true, true, true);
    });
    $("#confirmNewPassword").on("focusout", function () {
        isConfirmPasswordValidated = validateConfirm('#confirmNewPassword', "#confirmNewPasswordLabel", "#newPassword", true);
    });
    $('#addUsersSave').click(function (event) {
        if (isUserIDValidated && isOldPasswordValidated && isNewPasswordValidated && isConfirmPasswordValidated) {
            alert("Form Validation Success!");
        } else {
            event.preventDefault();
            alert("Form Validation Failed!");
        }
    })
})