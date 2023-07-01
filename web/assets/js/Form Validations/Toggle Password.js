export default function togglePassword(inputId, iconId) {
    var passInput = $(inputId);
    console.log(inputId)
    console.log(iconId)
    if (passInput.attr('type') === 'password') {
        console.log(passInput.attr('type'))
        passInput.attr('type', 'text');
        console.log(passInput.attr('type'))
        $(iconId).toggleClass('bi bi-eye-fill eye');
        $(iconId).toggleClass('bi bi-eye-slash eye');
    } else {
        passInput.attr('type', 'password');
        $(iconId).toggleClass('bi bi-eye-slash eye');
        $(iconId).toggleClass('bi bi-eye-fill eye');
    }
}
