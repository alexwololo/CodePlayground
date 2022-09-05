// ARGUMENTS & PARAMETERS

const functionName = function (parameter) {
  console.log(`${parameter}`);
};
functionName('argument');

// 'name' is a local variable, usable inside the {codeblock}
// when the value of the argument tear('river') is passed into the variable 'name', its called a parameter

const tear = function (name) {
  console.log(`cry me a ${name}`);
};

// 'river' is a argument
tear('river');

// Multiple arguments, parameters
const weather = function (stat, when) {
  console.log(`Hello, it is: ${stat} ${when}`);
};

weather('sunny', 'today');

// standard values / placeholders
const standard = function (stat = 'Placeholder01', when = 'Placeholder02') {
  console.log(`We are using: ${stat} ${when}`);
};

standard();
