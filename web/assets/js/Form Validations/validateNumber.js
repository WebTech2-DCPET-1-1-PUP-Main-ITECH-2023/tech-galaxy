export default function validateNumber(testId, testIdLabel, regex, regexTestErrorMessage, isRequired) {
    let isValidated = false;
    let targetForValidation = $(testId).val();
    const newLine = "\n";
    testId = testId.substring(1);
    testId = testId.charAt(0).toUpperCase() + testId.slice(1);
    if (isRequired && targetForValidation.length === 0) {
        $(testIdLabel).text("Please fill in " + testId);
    } else if (!(regex.test(targetForValidation))) {
        $(testIdLabel).text(regexTestErrorMessage + newLine);
    } else if (!(targetForValidation > 0)) {
        $(testIdLabel).text("Number must be greater than 0/0.00" + newLine);
    } else {
        isValidated = true;
        $(testIdLabel).text("");

    }
    return isValidated;
}