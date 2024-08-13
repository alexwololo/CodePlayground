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

console.log(car.owner.name); // Output: Alice

const goblinScout = {
  name: 'Goblin - Scout',
  attributes: {
    skadebonusSTY: 'D4',
    skadebonusSMI: 'D6',
    förflyttning: 12,
  },
  stats: {
    kroppspoäng: 9,
    viljepoäng: 10,
  },
  färdigheter: {
    awareness: 10,
    bows: 12,
    evade: 10,
    sneaking: 12,
    swords: 10,
  },
  vapen: [
    { name: 'Short Bow', skill: 12, damage: 'D10' },
    { name: 'Short Sword', skill: 10, damage: 'D10' },
  ],
  rustning: 'Leather (1)',
  egenskaper: {
    nonMonster: 'Goblins do not count as monsters in combat, but as ordinary NPCs.',
    nocturnal:
      'In direct sunlight, goblins get a bane on all rolls and suffer D6 damage per stretch. A thick layer of clouds or full-cover clothing are enough to avoid the effect.',
  },
  beskrivning: `
    Goblins are children of the night and shadows. They are relatively small and skinny,
    but have disproportionately long arms and big, bulbous heads. They primarily make
    their living hunting, growing mushrooms, and trading with other creatures, mainly
    orcs and humans, but there are also warlike, aggressive clans specialized in looting
    and piracy. Many thieves' guilds also have a large goblin membership. They are cunning
    creatures who often resort to traps, ambushes, and poisons when attacking their victims.
    For this reason, there are many who despise the goblins and see them as devious,
    dishonorable cowards.
  `,
};

console.log(goblinScout);
