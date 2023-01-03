# I JavaScript finns följande datatyper:

Number - Tal, inklusive heltal och flyttal.
String - Strängar av tecken, inklusive enskilda tecken.
Boolean - Logiska värden true eller false.
Null - Ett värde som representerar "ingen värden".
Undefined - Ett värde som representerar "inte definierat".
Object - Objekt, inklusive arrayer, funktioner och andra objekt.
Symbol - Unika symboler som används för att skapa identifierare.
Det finns också två särskilda datatyper i JavaScript:

BigInt - Tal som är för stora för att få plats i en Number.
Iterator - En sekvens av värden som kan itereras över.
Datatyperna Number, String, Boolean och Null kallas också för primitiva datatyper, medan Object och Symbol kallas för referenstyper.

# Vad är skillnaden påprimitiva och referenstyper

**Primitiva datatyper** är de grundläggande datatyperna i JavaScript, inklusive Number, String, Boolean och Null. De representeras av själva värdet, till exempel en siffra eller en sträng.

**Referenstyper** är datatyper som representerar objekt, inklusive arrayer, funktioner och andra objekt. De representeras inte av själva värdet, utan av en referens till objektet.

_En viktig skillnad mellan primitiva datatyper och referenstyper_ är hur de behandlas av JavaScript när de används i olika sammanhang. När du tilldelar en primitiv datatyp till en annan variabel, tilldelas värdet till den nya variabeln. När du tilldelar en referenstyp till en annan variabel, tilldelas en referens till objektet till den nya variabeln. Detta innebär att om du ändrar värdet på objektet, kommer ändringen också att påverka den nya variabeln, eftersom den bara har en referens till objektet.

Här är ett exempel på skillnaden mellan primitiva datatyper och referenstyper:

```js
{
    // Primitiva datatyper
    let nummer1 = 5;
    let nummer2 = nummer1; // Tilldelar värdet 5 till nummer2
    nummer1 = 10; // Ändrar värdet på nummer1 till 10
    console.log(nummer2); // Skriver ut 5

    // Referenstyper
    let objekt1 = { nyckel: "värde" };
    let objekt2 = objekt1; // Tilldelar en referens till objekt1 till objekt2
    objekt1.nyckel = "nytt värde"; // Ändrar värdet på nyckeln i objekt1
    console.log(objekt2.nyckel); // Skriver ut "nytt värde"
}
```

Som du kan se, när du tilldelar en primitiv datatyp till en annan variabel, tilldelas värdet till den nya variabeln. När du tilldelar en referenstyp till en annan variabel, tilldelas en referens till objektet till den nya variabeln

## Symbol

En symbol är en unik identifierare i JavaScript som används för att skapa objektegenskaper. De används oftast för att skapa privata egenskaper eller metoder i objekt, eftersom de inte kan kollidera med andra egenskaper eller metoder som har samma namn.

Du kan skapa en symbol genom att använda Symbol-konstruktorn, så här:

const minSymbol = Symbol();

Du kan också ge symbolen en beskrivande sträng, så här:

const minSymbol = Symbol("beskrivning");

Symboler är unika, så du kan inte jämföra två symboler med varandra för att se om de är lika. Du kan dock jämföra symboler med samma beskrivande sträng för att se om de är lika, så här:

const minSymbol1 = Symbol("beskrivning");
const minSymbol2 = Symbol("beskrivning");
console.log(minSymbol1 === minSymbol2); // Skriver ut false

Du kan också använda symboler för att skapa egenskaper i objekt, så här:

const minSymbol = Symbol();
const minObjekt = {
[minSymbol]: "värde"
};
console.log(minObjekt[minSymbol]); // Skriver ut "värde"

Symboler är inte synliga i for-in-loopar eller Object.keys(), så du kan använda dem för att skapa privata egenskaper i objekt som inte kan nås från utsidan. Här är ett exempel på hur du kan använda en symbol för att skapa en privata metod i ett objekt:

const minSymbol = Symbol();
const minObjekt = {
minSymbol {
console.log("Hej!");
}
};
minObjektminSymbol; // Skriver ut "Hej!"

Som du kan se, symboler används oftast för att skapa privata egenskaper eller metoder i objekt. De är unika och kan inte jämföras med varandra, men du kan jämföra symboler med samma beskrivande sträng för att se om de är lika. Du kan också använda symboler för att skapa egenskaper i objekt.
