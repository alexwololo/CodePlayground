# fetch API

Fetch är en JavaScript-funktion som används för att hämta data från en webbplats eller en API. I Vue 3 kan du använda fetch för att hämta JSON-data och använda det i din applikation.

Ett exempel på hur du kan använda fetch i Vue 3 för att hämta JSON-data från en API kan se ut så här:

<template>

  <div>
    <p v-if="loading">Laddar...</p>
    <p v-else>{{ data }}</p>
  </div>
</template>

<script>
import { onMounted } from 'vue'

export default {
  setup() {
    let data = null
    let loading = true

    onMounted(async () => {
      const response = await fetch('https://jsonplaceholder.typicode.com/todos/1')
      const json = await response.json()

      data = json
      loading = false
    })

    return { data, loading }
  }
}
</script>

I det här exemplet används fetch för att hämta data från en API som ger en JSON-fil som svar. När data har hämtats, sparas den i en variabel som kan användas i templaten för att visa upp data.

I det här exemplet används Vue 3's "setup" lifecycle metod och "onMounted" hook för att hämta data från en API när komponenten är monterad.

Inuti "setup" metoden, vi deklarerar två variabler "data" och "loading". "data" variabeln innehåller JSON-data som hämtas från API:et och "loading" variabeln används för att visa en laddning medelande i templaten medan data hämtas.

I "onMounted" hook, vi använder fetch() funktionen för att göra en GET-förfrågan till en given url (https://jsonplaceholder.typicode.com/todos/1) för att hämta JSON-data.
response.json() används för att parsa svaret från förfrågan till en JSON-objekt. När data har hämtats, så sätts värdet av "data" variabeln till JSON-objektet och "loading" variabeln till false för att visa data i templaten.

I templaten, vi använder en "v-if" direktiv för att kontrollera om "loading" är sant eller falsk. Om loading är sant, så visas laddningen medelande och om loading är falsk, så visas data som hämtats från API:et.

Det är viktigt att tänka på att fetch() funktionen är en async funktion och måste vänta på svar från API:et innan det kan fortsätta med koden. Så det är viktigt att använda "await" för att vänta på svaret och hantera eventuella felmeddelanden som kan uppstå.
