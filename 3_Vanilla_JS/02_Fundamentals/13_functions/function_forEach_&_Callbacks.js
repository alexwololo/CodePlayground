/*
Detta handlar om callbacks och forEach i JavaScript.

En callback-funktion är en funktion som skickas som argument till en annan funktion:

Exempel: myFunc tar en callback och anropar den med ett värde.
Exempel med arrow function: myFunc((value) => console.log(value));
forEach används för att iterera över en array:

Exempel: people.forEach loggar varje person och deras index.
Konverterat till arrow function: const logPerson = (person, index) => console.log(\${index} - hello ${person}`);och sedan användspeople.forEach(logPerson);`.
*/

//callbacks and forEach.
//Callback function = when we pass a function as a argument

const myFunc = (callbackFunc) => {
  //do something
  let value = 50;
  callbackFunc(value);
};

myFunc(function (value) {
  //do something
  console.log(value);
});

// converted to arrowfunction
myFunc((value) => {
  //do something
  console.log(value);
});

/////////

let people = ['mario', 'luigi', 'ryu', 'strotter', 'smokescreen'];

/*
// forEach iterates over an array
people.forEach(function (person, index) {
  console.log(person, index);
});
*/

// converted to arrowfunction
const logPerson = (person, index) => {
  console.log(`${index} - hello ${person}`);
};

people.forEach(logPerson);
