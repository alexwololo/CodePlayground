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
# Array med en Space Marine's utrustning
space_marine_gear = [
    "Power Armor",          # Robust rustning som ger skydd och styrka
    "Bolter",               # Standard stormgevär
    "Chainsword",           # Ett närstridsvapen som kombinerar ett svärd med motorsågsliknande tänder
    "Frag Grenades",        # Standard granater för att orsaka sprängskador
    "Krak Grenades",        # Specialiserade granater för att bekämpa pansar
    "Combat Knife",         # Ett kraftigt kniv för närstrid
    "Helmet with HUD",      # Hjälm med Heads-Up Display (HUD) för ökad situational awareness
    "Backpack Power Unit",  # Strömkälla för rustningen och utrustningen
    "Purity Seals",         # Symboliska sigill som representerar tro och renhet
    "Auspex Scanner",       # En handhållen scanner för att upptäcka fiender och anomalier
    "Medical Supplies",     # Första hjälpen-kit och andra medicinska förnödenheter
    "Ammo Pouches",         # Fickor och bälten för att bära extra ammunition
    "Communicator",         # En kommunikationsenhet för att hålla kontakten med enhetens ledning
    "Holy Relics",          # Heliga föremål som ger andligt stöd och moral
    "Servo Arm (optional)", # Mekanisk arm för att utföra reparationer och lyfta tunga föremål
]

# Visa listan
for item in space_marine_gear:
    print(item)
