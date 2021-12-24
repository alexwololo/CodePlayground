/**
 * String
 * Number
 * Boolean
 * Null
 * Undefined
 * Object
 * Symbol
 */

//STRING
let x = "Hello World!";

console.log(x[0]);

console.log(x.length);

/*
String function - snippet of code to perform specific task
string methods - a function tht is associated with a particular object or datatype
*/

//common string method
console.log(x.toUpperCase());
let y = x.toLowerCase();
console.log(y, x);

//NUMBER

//shorthand notation
let number = 10;
number++;
number--;
number -= 10;
number += 10;
number *= 2;
number /= 2;

console.log(number);

//NaN
console.log(2 * "yolo");

/** */

const firstName = "Magic";
const sureName = "Bus";
const age = 30;

//concatenation
let result =
  "The name of the bus is " +
  firstName +
  " " +
  sureName +
  ". It is " +
  age +
  " years old.";

console.log(result);

//template string / template literal = inject variables into string w/o exit out using + string to concatenate
let result2 =
  "The name of the bus is ${firstName} ${sureName}. It is ${age} years old";
console.log(result);

//creating html templates
let html = `
<h2>${firstName} ${sureName}</h2>
<p>Age  ${age} </p>
`;
console.log(html);

// OBJECTS => ARRAYS
let bozos = ["Alan", "Chu", "Wu"];
console.log(bozos);
console.log(bozos[0]);
//override pos 0
bozos[0] = "Ken";
console.log(bozos[0]);
console.log(bozos.length);

//array methods
let arr = bozos.join(",");
console.log(arr);
let arr2 = bozos.indexOf("Wu");
console.log(arr2);
let arr3 = bozos.concat(["Alex", "Sofie"]);
console.log(arr3);
//destructive method alters org value
let arr4 = bozos.push("Jon");
let arr5 = bozos.pop();
console.log(bozos);
console.log(arr5);

// UNDEFINED - for variables not yet defined
let value;
console.log(value, value + 3, `the value is ${value}`);

// NULL - intentional lack of value
let value2 = null;
console.log(value2, value2 + 3, `the value is ${value2}`);

//BOOLEAN true/false
console.log(true, false, "true", "false");

//methods can return booleans
let email = "alex@snailmail.com";
let res = email.includes("@");
console.log(res);

let namez = ["joe", "poe", "doe"];
let res2 = namez.includes("luigi");
console.log(res2);

//comparison operators
let age2 = 10;
console.log(age2 == 10); //true
console.log(age2 == 30); //false
console.log(age2 != 30); //true - if not equal then true
console.log(age2 > 5); //true
console.log(age2 < 10); //false
console.log(age2 >= 10); //true
console.log(age2 <= 10); //true
