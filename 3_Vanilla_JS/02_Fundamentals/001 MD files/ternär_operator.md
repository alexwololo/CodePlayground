Conditional-operatorn, även känd som ternär operatorn, är en operator i JavaScript som används för att utföra en betingad jämförelse. Den består av tre operander: en villkorsuttryck, ett värde att returnera om villkorsuttrycket är true, och ett värde att returnera om villkorsuttrycket är false. Syntaxen ser ut så här:

```js
(villkorsuttryck) ? värde om true : värde om false;

// Om conditional är true, returneras expression1, annars returneras expression2.
conditional ? expression1 : expression2;
```

Här är ett exempel på hur du kan använda conditional-operatorn i kod:

```js
let a = 2;
let b = 3;
let result = a > b ? "a är större än b" : "b är större än eller lika med a";
console.log(result); // Skriver ut "b är större än eller lika med a"
```

I exemplet ovan jämförs variablerna a och b med hjälp av större än-operatorn (>). Om a är större än b, returneras strängen "a är större än b", annars returneras strängen "b är större än eller lika med a". Resultatet skrivs sedan ut till konsolen.

_Du kan använda conditional-operatorn för att enkelt utföra betingade jämförelser i din kod utan att behöva skriva en if-sats._
