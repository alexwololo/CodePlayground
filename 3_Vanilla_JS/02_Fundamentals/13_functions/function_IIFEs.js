// IMMIDIATLEY INVOKABLE FUNCTION EXPRESSIONS - IIFEs

(function () {
  console.log('IIFE Ran..');
})();

(function (name) {
  console.log('Hello ' + name);
})('Brad');
