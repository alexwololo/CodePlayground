# nested routing

det är också möjligt att använda rutter med nested views, det vill säga att ha flera router-view komponenter på en och samma sida. Det gör det möjligt att visa flera vyer samtidigt och skapa mer avancerade layoutmönster.

För att använda nested views behöver man använda children-egenskapen i ruttobjekten för att definiera undersidorna. Varje child-rutt måste ha en unik name-egenskap för att identifieras.

Exempel på detta kan vara:

<script>
const router = createRouter({
  routes: [
    {
      path: '/',
      component: Parent,
      children: [
        {
          path: 'child1',
          name: 'child1',
          component: Child1
        },
        {
          path: 'child2',
          name: 'child2',
          component: Child2
        }
      ]
    }
  ]
})

</script>

I denna exempel, vi har en Parent komponent som är huvudvyn och vi har två child komponenter som är Child1 och Child2. När användaren navigerar till /child1 eller /child2 så kommer Child1 eller Child2 komponenten att visas inuti Parent komponenten.

För att visa nested views i vår layout kan vi använda flera router-view komponenter och specificera vilken rutt som ska visas i varje view genom att använda name-attributet.

Exempel på detta kan vara:

<template>
  <div>
    <router-view name="child1"></router-view>
    <router-view name="child2"></router-view>
  </div>
</template>

Så det är möjligt att skapa avancerade layoutmönster med hjälp av nested views och rikta olika delar av applikationen till olika vyer.
