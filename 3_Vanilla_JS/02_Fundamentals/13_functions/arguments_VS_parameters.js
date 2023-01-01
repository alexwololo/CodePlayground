// ARGUMENTS & PARAMETERS

const functionName = function (parameter) {
    console.log(`${parameter}`);
};
functionName("argument");

// An argument is a value passed into a function when it is called, while a parameter is a variable defined in the function definition and used to receive the argument. For example:

function addNumbers(a, b) {
    return a + b;
}

let x = 5;
let y = 10;
let result = addNumbers(x, y); // a = x, b = y

// In this example, the function addNumbers has two parameters, a and b. When the function is called with addNumbers(x, y), x becomes the argument for the parameter a and y becomes the argument for the parameter b.
