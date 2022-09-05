// FUNCTION DECLARATIONS
//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function

function declaration(){
  console.log('this is a FUNCTION DECLARATION');
  }
  declaration()

  function greet() {
    console.log('This is the greet function');
  }
  // calling or invoking the function
  greet();

function named(firstName = 'John', lastName = 'Doe'){
  // if(typeof firstName === 'undefined'){firstName = 'John'}
  // if(typeof lastName === 'undefined'){lastName = 'Doe'}
  //console.log('Hello');
  return 'Hello ' + firstName + ' ' + lastName;
}
console.log(named());
