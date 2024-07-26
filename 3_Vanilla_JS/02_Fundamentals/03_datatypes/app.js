// Update 2024
// Primitiva datatyper

// Number: Representerar både heltal och flyttal
let age = 25;
let price = 19.99;

// String: Representerar textsträngar
let name = 'Alice';
let greeting = 'Hello, World!';

// Boolean: Representerar sanningsvärden, antingen true eller false
let isStudent = true;
let hasLicense = false;

// Null: Representerar avsaknaden av ett värde
let emptyValue = null;

// Undefined: Representerar ett värde som inte är definierat
let notAssigned;

// Symbol: Representerar en unik och oförändringsbar identifierare
let symbol = Symbol('unique');

// BigInt: Representerar heltal av godtycklig storlek
let bigIntNumber = 1234567890123456789012345678901234567890n;

// Komplexa datatyper

// Object: En samling av nyckel-värde-par
let person = {
  firstName: 'John',
  lastName: 'Doe',
  age: 30,
};

// Array: En specialiserad form av objekt som används för att lagra listor av värden
let numbers = [1, 2, 3, 4, 5];

// Function: En specialiserad typ av objekt som kan anropas
// En enkel funktion som adderar två tal
function addNumbers(a, b) {
  return a + b;
}

// Date: Representerar datum och tid
let today = new Date();

// RegExp: Används för att matcha text mot reguljära uttryck
let pattern = /ab+c/;

// Map: En samling av nyckel-värde-par där nycklarna kan vara av vilken typ som helst
let map = new Map();
map.set('key', 'value');

// Set: En samling av unika värden
let set = new Set();
set.add(1);

/**
 * // PRIMITIVE
// Stored directly in the location the variable accesses.
// Stored on the stack

// String
const name = 'John Doe';
// Number
const age = 45;
// Boolean
const hasKids = true;
// Null
const car = null;
// Undefined
let test;
// Symbol
const sym = Symbol();

// REFERENCE TYPES || Objects
// Accessed by Reference.
// Objects that are stored on the heap (dynamiclly allocated memory).
// A pointer to a location in memory

// Array
const hobbies = ['movies', 'music'];
// Object literal
const address = {
  city: 'Boston',
  state: 'MA',
};
const today = new Date();
console.log(today);
console.log(typeof today);

// Functions
// a function is a snippet of code that performs a specific task

// a METHOD is just a function that is accosiated with a perticular object/datatype

// Dates

// Anything else

 */
