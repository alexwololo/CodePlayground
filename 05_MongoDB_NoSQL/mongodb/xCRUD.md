/*
I NoSQL (MongoDB) delar vi inte upp den data vi ska spara i tabeller
med kopplingar som Primary Key och Foreign Key utan har ett
upplägg som påminner om JSON.


Först skapar vi en ny databas
use myAuthors (databasnamn)
Därefter skapar vi en collection, vilket skulle kunna jämföras med en
tabell i en SQL-databas men fungerar annorlunda då strukturen kan
variera när man skapar ett document dvs varje document behöver
inte innehålla samma key/value, (kolumner i en SQL-databas). Ett
document skulle kunna ses som rader i en tabell men fungerar
annorlunda.
*/
db.DatabaseName.insertOne(
  {
    key: "value"
  }
)

CRUD

### CREATE
# insertOne(data, options)

db.qwerty.insertOne({
  author: "Astrid Lindgren",
  birth: 1907,
  books: [
      "Bröderna Lejonhjärta",
      "Här kommer Pippi Långstrump",
      "Mio min Mio"
  ]
})

# insertyMany(data, options)
db.qwerty.insertMany([
    {author: "Number 1"},
    {author: "Number 2"}
])

### READ
find(filter, options)
findOne(filter, options)

### UPDATE
# updateOne(filter, data, options)
db.qwerty.updateOne({author:"Number 1"}, {$set: {time:"2 delete"}})

# updateMany(filter, data, options) {}  = select all docs
db.qwerty.updateMany({}, {$set: {note:"delete all"}})

# replaceOne(filter, data, options)
db.qwerty.replaceOne({time: "2 delete"}, {new:"new stuff"})

### DELETE
# deleteOne(filter, options)
db.qwerty.deleteOne({author:"Number 1"})

# deleteMany(filter, options)
db.qwerty.deleteMany({author:"Number 1"})
db.qwerty.deleteMany({})

# delete all docs
db.myAuthors.updateMany({}, {$set: {}})

# övrigt
db.qwerty.deleteMany({aircraft:{ $exists : true }})
https://www.mongodb.com/docs/manual/reference/operator/query/exists/
