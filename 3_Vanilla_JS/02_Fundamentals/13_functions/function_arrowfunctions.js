// ARROW fUNCTIONS

// regular function:
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
