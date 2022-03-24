/*MongoDB – Övningar
Fortsätt med exemplet från lektionen: Författare och böcker
Utgå från exemplet mongodb-authors.txt som vi har gått genom på lektionen. Där finns
anvisningar hur man skapar en ny databas. Gå genom alla steg i textfilen själv i MongoDB
Shell. Därefter fortsätter du med följande steg/övningar (Spara all kod i samma textfil eller i
en ny textfil för varje övning förutom att köra det i terminalen):*/



/*1. Lägg till en ny författare med tillhörande böcker med insertOne med följande key:value - author, birth, books (som en array), language, genres (som en array).*/
db.authors.insertOne(
  {
    author: "Linus Lingo",
    birth: 1984,
    books: [
      "Bok 1",
      "Bok 2",
      "Bok 3"
    ],
    language: "Svenska",
    genres: [
      "Drama"
    ]
  }
)



//2. Räkna hur många författare det finns totalt.
db.authors.find().count()



//3. Räkna hur många författare som finns inom en viss genre.

db.authors.find({ genres: "Drama"}).count()



/*4. Uppdatera författarna Astrid lindgren, August Strindberg samt din nya författare du har lagt
till så att de har key:value för death (med årtal när de dog).*/
db.authors.updateOne(
   { author: "Tolkien" },
   {
     $set: { author: "J.R.R Tolkien", books: [
            "Bilbo - En hobbits äventyr",
            "Sagan om ringen",
            "Sagan om de två tornen",
            "Sagan om konungens återkomst"
            ]
            }
   }
)



//5. Räkna hur många författare som dog efter 1950.
db.authors.find( { birth: { $gte: 1900 } } )







//6. Uppdatera Astrid Lindgren så att hon har några fler böcker.
/*7. Lägg till minst två författare med insertMany med följande key:value -
author, birth, books (som en array), language, genres (som en array), death.*/
//8. Visa samtliga författare.
//9. Visa en specifik författare.
//10. Visa alla författare som är födda efter ett visst årtal.
//11. Visa alla författare som skriver inom en viss genre.
//12. Ta bort en specifik författare.


/*Skapa en egen databas: Artister och album
Skriv i terminalen för att öppna MongoDB Shell (mongosh)
mongosh
Skapa en ny databas (eller öppna en redan skapad databas)
use myArtists
Därefter börjar du med att göra följande steg (Du kan titta på textfilen för författare och
böcker för att få ledtrådar till att skriva koden):
Spara all kod i en ny textfil förutom att köra det i terminalen, på samma sätt som i övningen
med författare och böcker).*/


/*1. Skapa en collection t ex artists som bl a ska innehålla namn på artisten, det år artisten är
född och några album som tillhör artisten. Din collection ska innehålla några artister dvs flera
documents med insertMany().*/


//2. Visa alla artister


//3. Visa en speciell artist genom att använda find()


//4. Visa alla artister som är födda efter ett visst årtal


/*5. Sök efter en titel på ett album med find() och då få träff på artisten som har givit ut det
albumet. Prova att båda söka på exakt namn och när det inte är exakt dvs som LIKE i SQL. Då
använder man $regex (exempel finns i textfilen för författare och böcker).*/


/*6. Räkna hur många documents det finns i databasen dvs hur många artister det finns.
Använd count().*/


/*7. Räkna hur många documents det finns i databasen utifrån ett kriterie t ex hur många
artister som är födda efter ett visst årtal.*/


/*8. Gör en updateMany() lägg till ett nytt key/value t ex vilket land artisten kommer ifrån för
en specifik artist.*/


/*Nu ska vi utföra CRUD-operationer. Så vi skapar en ny artist med några tillhörande album
som ett document.*/


/*9. CREATE: Lägg till ett nytt document i vår collection med insertOne()*/


/*10. READ: Kontrollera att det har skapats genom find(). (Titta på exempel på kod i textfilen
för författare och böcker).*/


/*11. UPDATE: Uppdatera den nya artisten med något du väljer själv som finns sparat.*/


//12. DELETE: Radera den nya artisten.
