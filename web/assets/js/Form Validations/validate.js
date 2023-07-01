export default function validate(testId, testIdLabel, regex, regexTestErrorMessage, minimumLength, maximumLength, isRequired, hasMinimumLength, hasMaximumLength) {
    let isValidated = false;
    const newLine = "\n";
    const targetForValidation = $(testId).val();
    testId = testId.substring(1);
    testId = testId.charAt(0).toUpperCase() + testId.slice(1);
    if (isRequired && targetForValidation.length === 0) {
        $(testIdLabel).text("Please fill in " + testId);
    } else if (!(regex.test(targetForValidation))) {
        $(testIdLabel).text(regexTestErrorMessage + newLine);
    } else if (hasMinimumLength && !(targetForValidation.length >= minimumLength)) {
        $(testIdLabel).text("Please use minimum number of characters/digits - Minimum length: " + minimumLength + newLine);
    } else if (hasMaximumLength && !(targetForValidation.length <= maximumLength)) {
        $(testIdLabel).text("Please use maximum number of characters/digits - Maximum length: " + maximumLength + newLine);
    } else {
        isValidated = true;
        $(testIdLabel).text("");
    }
    return isValidated;
}