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
