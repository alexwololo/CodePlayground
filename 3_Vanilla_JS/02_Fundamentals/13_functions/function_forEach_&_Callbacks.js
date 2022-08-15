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
