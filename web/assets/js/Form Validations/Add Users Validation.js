import validate from './validate.js';
import validateOption from './validateOption.js';
import validateConfirm from './validateConfirm.js';
$(document).ready(function () {
    let isUserIDValidated, isUserFirstNameValidated, isUserMiddleNameValidated, isUserLastNameValidated, isUserRole = false;

    $("#userID").on("focusout", function () {
        isUserIDValidated = validate('#userID', "#userIDLabel", /^[0-9a-zA-Z]*[0-9a-zA-Z]/, "Please use alphanumeric characters.", 5, 5, true, true, true);
    });
    $("#userFirstName").on("focusout", function () {
        isUserFirstNameValidated = validate('#userFirstName', "#userFirstNameLabel", /^[a-zA-Z]/, "Please use letters only.", 1, 0, true, true, false);
    });
    $("#userMiddleName").on("focusout", function () {
        isUserMiddleNameValidated = validate('#userMiddleName', "#userMiddleNameLabel", /^[a-zA-Z]*$/, "Please use letters only.", 0, 0, false, false, false);
    });
    $("#userLastName").on("focusout", function () {
        isUserLastNameValidated = validate('#userLastName', "#userLastNameLabel", /^[a-zA-Z]/, "Please use letters only.", 1, 0, true, true, false);
    });
    $("#userRole").on("focusout", function () {
        isUserRole = validateOption('#userRole', "#userRoleLabel", /^[a-zA-Z]+$/, "Please choose from the selection only.", 1, 0, true, true, false);
    });
    $('#addUsersSave').click(function (event) {
        if (isUserIDValidated && isUserFirstNameValidated && isUserMiddleNameValidated && isUserLastNameValidated && isUserRole) {
            alert("Form Validation Success!");
        } else {
            event.preventDefault();
            alert("Form Validation Failed!");
        }
    })
})