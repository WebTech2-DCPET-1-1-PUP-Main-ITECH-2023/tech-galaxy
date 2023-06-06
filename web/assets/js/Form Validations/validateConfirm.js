export default function validateOption(testId, testIdLabel, passwordID, isRequired) {
    let isValidated = false;
    let test1 = $(testId).val();
    let test2 = $(passwordID).val;
    let testIdName
    console.log(test2)
    testIdName = testId.substring(1);
    testIdName = testId.charAt(0).toUpperCase() + testId.slice(1);
    if (isRequired && test1.length === 0) {
        $(testIdLabel).text("Please fill in " + testIdName)
    } else {
        isValidated = true;
        $(testIdLabel).text("");
    }
    return isValidated;
}