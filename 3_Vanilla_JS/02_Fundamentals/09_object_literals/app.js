const person = {
  firstName: 'Steve',
  lastName: 'Smith',
  age: 36,
  email: 'steve@aol.com',
  hobbies: ['music', 'sports'],
  address: {
    city: 'Miami',
    state: 'FL',
  },
  getBirthYear: function () {
    // this refers to the object
    return 2017 - this.age;
  },
};

let val;

val = person;
// Get specific value
val = person.firstName;
val = person['lastName'];
val = person.age;
val = person.hobbies[1];
val = person.address.state;
val = person.address['city'];
val = person.getBirthYear();

console.log(val);

const people = [
  { name: 'John', age: 30 },
  { name: 'Mike', age: 23 },
  { name: 'Nancy', age: 40 },
];

for (let i = 0; i < people.length; i++) {
  console.log(people[i].name);
}

// Skapa ett objekt med hjälp av objektliteral
let person = {
  name: 'John',
  age: 30,
  job: 'Developer',
  // Lägg till en metod
  greet: function () {
    console.log('Hello, my name is ' + this.name);
  },
};

// Åtkomst till objektets egenskaper
console.log(person.name); // Output: John
console.log(person['age']); // Output: 30

// Dynamiskt tilldela en ny egenskap
person.email = 'john@example.com';
console.log(person.email); // Output: john@example.com

// Anropa objektets metod
person.greet(); // Output: Hello, my name is John

// Ett mer komplext objekt med inbäddade objekt och arrayer
let car = {
  make: 'Toyota',
  model: 'Camry',
  year: 2020,
  features: ['Bluetooth', 'Backup Camera'],
  owner: {
    name: 'Alice',
    age: 35,
  },
};

// Åtkomst till inbäddade objekt och arrayer
console.log(car.make); // Output: Toyota
console.log(car.features[0]); // Output: Bluetooth
console.log(car.owner.name); // Output: Alice
