export default function validateOption(testId, testIdLabel, passwordID, isRequired) {
    let isValidated = false;
    let test1 = $(testId).val();
    let test2 = $(passwordID).val();
    if (isRequired && test1.length === 0) {
        $(testIdLabel).text("Please fill in " + testIdName)
    } else if(test1 != test2) {
        $(testIdLabel).text("Passwords Do Not Match")
    } else {
        isValidated = true;
        $(testIdLabel).text("");
    }
    return isValidated;
}