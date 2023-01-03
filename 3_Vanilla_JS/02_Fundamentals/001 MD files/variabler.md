let och const är två sätt att deklarera variabler i JavaScript.

let är en deklarationsform som används för att skapa variabler som kan ändras under programmets körning. Du kan använda let för att tilldela värden till variabler, så här:

```js
let minVariabel = "värde";

Du kan också ändra värdet på en variabel som har deklarerats med let, så här:

let minVariabel = "värde";
minVariabel = "nytt värde";

let-variabler har också en så kallad block-scope, vilket innebär att de bara finns tillgängliga inom den block där de deklarerats. En block är en grupp av kod som omsluts av klammerpar, till exempel:

if (true) {
let minVariabel = "värde";
// minVariabel finns tillgänglig här
}
// minVariabel finns inte tillgänglig här

const är en deklarationsform som används för att skapa konstanter, det vill säga variabler som inte kan ändras under programmets körning. Du kan använda const för att tilldela värden till konstanter, så här:

const MIN_KONSTANT = "värde";

Du kan inte ändra värdet på en konstant som har deklarerats med const, så om du försöker att tilldela en ny värde till en konstant kommer du att få ett fel.

const-variabler har också en block-scope, precis som let-variabler.

Här är ett exempel på hur du kan använda let och const tillsammans i samma kodblock:

if (true) {
let minVariabel = "värde";
const MIN_KONSTANT = "värde";
// minVariabel och MIN_KONSTANT finns tillgängliga här
}
// minVariabel finns inte tillgänglig här
// MIN_KONSTANT finns inte tillgänglig här

```

Som du kan se, let och const är två sätt att deklarera variabler i JavaScript. let används för att skapa variabler som kan ändras under programmets körning, medan const används för att skapa konstanter, det vill säga variabler som inte kan ändras under programmets körning. Båda har en block-scope, vilket innebär att de bara finns tillgängliga inom den block där de deklarerats.
