export default function validateEmpty(testId, testIdLabel) {
    let isValidated = false;
    const targetForValidation = $(testId).val();
    testId = testId.substring(1);
    testId = testId.charAt(0).toUpperCase() + testId.slice(1);
    if (targetForValidation.length === 0) {
        $(testIdLabel).text("Please fill in " + testId);
    } else {
        isValidated = true;
        $(testIdLabel).text("");
    }
    return isValidated;
}

