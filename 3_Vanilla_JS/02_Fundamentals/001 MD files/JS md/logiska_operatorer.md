Logiska operatorer är symboler som används för att utföra logiska jämförelser i JavaScript. Här är en lista över logiska operatorer och vad de gör:

&& (Och) - Returnerar true om båda operanderna är true, annars false.
Exempel: (2 > 1) && (3 > 2) returnerar true
|| (Eller) - Returnerar true om minst en av operanderna är true, annars false.
Exempel: (2 > 1) || (3 > 4) returnerar true
! (Inte) - Returnerar motsatsen av operanden.
Exempel: !(2 > 1) returnerar false
Här är några exempel på hur du kan använda logiska operatorer i kod:

```js
// Och-operatorn
if (2 > 1 && 3 > 2) {
    console.log("Båda operanderna är true");
} else {
    console.log("Minst en operand är false");
}

// Eller-operatorn
if (2 > 1 || 3 > 4) {
    console.log("Minst en operand är true");
} else {
    console.log("Båda operanderna är false");
}

// Inte-operatorn
if (!(2 > 1)) {
    console.log("Operanden är false");
} else {
    console.log("Operanden är true");
}
```

Som du kan se, logiska operatorer används för att utföra logiska jämförelser i kod. Du kan använda och-operatorn (&&) för att returnera true om båda operanderna är true, eller-operatorn (||) för att returnera true om minst en av operanderna är true, och inte-operatorn (!) för att returnera motsatsen av operanden.
