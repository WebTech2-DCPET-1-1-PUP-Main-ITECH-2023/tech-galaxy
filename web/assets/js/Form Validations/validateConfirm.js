export default function validateOption(testId, testIdLabel, passwordID, isRequired) {
    let isValidated = false;
    let test1 = $(testId).val();
    let test2 = $(passwordID).val();
    testId = testId.substring(1);
    testId = testId.charAt(0).toUpperCase() + testId.slice(1);
    if (isRequired && test1.length === 0) {
        $(testIdLabel).text("Please fill in " + testId)
    } else if (test1 != test2) {
        $(testIdLabel).text("Passwords Do Not Match")
    } else {
        isValidated = true;
        $(testIdLabel).text("");
    }
    return isValidated;
}