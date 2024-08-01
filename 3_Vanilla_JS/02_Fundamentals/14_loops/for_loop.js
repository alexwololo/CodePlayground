/*
for loops

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for


for ([initialization]; [condition]; [final-expression])
  statement

*/

for (let i = 0; i < 5; i++) {
  console.log('in loop:', i);
}

console.log('loop finished');

///

const names = ['shaun', 'mario', 'luigi'];

for (let i = 0; i < names.length; i++) {
  console.log(names[i]);
  let html = `<div>${names[i]}</div>`;
  console.log(html);
}

// For-loop exempel

// En for-loop används för att upprepa en kodblock flera gånger.
// Här är ett exempel som skriver ut talen 0 till 4 i konsolen.

for (let i = 0; i < 5; i++) {
  console.log(i);
}

// Förklaring:
// for (start; stoppvillkor; steg) {
//     kod som ska upprepas
// }
//
// - start: let i = 0;     // Vi börjar med att sätta i till 0
// - stoppvillkor: i < 5;  // Loopen fortsätter så länge i är mindre än 5
// - steg: i++             // Efter varje iteration ökas i med 1
// - kod som ska upprepas: console.log(i);  // Vi skriver ut värdet av i i konsolen
