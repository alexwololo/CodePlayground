# Objekt

Ett tomt objekt i JavaScript kan skapas på olika sätt. Här är två exempel:

```js
const emptyObject = {};
const anotherEmptyObject = new Object();
```

I JavaScript är ett objekt en datatyp som används för att representera och hantera data i form av nyckel-värde-par. _En nyckel är ett unikt namn som du tilldelar en viss data, medan värdet är den data som nyckeln hänvisar till. Nyckel-värde-par kallas också för egenskaper på ett objekt._

Objekt kan innehålla olika typer av data, inklusive primitiva typer som strängar, tal och booleska värden, samt mer komplexa typer som andra objekt och funktioner.

Objekt används ofta i JavaScript för att gruppera data och metoder som hör ihop på ett logiskt sätt. Du kan skapa ett objekt genom att använda kurlybrackets och ange nyckel-värde-par inuti dem, till exempel:

```js
const person = {
    name: "John",
    age: 30,
    greet: function () {
        console.log("Hi, my name is " + person.name);
    },
};

// Du kan få åtkomst till objektets egenskaper genom att använda punktnotation, till exempel:
console.log(person.name); // 'John'
console.log(person.age); // 30
person.greet(); // Hi, my name is John
```

I det här exemplet har vi skapat ett objekt som heter person med tre egenskaper: name, age och greet. name och age är primitiva värden (en sträng och ett tal), medan greet är en funktion.

# JSON VS JS objekt

En viktig skillnad är att objekt i JavaScript kan innehålla funktioner, medan JSON-objekt endast kan innehålla data. Dessutom är objekt i JavaScript en del av språket och kan manipuleras och användas direkt i JavaScript-koden, medan JSON-objekt måste omvandlas till JavaScript-objekt innan de kan användas.

Så, sammanfattningsvis, är JSON ett textformat som används för att skicka data mellan olika applikationer, medan objekt i JavaScript är en datastruktur som används inom JavaScript för att lagra data, inklusive funktioner

## 1 Omvandla JSOn till js objekt

I JavaScript finns det en inbyggd metod som heter JSON.parse() som kan användas för att omvandla en sträng med JSON-format till ett JavaScript-objekt.

Här är ett exempel på hur man kan använda JSON.parse() för att omvandla en sträng med JSON-format till ett JavaScript-objekt:

```js
const jsonString = '{"name": "John", "age": 30, "city": "New York"}';

const obj = JSON.parse(jsonString);

console.log(obj.name); // "John"
console.log(obj.age); // 30
console.log(obj.city); // "New York"
```

I det här exemplet har vi en sträng med JSON-format som representerar ett objekt med nyckel-värde-par för namnet, åldern och staden. Vi använder sedan JSON.parse() för att omvandla strängen till ett JavaScript-objekt, och vi kan sedan använda dot notation för att komma åt värdena i objektet.

Det är viktigt att komma ihåg att JSON.parse() bara kan användas för att omvandla strängar med giltigt JSON-format. Om strängen inte är giltig JSON kommer JSON.parse() att kasta ett undantag.

## 2 Omvandla JSOn till js objekt

Ett alternativ är att använda en eval()-funktion, som kan exekvera en sträng som JavaScript-kod. Eval()-funktionen kan användas för att omvandla en sträng med JSON-format till ett JavaScript-objekt, men det är inte rekommenderat eftersom eval() är långsam och kan vara sårbar för säkerhetsrisker.
