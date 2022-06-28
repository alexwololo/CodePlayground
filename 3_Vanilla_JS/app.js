// FUNCTION DECLARATION
function greet() {
  console.log('This is the greet function');
}
// calling or invoking the function
greet();

////////////////////////////////////////////////////////////////////////////////

// FUNCTION EXPRESSION
// whenever we have a variable and a = sign its a expression
// we always have ; after expressions
const yeet = function () {
  console.log('yeet me now');
};

yeet();

////////////////////////////////////////////////////////////////////////////////

// HOISTING: function declaration can be invoked before they are declared. Function expression can only be invoked after it has been declared.

////////////////////////////////////////////////////////////////////////////////

// ARGUMENTS & PARAMETERS
// 'name' is a local variable, usable inside the {codeblock}
// when the value of the argument tear('river') is passed into the variable 'name', its called a parameter

const tear = function (name) {
  console.log(`cry me a ${name}`);
};

// 'river' is a argument
tear('river');

// Multiple arguments, parameters
const weather = function (stat, when) {
  console.log(`Hello, it is: ${stat} ${when}`);
};

weather('sunny', 'today');

// standard values / placeholders
const standard = function (stat = 'Placeholder01', when = 'Placeholder02') {
  console.log(`We are using: ${stat} ${when}`);
};

standard();

////////////////////////////////////////////////////////////////////////////////

// RETURNINIG VALUES

// const tax = function (income) {
//   let taxRate = 0.33 * income;
//   return taxRate;
// };

// cleanup
const tax = function (income) {
  return 0.33 * income;
};

// we call the function, return the taxRate, tax is then returned in the global variable
const someVariable = tax(100);
console.log(someVariable);

////////////////////////////////////////////////////////////////////////////////

// ARROW fUNCTIONS

// regular function
/*
const age = function (currentYear) {
  return currentYear - 1984;
};

const age2 = age(2022);
console.log('Age is:', age2);
*/

// arrow function
// removes keyword function
// if 0 or more then one parameter then del ()
// if only one line needed for return then we can move it up one line and delete {}
const age = (currentYear) => currentYear - 1984;

const age2 = age(2022);
console.log('Age is:', age2);

// const test1 = function () {
//   return 'hello world';
// };
// const result = test1();

// const test1 = () => 'hello world';
// const result = test1();

// console.log(result);

// add = (x, y) => x + y;
// let summa = add(10, 10);
// console.log(summa);
