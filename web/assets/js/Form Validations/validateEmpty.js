export default function validateEmpty(testId, testIdLabel) {
    let isRequired = true;
    let isValidated = false;
    const newLine = "\n";
    const targetForValidation = $(testId).val();
    testId = testId.substring(1);
    testId = testId.charAt(0).toUpperCase() + testId.slice(1);
    if (isRequired && targetForValidation.length === 0) {
        $(testIdLabel).text("Please fill in " + testId);
    } else {
        isValidated = true;
        $(testIdLabel).text("");
    }
    return isValidated;
}