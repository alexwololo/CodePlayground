// FUNCTION EXPRESIONS
//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/function

// whenever we have a variable and a = sign its a expression
// we always have ; after expressions

const expression = function () {
  console.log('this is a FUNCTION EXPRESSION');
};
expression();

const yeet = function () {
  console.log('yeet me now');
};

yeet();

const square = function (x = 3) {
  return x * x;
};

console.log(square());

// Function expression to calculate damage in a role-playing game
const calculateDamage = function (strength, diceRoll) {
  const baseDamage = 5; // Base damage from the attack
  const damage = baseDamage + strength * 0.5 + diceRoll; // Damage formula
  return damage; // Return the total damage
};

// Example usage:
const playerStrength = 10; // Player's strength stat
const diceRoll = Math.floor(Math.random() * 6) + 1; // Simulate a D6 dice roll

const damageDealt = calculateDamage(playerStrength, diceRoll); // Calculate damage
console.log(`You dealt ${damageDealt} damage!`); // Output the damage dealt
