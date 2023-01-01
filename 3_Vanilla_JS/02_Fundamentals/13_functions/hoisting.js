////////////////////////////////////////////////////////////////////////////////

// HOISTING: function declaration can be invoked before they are declared. Function expression can only be invoked after it has been declared.

// Hoisting är ett beteende i JavaScript där variabler och funktioner kan användas innan de deklarerats i koden. Detta innebär att du kan använda en variabel eller en funktion före den linjen där den faktiskt deklareras i koden.

////////////////////////////////////////////////////////////////////////////////

// RETURNINIG VALUES

// const tax = function (income) {
//   let taxRate = 0.33 * income;
//   return taxRate;
// };

// cleanup
const tax = function (income) {
    return 0.33 * income;
};

// we call the function, return the taxRate, tax is then returned in the global variable
const someVariable = tax(100);
console.log(someVariable);
