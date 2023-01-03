Här är en lista över alla jämförelseoperatorer i JavaScript, med exempel på hur du kan använda dem:

```js
// Lika med
console.log(2 == 2); // Returns true
console.log("hej" == "hej"); // Returns true
console.log(2 == "2"); // Returns true

// Inte lika med
console.log(2 != 3); // Returns true
console.log("hej" != "Hej"); // Returns true
console.log(2 != "2"); // Returns false

// Större än
console.log(3 > 2); // Returns true
console.log("b" > "a"); // Returns true

// Mindre än
console.log(2 < 3); // Returns true
console.log("a" < "b"); // Returns true

// Större än eller lika med
console.log(3 >= 2); // Returns true
console.log("b" >= "a"); // Returns true
console.log(3 >= 3); // Returns true

// Mindre än eller lika med
console.log(2 <= 3); // Returns true
console.log("a" <= "b"); // Returns true
console.log(3 <= 3); // Returns true

// Strikt lika med (samma typ och värde)
console.log(2 === 2); // Returns true
console.log("hej" === "hej"); // Returns true
console.log(2 === "2"); // Returns false

// Strikt inte lika med (olika typ eller värde)
console.log(2 !== 3); // Returns true
console.log("hej" !== "Hej"); // Returns true
console.log(2 !== "2"); // Returns true
```

Jämförelseoperatorer används för att jämföra två operander och returnera true eller false beroende på resultatet. Du kan använda lika med-operatorn (==) för att returnera true om operanderna är lika, inte lika med-operatorn (!=) för att returnera true om operanderna inte är lika, och så vidare. Du kan också använda strikt lika med-operatorn (===) och strikt inte lika med-operatorn (!==) för att jämföra operanderna med både värde och typ

## Negation (!)

är en logisk operator som inverterer värdet på en operand. Om operanden är true, returnerar negationen false. Om operanden är false, returnerar negationen true.

Här är några exempel på hur du kan använda negation i JavaScript:

```js
// Negation av true ger false
let x = true;
console.log(!x); // Returns false

// Negation av false ger true
let y = false;
console.log(!y); // Returns true

// Negation av ett uttryck
console.log(!(2 > 1)); // Returns false
console.log(!("hej" === "hej")); // Returns false
```

Som du kan se, negation används för att invertera värdet på en operand. Du kan använda negation för att göra en if-sats till en else-if-sats eller för att invertera resultatet av en jämförelse.
