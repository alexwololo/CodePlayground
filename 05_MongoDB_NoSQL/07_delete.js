// https://docs.mongodb.com/manual/tutorial/remove-documents/

// delete one document
db.users.deleteOne({ name: 'Strotter' });

// delete all documents where age is over 30 and where they are coders
db.users.deleteMany({ age: { $gt: 30 }, Coder: true });

// delete all useres if language exists, no matter its value.
db.users.deleteMany({ language: { $exists: true } });

// delete all entries
db.users.deleteMany({});

// delete entire collection
db.users.drop();

// delete entire database (have to be in that database)
db.dropDatabase();
