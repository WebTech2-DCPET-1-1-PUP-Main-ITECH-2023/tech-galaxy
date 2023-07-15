function pathChange(modalID, button, desiredPath, originaURL) {
    $(button).click(function () {
        var newUrl = desiredPath;
        history.pushState(null, null, newUrl);
        $(modalID).modal('show');
    });
    $(modalID).on("hidden.bs.modal", function () {
        let windowValue = window.location.href;
        let modifiedWindowValue = windowValue.split('/').slice(0, 4).join('/');

        window.location.href = modifiedWindowValue + "/";
    });

    $(document).ready(function () {
    });


}


let original = window.location.href;

$(document).ready(function () {


    pathChange("#clientLogInModal", "#clientLogInModalOpen", "users/logIn/page", original);
    pathChange("#addUsersModal", "#addUser", "/users/update", original);

});

function pageLoad(original) {
    if ($(modalID).hasClass("show")) {
        window.location.href = original;
    }
}

