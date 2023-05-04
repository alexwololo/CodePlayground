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

React Query är en bibliotek för att hantera data i React-baserade applikationer. Biblioteket gör det möjligt att enkelt hämta och hantera data från en eller flera datakällor, såsom REST-API eller GraphQL.

React Query erbjuder en mängd olika funktioner för att hämta och hantera data, inklusive:

Fetching av data: React Query gör det enkelt att hämta data från en datakälla genom att använda fetch API eller Axios-biblioteket.
Caching av data: Biblioteket cachar data i minnet eller på disken för att förbättra prestanda och minska antalet nätverksförfrågningar.
Automatisk datauppdatering: React Query kan automatiskt uppdatera cachad data baserat på en definierad intervall eller när en användare interagerar med applikationen.
Optimering för parallella förfrågningar: Biblioteket hanterar parallella dataförfrågningar på ett effektivt sätt för att förbättra prestanda.
Hantering av datafel: React Query hanterar datafel och ger utvecklare möjlighet att hantera fel på ett flexibelt sätt.
React Query kan användas tillsammans med andra React-baserade verktyg och bibliotek, såsom Redux och Context API. Biblioteket är utformat för att vara enkelt att använda och integrera i en befintlig React-applikation.
