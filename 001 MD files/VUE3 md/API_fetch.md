# fetch API

Fetch är en JavaScript-funktion som används för att hämta data från en webbplats eller en API. I Vue 3 kan du använda fetch för att hämta JSON-data och använda det i din applikation.

Ett exempel på hur du kan använda fetch i Vue 3 för att hämta JSON-data från en API kan se ut så här:

Copy code
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
