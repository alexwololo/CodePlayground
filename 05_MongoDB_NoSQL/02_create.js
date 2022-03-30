insertOne();
db.collectionName.insertOne({ field: 'value' });

insertMany();
db.collectionName.insertMany([{ field: 'value' }, { field: 'value' }]);

insert(); //DEPRECATED
db.collectionName.insert();

//mongoimport
//mongoimport -d cars c carsList --drop --jsonArray

/* ***************************************************************** */

//insertOne
db.qwe.insertOne({ name: 'Strotter', age: 30, hobbies: ['Coding', 'Nature'] });

//insertMany
db.qwe.insertMany([
  { name: 'Q', age: 22 },
  { name: 'yolo', age: 15 },
]);


/* ***************************************************************** */

/*
ORDERED INSERTS
By default when using insertMany(), inserts are ordered - that means that the the inserting process stops if an error occurs. This can be overided by setting oredered: false. In either way, no sucessful inserts (before error) will be rolled back.
*/

{
  ordered: true;
} //default is true

/* ***************************************************************** */

/* Writeconcern:
Data should be stored and you can
control the “level of guarantee” of that
to happen with the writeConcern
option. Choose the option value based on your
app requirements


*/

/* ***************************************************************** */

//Helpful Articles/ Docs:

insertOne(); //https://docs.mongodb.com/manual/reference/method/db.collection.insertOne/

insertMany(); //https://docs.mongodb.com/manual/reference/method/db.collection.insertMany/

//Atomicity: https://docs.mongodb.com/manual/core/write-operations-atomicity/#atomicity

//Write Concern: https://docs.mongodb.com/manual/reference/write-concern/

//Using mongoimport: https://docs.mongodb.com/manual/reference/program/mongoimport/index.html
