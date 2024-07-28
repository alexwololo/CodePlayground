// PROPERTY METHODS

const todo = {
  add: function () {
    console.log('Add todo..');
  },
  edit: function (id) {
    console.log(`Edit todo ${id}`);
  },
};

todo.delete = function () {
  console.log('Delete todo...');
};

todo.add();
todo.edit(22);
todo.delete();

// Traditionell funktion
function traditionalFunction(a, b) {
  console.log('Traditional function arguments:', arguments); // Tillgång till arguments-objektet
  return a + b;
}
console.log(traditionalFunction(1, 2)); // Output: 3

// Arrow-funktion
const arrowFunction = (a, b) => {
  // console.log(arguments); // Detta skulle orsaka ett fel
  return a + b;
};
console.log(arrowFunction(1, 2)); // Output: 3

// Arrow-funktion med implicit returvärde
const add = (a, b) => a + b;
console.log(add(1, 2)); // Output: 3

// `this`-kontext skillnad
function TraditionalFunction() {
  this.value = 1;
  setTimeout(function () {
    console.log('Traditional function this.value:', this.value); // undefined, eftersom this refererar till setTimeout:s kontext
  }, 1000);
}
new TraditionalFunction();

function ArrowFunction() {
  this.value = 1;
  setTimeout(() => {
    console.log('Arrow function this.value:', this.value); // 1, eftersom this är lexikalt bundet till ArrowFunction:s kontext
  }, 1000);
}
new ArrowFunction();
