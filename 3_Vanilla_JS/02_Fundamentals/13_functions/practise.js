// make a function that adds two numbers and return them
function add(x, y) {
    return x + y;
}
add(1, 2);

// create a simple arrow funktion that add two numbers
let add = (a, b) => a + b;
console.log(add(2, 3));

// create a function that take a name and adds it to a sentence
function greet(name) {
    return "Hello, " + name + "!";
}
greet("qwerty");

// create a "hello world" function using function declaration
function sayHello() {
    console.log("Hello!");
}

// create a "hello world" function using function expression
let sayHello = function () {
    console.log("Hello!");
};

//create a variable displayDialogBox and assign it a function that shows an alert dialogbox.
let displayDialogBox = function () {
    alert("An alert message");
};
displayDialogBox();

function displayDialogBox() {
    alert("An alert message");
}
displayDialogBox();

/**
Skapa en variabel/kontant, concatenateAndLog, och tilldela en funktion till concatenateAndLog.
Funktionen ska ta emot två parametrar, som kan antas innehålla strängar, göra en sammanslagning av dessa, och logga resultatet i webbläsarens konsol.

concatenateAndLog('Hello ', 'World!') ska göra så att strängen “Hello World!” loggas till konsolen (eftersom “Hello World!” är en sammanslagning av strängarna 'Hello ' och 'World!'), men funktionen ska kunna slå ihop vilka strängar som helst (och därmed också kunna logga olika värden till konsolen).
 */

function concatenateAndLog(str1, str2) {
    let result = str1 + str2;
    console.log(result);
}
concatenateAndLog("Hello ", "World!");

/**
Skapa en variabel/konstant, logLength, och tilldela en funktion till logLength.

Funktionen ska ta emot en parameter, som kan antas innehålla en array, och logga hur många värden denna array innehåller i webbläsarens konsol.

logLength([1, 2, 3]) ska göra så att “3” loggas till konsolen (eftersom att array:en som skickas in som ett argument innehåller tre värden).

Notera att ett array-värde kan tas emot på samma sätt som vilket annat värde som helst, och att inga hakparenteser eller kommatecken behöver ingå mellan funktionsparenteserna:
 */

const logLength = function (arr) {
    console.log(arr.length);
};
logLength([1, 2, 3]);

/**
Skapa en variabel/konstant, lookup, och tilldela en funktion till lookup.

Funktionen ska ta emot två parametrar: ett objekt och en sträng. Funktionen ska sedan logga värdet associerat med nyckeln som representeras av strängen.

lookup({ a: 1, b: 2, c: 3 }, 'b') ska göra så att “2” loggas till konsolen (eftersom att b-nyckeln innehåller värdet 2).

FÖRKLARING AV SVAR
Funktionen tar emot två parametrar, obj och key. Funktionen loggar sedan värdet associerat med nyckeln key i objektet obj till konsolen med hjälp av console.log() och objektnotering (obj[key]).

Output blir 2 eftersom det är värdet associerat med nyckeln 'b' i objektet { a: 1, b: 2, c: 3 }.
 */

const lookup = function (obj, key) {
    console.log(obj[key]);
};
lookup({ a: 1, b: 2, c: 3 }, "b");
