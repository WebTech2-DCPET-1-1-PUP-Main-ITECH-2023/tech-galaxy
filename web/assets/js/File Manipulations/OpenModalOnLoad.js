$(document).ready(function () {
    modalOpen("#clientLogInModal");
});

function modalOpen(modalId) {
    var modal = $(modalId);

    // Get the <span> element that closes the modal
    var closeBtn = $(".close");

    // Display the modal
    modal.css("display", "block");

    // Close the modal when the close button is clicked
    closeBtn.on("click", function () {
        modal.css("display", "none");
    });
}