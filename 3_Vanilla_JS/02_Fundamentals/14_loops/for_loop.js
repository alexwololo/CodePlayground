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

for(let i=0; i < names.length; i++) {
  console.log(names[i]);
  let html = `<div>${names[i]}</div>`;
  console.log(html);
}
