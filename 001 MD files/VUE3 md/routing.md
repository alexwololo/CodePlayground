# Routing

Routing i Vue 3 är ett system för att hantera URL:er och deras motsvarande vyer i en Vue-applikation. Det låter utvecklaren definiera olika "rutter" som matchar olika delar av en URL och väljer vilken vy som ska visas för användaren. Detta gör det möjligt att skapa en mer traditionell webbapplikation med flera sidor som kan navigeras till via webbläsarens adressfält.

## exempel

Här är ett exempel på hur man kan använda routing i en Vue 3-applikation:

<script>
  import { createRouter, createWebHistory } from 'vue-router'
import Home from './views/Home.vue'
import About from './views/About.vue'
import Contact from './views/Contact.vue'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    { path: '/', component: Home },
    { path: '/about', component: About },
    { path: '/contact', component: Contact }
  ]
})

export default router
</script>

Ovan skapar vi en router med hjälp av createRouter och createWebHistory från vue-router-paketet. Vi definierar sedan tre olika rutter med hjälp av objekten i routes-arrayen, där varje objekt representerar en enskild rutt. Varje rutt har en path som matchar en del av URL:en och en component som är den vy som ska visas när användaren navigerar till den rutten.

För att använda routern i vår Vue-applikation behöver vi sedan lägga till den som ett plugin och använda en router-view komponent för att visa den aktuella vyn.

<script>

import Vue from 'vue'
import App from './App.vue'
import router from './router'

Vue.use(router)

new Vue({
  render: h => h(App)
}).$mount('#app')

</script>

Ovan lägger vi till routern som ett plugin och använder router-view komponenten i vår App.vue för att visa den aktuella vyn.

<template>
  <div id="app">
    <router-view />
  </div>
</template>

Så när användaren navigerar till exempelvis /about i webbläsaren så kommer About komponenten att visas i router-view komponenten.

För att lägga till länkar som en användare kan klicka på för att navigera till olika rutter kan man använda router-link komponenten. Denna komponent skapar en klickbar länk som automatiskt hanterar navigationen till den angivna rutten.

Så om man vill lägga till en länk för att navigera till /about-sidan kan man använda följande kod:

<template>
  <div id="app">
    <router-view />
    <router-link to="/about">About</router-link>
  </div>
</template>

Denna kod skapar en länk med texten "About" som när den klickas på, kommer att navigera användaren till /about-sidan och visa About komponenten i router-view komponenten.

Det är också möjligt att använda dynamiska parametrar i rutter för att hantera unika dataposter eller liknande. Detta görs genom att använda kolon (:) innan parameterns namn i ruttens path. Exempel på detta kan vara:

<script>

{ path: '/user/:id', component: User }

</script>

Denna rutt matchar alla URL:er som börjar med /user/ följt av ett värde, exempelvis /user/1, /user/2 osv. Och id parametern kan sedan användas i komponenten för att hämta data för en specifik användare.

Så det är ett brett område och routing i Vue 3 är ett mångsidigt verktyg för att hantera navigationen i en Vue-applikation. Det gör det möjligt att skapa en traditionell webbapplikation med flera sidor som kan navigeras till via webbläsarens adressfält.

<script></script>
