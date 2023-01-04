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
