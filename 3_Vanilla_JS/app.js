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

/*
// Define the function
function go() {
  alert('hi');
  alert('Yo!');
}
// call the function
go();


//add parameters
function go(name, age) {
  // params used like variables within the function
  alert(name);
  alert(age);
}
// add arguments
// arguments make functions reusable
go('Will', 34);
go('Anna', 25);

// what is passed into from the promt into the variable inputHere = return
const inputHere = prompt();
*/

// every function will return undefined unless given a value to return
function add(first, second) {
  return first + second;
}
let addSum = add(2, 2);
console.log(addSum);

// const add = (first, second) => first + second;
// const addSum = add(2, 2);
// console.log(addSum);

function subtract(first, second) {
  return first - second;
}
let sub = subtract(20, 10);
console.log(sub);

// const subtract = (first, second) => first - second;
// const sub = subtract(10, 5);
// console.log(sub);


n=2

if(n === 1)
console.log('You have 1 new message');
else
console.log(`You have ${n} new messages`);
