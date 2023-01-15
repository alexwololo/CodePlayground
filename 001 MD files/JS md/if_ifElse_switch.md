# if och if else

är strukturer som används för att utföra olika block av kod beroende på om en viss villkoruppfylls eller inte.

### if-satsen

används för att utföra ett block av kod om en viss villkoruppfylls:

```js
if (villkor) {
    // Kodblock som utförs om villkoruppfylls
}
```

### if else-satsen

används för att utföra ett block av kod om en viss villkoruppfylls, och ett annat block om villkoruppfylls inte:

```js
if (villkor) {
    // Kodblock som utförs om villkoruppfylls
} else {
    // Kodblock som utförs om villkor inte uppfylls
}
```

Här är ett exempel på hur du kan använda if och if else för att skriva ut olika meddelanden beroende på om en variabel har värdet true eller false:

```js
let bool = true;

if (bool) {
    console.log("Variabeln bool har värdet true");
}

bool = false;

if (bool) {
    console.log("Variabeln bool har värdet true");
} else {
    console.log("Variabeln bool har värdet false");
}
```

I det här exemplet skrivs först ut "Variabeln bool har värdet true" eftersom bool har värdet true. Sedan ändrar vi värdet på bool till false och använder en if else-sats för att skriva ut "Variabeln bool har värdet false" eftersom bool inte uppfyller villkoret i if-satsen.

_Du kan använda conditional-operatorn för att enkelt utföra betingade jämförelser i din kod utan att behöva skriva en if-sats._

# Switch-satsen

är en struktur som används för att matcha en viss variabel mot olika värden och utföra olika aktiviteter beroende på vilket värde den matchar. Här är ett exempel på hur du kan använda switch-satsen:

```js
let dag = "onsdag";

switch (dag) {
    case "måndag":
        console.log("Idag är det måndag");
        break;
    case "tisdag":
        console.log("Idag är det tisdag");
        break;
    case "onsdag":
        console.log("Idag är det onsdag");
        break;
    case "torsdag":
        console.log("Idag är det torsdag");
        break;
    case "fredag":
        console.log("Idag är det fredag");
        break;
    default:
        console.log("Idag är det helg");
}
// Skriver ut "Idag är det onsdag"
```

I det här exemplet använder vi switch-satsen för att matcha variabeln "dag" mot olika värden. Beroende på vilket värde "dag" har, så kommer switch-satsen att utföra den aktivitet som matchar det värdet. I det här fallet har "dag" värdet "onsdag", så switch-satsen utför aktiviteten "console.log('Idag är det onsdag');".

Om ingen av case-satserna matchar variabeln "dag", så kommer default-satsen att köras. Default-satsen används som en "else"-sats, och körs om ingen av case-satserna matchar. I det här exemplet skulle default-satsen köras om "dag" hade värdet "lördag" eller "söndag".

_Det är viktigt att komma ihåg att använda break-satsen efter varje case-sats, annars kommer alla aktiviteter efter den första matchande case-satsen att köras._

Du ska använda switch-satsen när du vill matcha en viss variabel mot olika värden och utföra olika aktiviteter beroende på vilket värde den matchar. Switch-satsen kan vara användbar när du vill jämföra en variabel mot många olika värden och du vill undvika att skriva många if-satser för varje värde.

**If-satsen används när** du vill utföra en viss aktivitet om en viss villkor är sant.

**If-else-satsen används när** du vill utföra en viss aktivitet om en viss villkor är sant, och en annan aktivitet om villkoret är falskt.

**Switch-satsen används när** du vill matcha en viss variabel mot olika värden och utföra olika aktiviteter beroende på vilket värde den matchar.

**Ternär operator (? :) används när** du vill utföra en kort form av if-else-sats. Ternär operator tar tre operander: en villkorsoperand, en värdeoperand om villkoret är sant, och en värdeoperand om villkoret är falskt.\*\*

```js
let alder = 18;
let myndig = alder >= 18 ? true : false;
console.log(myndig); // Skriver ut true

// I det här exemplet använder vi ternär operator för att sätta variabeln "myndig" till true om "alder" är större eller lika med 18, annars false.

// samma exempel med en if else sats

let alder = 18;
let myndig;

if (alder >= 18) {
    myndig = true;
} else {
    myndig = false;
}

console.log(myndig); // Skriver ut true
```
