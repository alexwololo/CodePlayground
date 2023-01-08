# JSON-objekt

JSON (JavaScript Object Notation) är ett textformat som används för att data ska kunna skickas mellan olika applikationer. JSON är ett vanligt format för att skicka data över nätet, särskilt i samband med webbtjänster och API:er (Application Programming Interfaces).

Ett JSON-objekt består av nyckel-värde-par, där nyckeln är en sträng och värdet kan vara en sträng, ett tal, en boolesk variabel (sant eller falskt) eller ett annat JSON-objekt. JSON-objekt kan också innehålla en lista med värden, så kallade arrayer.

Här är ett exempel på ett JSON-objekt:

```js
{
  "name": "John Smith",  // strängvärde
  "age": 30,  // talvärde
  "is_employed": true,  // booleskvärde
  "skills": ["JavaScript", "HTML", "CSS"],  // array med strängvärden
  "address": {  // JSON-objekt som värde
    "street": "Main Street",
    "city": "New York",
    "state": "NY"
  }
}

```

I det här exemplet har vi ett JSON-objekt som representerar en person med nyckel-värde-par för namnet, åldern, anställningsstatusen och en lista med färdigheter. Objektet har också ett värde för adress som är ett annat JSON-objekt med information om gatan, staden och staten. JSON-objekt används ofta för att lagra och överföra data mellan olika applikationer, särskilt i samband med webbtjänster och API:er (Application Programming Interfaces).

# JSON VS JS objekt

En viktig skillnad är att objekt i JavaScript kan innehålla funktioner, medan JSON-objekt endast kan innehålla data. Dessutom är objekt i JavaScript en del av språket och kan manipuleras och användas direkt i JavaScript-koden, medan JSON-objekt måste omvandlas till JavaScript-objekt innan de kan användas.

Så, sammanfattningsvis, är JSON ett textformat som används för att skicka data mellan olika applikationer, medan objekt i JavaScript är en datastruktur som används inom JavaScript för att lagra data, inklusive funktioner
