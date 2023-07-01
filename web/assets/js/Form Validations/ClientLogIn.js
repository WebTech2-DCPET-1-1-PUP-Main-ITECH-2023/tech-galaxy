import validateEmpty from './IsEmpyValidator.js';
import togglePassword from './Toggle Password.js';
$(document).ready(function () {
    let isUsernameValidated, isPasswordValidated = false;
    $("#clientUsername").on("focusout", function () {
        isUsernameValidated = validateEmpty('#clientUsername', '#clientUsernameError');
    });
    $("#clientLogInPassword").on("focusout", function () {
        isPasswordValidated = validateEmpty('#clientLogInPassword', '#clientLogInPasswordError');
    });
        $('#clientLogInPasswordToggle').on('click', function () {
        togglePassword('#clientLogInPassword', '#clientLogInPasswordToggle');
    })
    $('#clientLogIn').click(function (event) {
        if(!isUsernameValidated && !isPasswordValidated) {
            event.preventDefault();
            alert("Client Entry Failed!");
        }
    })
});