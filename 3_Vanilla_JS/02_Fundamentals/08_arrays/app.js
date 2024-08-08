// Create some arrays
const numbers = [43, 56, 33, 23, 44, 36, 5];
// using the array contructer
const numbers2 = new Array(22, 45, 33, 76, 54);
const fruit = ['Apple', 'Banana', 'Orange', 'Pear'];
const mixed = [22, 'Hello', true, undefined, null, { a: 1, b: 1 }, new Date()];

let val;

// Get array length
val = numbers.length;
// Check if is array
val = Array.isArray(numbers);
// Get single value
val = numbers[3];
val = numbers[0];
// Insert into array
numbers[2] = 100;
// Find index of value
val = numbers.indexOf(36);

// MUTATING ARRAYS
// // Add on to end
// numbers.push(250);
// // Add on to front
// numbers.unshift(120);
// // Take off from end
// numbers.pop();
// // Take off from front
// numbers.shift();
// // Splice values
// numbers.splice(1,3);
// // Reverse
// numbers.reverse();

// Concatenate array
val = numbers.concat(numbers2);

// Sorting arrays
val = fruit.sort();
// val = numbers.sort();

// // Use the "compare function"
// val = numbers.sort(function(x, y){
//   return x - y;
// });

// // Reverse sort
// val = numbers.sort(function(x, y){
//   return y - x;
// });

// Find
function over50(num) {
  return num > 50;
}

val = numbers.find(over50);

console.log(numbers);
console.log(val);

console.log(fruit[2]);

// for fun
// Array with a Space Marine's gear
const spaceMarineGear = [
  'Power Armor', // Robust armor providing protection and strength
  'Bolter', // Standard assault rifle
  'Chainsword', // A melee weapon combining a sword with chainsaw-like teeth
  'Frag Grenades', // Standard grenades causing explosive damage
  'Krak Grenades', // Specialized grenades for anti-armor combat
  'Combat Knife', // A sturdy knife for close combat
  'Helmet with HUD', // Helmet with Heads-Up Display (HUD) for increased situational awareness
  'Backpack Power Unit', // Power source for armor and equipment
  'Purity Seals', // Symbolic seals representing faith and purity
  'Auspex Scanner', // Handheld scanner for detecting enemies and anomalies
  'Medical Supplies', // First aid kit and other medical supplies
  'Ammo Pouches', // Pouches and belts for carrying extra ammunition
  'Communicator', // Communication device for keeping in touch with the unit's command
  'Holy Relics', // Holy items providing spiritual support and morale
  'Servo Arm (optional)', // Mechanical arm for performing repairs and lifting heavy objects
];

// Display the list
spaceMarineGear.forEach((item) => {
  console.log(item);
});

const archmasterAodhan = {
  character: {
    name: 'Archmaster Aodhan',
    player: 'Kim',
    kin: 'Human',
    profession: 'Mage (Elementarist)',
    weakness: 'Enchanted: You always stay at the back of the group.',
    appearance: 'Tall and wiry. Long white beard and bushy eyebrows. Inquisitive eyes.',
    background_story:
      'From an early age you have been fascinated with fire. Your sorcerous mother brought you to a school of magicians after you accidentally burned down a barn on the family farm. At school you learned the secrets of magic, but the thirst for deeper knowledge made you restless. Now, after a few years of extensive travel, you have joined a company of adventurers for an expedition to the Misty Vale.',
  },
  attributes: {
    strength: 8,
    constitution: 11,
    agility: 9,
    intelligence: 16,
    willpower: 18,
    charisma: 14,
  },
  conditions: {
    strength: 'Exhausted',
    constitution: 'Scaly',
    agility: 'Bored',
    intelligence: 'Angry',
    willpower: 'Scared',
    charisma: 'Disheartened',
  },
  skills: {
    acrobatics: 5,
    awareness: 9,
    beast_lore: 6,
    boating: 4,
    brawling: 7,
    crafting: 3,
    healing: 7,
    hunting_fishing: 4,
    languages: 14,
    law_legends: 9,
    leadership: 12,
    persuasion: 12,
    seamanship: 4,
    sleight_of_hand: 10,
    sneaking: 9,
    song: 5,
    swimming: 5,
  },
  weapon_skills: {
    axes: 7,
    bows: 5,
    crossbows: 7,
    daggers: 9,
    hammers: 6,
    knives: 8,
    slings: 6,
    spears: 6,
    staves: 14,
    swords: 8,
  },
  secondary_skills: {
    elementalism: 14,
  },
  abilities_spells: [
    'Adaptive',
    'Fireball',
    'Pillar',
    'Gust of Wind',
    'Heat/Chill',
    'Puff of Smoke',
    'Ignite',
  ],
  inventory: [
    'Spellbook',
    'Torch',
    'Warm diary full of your experience and discoveries.',
    'Flint & Tinder',
  ],
  currency: {
    gold: 0,
    silver: 7,
    copper: 5,
  },
  armor: {
    bane_on: ['Sneaking', 'Evade'],
  },
  helmet: {
    bane_on: ['Awareness', 'Ranged Attacks'],
  },
  weapon_shield: {
    staff: {
      grip: '2h',
      range: 2,
      damage: 'DR 8',
      features: ['Bludgeoning', 'Toppling'],
    },
  },
  willpower_points: {
    total: 18,
    used: 0,
  },
  hit_points: {
    total: 11,
    used: 0,
  },
  death_rolls: {
    successes: 0,
    failures: 0,
  },
  special_abilities: {
    adaptive: {
      willpower_points: 3,
    },
    magic: {
      willpower_points: 'Varies',
    },
  },
};

console.log(archmasterAodhan);
