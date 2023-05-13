# CodePlayground

## Visa kod layout

I webbläsare: ctrl + u

## Hoppa ner en rad

ctrl + enter

## Hoppa i koden

cltr + vänster/högerpil

## Flyttkodraden upp / ner

alt + upp/ned

## Hoppa till nästa fil

alt + vänster/högerpil

## Skapa flera kopior av samma tag

p*5 li*10

### Skapa numrerade kopior

### li{$}\*3 =

<li>1</li>
<li>2</li>
<li>3</li>

## Markera fler förekomster av samma ord nedan

ctrl + d och sedan escape när klar

## Se fler exempel

ctrl + space

## skapa id o class

#id .class

## Kopiera och pasta kod upp/ner

shift + alt + up/nerpil

## Inspektera i F12

ctrl + shift + c

# en cool funktion som genererar en slumpmässig färgkod i hexadecimal form:

function getRandomColor() {
let color = Math.floor(Math.random() \* 16777215).toString(16);
while (color.length < 6) {
color = "0" + color;
}
return "#" + color;
}

# visa random siffra

function visaRandomSiffra() {
var slumpSiffra = Math.floor(Math.random() \* 10) + 1;
console.log(slumpSiffra);
}

// Anropa funktionen för att visa en slumpmässig siffra
visaRandomSiffra();

# skämt funktion

Funktionen getRandomJoke innehåller en array jokes som innehåller olika skämt. Sedan genereras ett slumpmässigt index genom att använda Math.random()-funktionen och Math.floor() för att avrunda ner till närmaste heltal. Det slumpmässiga indexet används för att hämta ett slumpmässigt skämt från arrayen, som sedan returnera

function getRandomJoke() {
const jokes = [
"Why don't scientists trust atoms? Because they make up everything!",
"I'm reading a book about anti-gravity. It's impossible to put down!",
"What's the best thing about Switzerland? I don't know, but the flag is a big plus!",
"I used to play piano by ear, but now I use my hands and fingers instead.",
"What's orange and sounds like a parrot? A carrot!",
"Why don't skeletons fight each other? They don't have the guts!",
"I told my wife she should embrace her mistakes. She hugged me.",
"Why did the bicycle fall over? Because it was two-tired!"
];

const randomIndex = Math.floor(Math.random() \* jokes.length);
return jokes[randomIndex];
}
