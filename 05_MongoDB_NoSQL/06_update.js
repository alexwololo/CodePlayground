/* Updating Fields with "updateOne()","updateMany()" and "$set" *************/

db.users.updateOne(
  { _id: ObjectId('5dd3e51afc95b5952b4efcd4') },
  {
    $set: {
      hobbies: [
        { title: 'sports', frequency: 5 },
        { title: 'cooking', frequency: 3 },
        { title: 'hiking', frequency: 1 },
      ],
    },
  }
);
// ==> { "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }

db.users.findOne({ _id: ObjectId('5dd3e51afc95b5952b4efcd4') });

db.users.find({ 'hobbies.title': 'sports' }).pretty();

db.users.updateMany(
  { 'hobbies.title': 'sports' },
  { $set: { isSporty: true } }
);

db.users.find().pretty();

/* Incrementing & Decrementing Values **************************************/

db.users.updateOne(
  { _id: ObjectId('5dd3c7c2fc95b5952b4efcd2') },
  { $inc: { age: 2 } }
);
db.users.findOne({ _id: ObjectId('5dd3c7c2fc95b5952b4efcd2') });

db.users.updateOne(
  { _id: ObjectId('5dd3c7c2fc95b5952b4efcd2') },
  { $inc: { age: -1 } }
);
db.users.updateOne(
  { _id: ObjectId('5dd3c7c2fc95b5952b4efcd2') },
  { $inc: { age: 1 }, $set: { isSporty: false } }
);

// this will throw an error. you cant operate twice on the same field
db.users.updateOne(
  { _id: ObjectId('5dd3c7c2fc95b5952b4efcd2') },
  { $inc: { age: 1 }, $set: { age: 30 } }
);

/* Using "$min", "$max" and "$mul" *******************************************/

db.users.updateOne({ name: 'Chris' }, { $min: { age: 35 } });
db.users.findOne({ name: 'Chris' });

// this will fail, because chris is 35 now
db.users.updateOne({ name: 'Chris' }, { $min: { age: 38 } });
// ==> { "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 0 }

db.users.updateOne({ name: 'Chris' }, { $max: { age: 32 } });
db.users.updateOne({ name: 'Chris' }, { $max: { age: 38 } });

db.users.updateOne({ name: 'Chris' }, { $mul: { age: 1.1 } });

/* Getting Rid of Fields *****************************************************/
db.users.updateMany({ isSporty: true }, { $set: { phone: null } });
// remove phone
db.users.updateMany({ isSporty: true }, { $unset: { phone: '' } });

/* Renaming fields **********************************************************/
db.users.updateMany({}, { $rename: { age: 'totalAge' } });

/*  Understanding "upsert()" ************************************************/
//MongoDB Shell:

db.users.updateOne(
  { name: 'Maria' },
  {
    $set: {
      age: 26,
      hobbies: [{ title: 'Good food', frequency: 1 }],
      isSporty: true,
    },
  }
);

db.users.updateOne(
  { name: 'Maria' },
  {
    $set: {
      age: 26,
      hobbies: [{ title: 'Good food', frequency: 1 }],
      isSporty: true,
    },
  },
  { upsert: true }
);

/* Updating All Array Elements ********************************************/

db.users.find({ 'hobbies.frequency': { $gte: 2 } }).count();
db.users.updateMany(
  { 'hobbies.frequency': { $gte: 2 } },
  { $set: { 'hobbies.$.goodFrequency': true } }
);
db.users.find().pretty();

db.users.find({ totalAge: { $gte: 30 } }).pretty();
// this will throw a WriteError
db.users.updateMany(
  { totalAge: { $gte: 30 } },
  { $inc: { 'hobbies.$[].frequency': -1 } }
);
db.users.find().pretty();

//Output:
/*
{
   "acknowledged" : true,
   "matchedCount" : 0,
   "modifiedCount" : 0,
   "upsertedId" : ObjectId("5dd4c3cbd55a674c286a87f9")
}
*/

//MongoDB Shell:

db.users.findOne({ _id: ObjectId('5dd4c3cbd55a674c286a87f9') });

//Output:
/*
{
  "_id" : ObjectId("5dd4c3cbd55a674c286a87f9"),
  "name" : "Maria",
  "age" : 26,
  "hobbies" : [
     {
        "title" : "Good food",
        "frequency" : 1
     }
  ],
  "isSporty" : true
}
*/
