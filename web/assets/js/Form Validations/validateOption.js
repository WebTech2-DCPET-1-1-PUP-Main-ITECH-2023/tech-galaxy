export default function validateOption(testId, testIdLabel, regex, regexTestErrorMessage, isRequired) {
    let isValidated = false;
    let targetForValidation = $(testId + ' option:selected').val();
    const newLine = "\n";
    testId = testId.substring(1);
    testId = testId.charAt(0).toUpperCase() + testId.slice(1);
    if (isRequired && targetForValidation === "default") {
        $(testIdLabel).text("Please fill in " + testId);
    } else if (!(regex.test(targetForValidation))) {
        $(testIdLabel).text(regexTestErrorMessage + newLine);
    } else {
        isValidated = true;
        $(testIdLabel).text("");
    }
    return isValidated;
}