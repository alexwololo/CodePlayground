// IMMIDIATLEY INVOKABLE FUNCTION EXPRESSIONS - IIFEs

(function () {
  console.log('IIFE Ran..');
})();

(function (name) {
  console.log('Hello ' + name);
})('Brad');

// Enkel IIFE med let och const
(function () {
  const message = 'Detta är en IIFE med const och let.';
  let count = 0;
  console.log(message); // Output: Detta är en IIFE med const och let.
  count++;
  console.log(`Räknare: ${count}`); // Output: Räknare: 1
})();

try {
  console.log(message); // Detta kommer att ge ett fel eftersom message inte är definierad i den globala scope
} catch (e) {
  console.log('Fel: ' + e.message); // Output: Fel: message is not defined
}

try {
  console.log(count); // Detta kommer att ge ett fel eftersom count inte är definierad i den globala scope
} catch (e) {
  console.log('Fel: ' + e.message); // Output: Fel: count is not defined
}

// IIFE med parametrar och användning av let och const
(function (initValue) {
  const baseMessage = 'Startvärde är:';
  let value = initValue;
  console.log(`${baseMessage} ${value}`); // Output: Startvärde är: 10
  value += 10;
  console.log(`Uppdaterat värde: ${value}`); // Output: Uppdaterat värde: 20
})(10);
