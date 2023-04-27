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
