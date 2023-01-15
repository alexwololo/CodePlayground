# While-loopar

används för att upprepa en viss kod så länge som en viss villkor är sann. En while-loop har följande struktur:

```js
while (villkor) {
    // Kod att upprepa
}
```

Exempel på en while-loop:

```js
let i = 1; // Startvärde
while (i <= 5) {
    // Villkor: i är mindre eller lika med 5
    console.log(i); // Skriver ut i
    i++; // Ökar i med 1
}
// Output: 1 2 3 4 5
```

# Do...while-loopar

är som while-loopar, med den skillnaden att koden i loopen alltid körs minst en gång, oavsett om villkoret är sant eller inte. En do...while-loop har följande struktur:

```js
do {
    // Kod att upprepa
} while (villkor);
```

Exempel på en do...while-loop:

```js
let i = 1; // Startvärde
do {
    console.log(i); // Skriver ut i
    i++; // Ökar i med 1
} while (i <= 5); // Villkor: i är mindre eller lika med 5
// Output: 1 2 3 4 5
```

# For-loopar

är en speciell typ av loop som används för att upprepa en viss kod en viss antal gånger. En for-loop har följande struktur:

```js
for (start; villkor; steg) {
    // Kod att upprepa
}
```

Exempel på en for-loop:

```js
for (let i = 1; i <= 5; i++) {
    // Startvärde: i = 1. Villkor: i är mindre eller lika med 5. Steg: Öka i med 1.
    console.log(i); // Skriver ut i
}
// Output: 1 2 3 4 5
```

Som du kan se, alla dessa loopar används för att upprepa en viss kod. While-loopar upprepar koden så länge som ett villkor är sant, do...while-loopar upprepar koden minst en gång och sedan så länge som ett villkor är sant, och for-loopar upprepar koden en viss antal gånger med hjälp av startvärde, villkor och steg.

1. **While-loopar används när du inte vet exakt hur många gånger koden behöver upprepas, men du har ett villkor som bestämmer när loopen ska avslutas.**
2. `Do...while-loopar används när du vill att koden ska upprepas minst en gång, och sedan så länge som ett villkor är sant.`
3. **For-loopar används när du vet exakt hur många gånger koden behöver upprepas. For-loopar är oftast den mest användbara loopen när du behöver upprepa koden en viss antal gånger.**

Så, om du behöver upprepa koden en odefinierad mängd gånger, med ett villkor som bestämmer när loopen ska avslutas, kan du använda en while-loop. Om du behöver upprepa koden minst en gång, med ett villkor som bestämmer när loopen ska avslutas, kan du använda en do
