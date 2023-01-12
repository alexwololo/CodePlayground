# this

"this" refererar till det aktuella objektet som koden körs inuti. I det här fallet är det Vue-instansen som skapas när appen monteras.

Ett enkelt exempel kan vara en vanlig funktion i JavaScript:

```js
const person = {
  name: "John",
  age: 30,
  sayHello: function () {
    console.log("Hello, my name is " + this.name);
  },
};
person.sayHello(); // Output: "Hello, my name is John"
```

I det här exemplet, "this" refererar till person-objektet, och "this.name" refererar till person-objektets egenskap "name". När vi kallar person.sayHello() så kommer konsol utskriften att vara "Hello, my name is John"
