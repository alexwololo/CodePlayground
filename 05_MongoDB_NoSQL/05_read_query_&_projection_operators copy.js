//finds one document, the first document
db.movies.findOne();

//pass filter to find first matching document where condition is met
db.movies.findOne({});

//returns a cursor ie the first 20 documents
db.movies.find().pretty();
// count amount
db.movies.find().pretty().count();

/* ***************************************************************** */

// Query and Projection Operators
// https://www.mongodb.com/docs/manual/reference/operator/query/
//shows the first doc that meets criteria
db.movies.findOne({ runtime: 60 });

//shows all documents that match criteria
db.movies.find({ runtime: 60 });





/* COMPARISON OPERATORS *********************************************** */

// $eq: 60 = equal 60
db.movies.find({ runtime: { $eq: 60 } });

// $ne: 60 = not equal to 60
db.movies.find({ runtime: { $ne: 60 } });

// $lt: 60 = lower then 60
db.movies.find({ runtime: { $lt: 60 } });

// $lte: 60 = lower then 60 or equal to 60
db.movies.find({ runtime: { $lte: 60 } });

// $gt: 60 = greater then 60
db.movies.find({ runtime: { $gt: 60 } });

// $gte: 60 = greater then 60 or equal to 60
db.movies.find({ runtime: { $gte: 60 } });

// find EMBEDDED field of 'rating' that is 'average' is greater then 7
db.movies.find({ 'rating.average': { $gt: 7 } });

// $in = include only the values of the array
db.movies.find({ runtime: { $in: [30, 42] } });

// $nin = include any value that is NOT in the array
db.movies.find({ runtime: { $nin: [30, 42] } });




/* LOGICAL OPERATORS ************************************************** */

// $or = find all ratings that is lower then 5 OR greater then 9
db.movies.find({
  $or: [{ 'rating.average': { $lt: 5 } }, { 'rating.average': { $gt: 9 } }],
});

// $nor = find all ratings that is NOT lower then 5 and NOT greater then 9
db.movies.find({
  $nor: [{ 'rating.average': { $lt: 5 } }, { 'rating.average': { $gt: 9 } }],
});

/* ***************************************************************** */

// $and = shows rating average greater then 9 and genres drama
db.movies.find({
  $and: [{ 'rating.average': { $gt: 9 } }, { genres: 'Drama' }],
});

// this gives the same result since its default behavior
db.movies.find({ 'rating.average': { $gt: 9 }, genres: 'Drama' });

/*$and exists for cases where drivers dont allow. Line underneath shows 23 results because it shows all genres that is Drama OR Horror since genres overides if written twice.*/
db.movies.find({ genres: 'Drama', genres: 'Horror' });

//we have to use $and when we want to show all movies that has 2 genres, IF WE LOOK FOR VALUES ON THE SAME FIELD THEN WE NEED $and.
db.movies.find({
  $and: [{ genres: 'Drama' }, { genres: 'Horror' }],
});

/* ***************************************************************** */

// $not = show movies that has runtime NOT equal to greater then 60
db.movies.find({ runtime: { $not: { $eq: 60 } } });
// this can also be written like this using not equal to
db.movies.find({ runtime: { $ne: 60 } });




/* ELEMENT OPERATORS ************************************************** */

// EXISTS show moies where the field language exits regardless of its value
db.movies.find({ language: { $exists: true } });
// same as above but doesnt include null
db.movies.find({ language: { $exists: true, $ne: null } });

// delete all movies that has the field language aka all of them
db.movies.deleteMany({ language: { $exists: true } });

// TYPE show all fields of a certain type
db.movies.find({ name: { $type: 'string' } });




/* EVALUATION ************************************************** */

// find all movies that contain a text snippet of "musical"
db.movies.find({summary: {$regex:/musical/}})

// $text more powerful and much faster then regex
// $text create index over the titles
db.qwe.createIndex( { name: "text" } )
// search
db.qwe.find( { $text: { $search: "Strotter" } } )
// searches for Strotter and Black as different words
db.qwe.find( { $text: { $search: "Strotter Black" } } )
// searches for the combination of the words, not for 2 seperate keywords.
db.qwe.find( { $text: { $search: "\"Strotter Black\"" }})

// $expr
// https://www.mongodb.com/docs/manual/reference/operator/query/expr/#mongodb-query-op.-expr


/* ARRAY Diving Deeper Into Querying Arrays***************************** */

db.users.find().pretty()
db.users.find({hobbies: "sports"}).pretty()
db.users.find({hobbies: {title: "sports"}}).pretty()
db.users.find({hobbies: {title: "sports", frequency: 3}}).pretty()
db.users.find({"hobbies.title": "sports"}).pretty()
// searches for matches to keyword in genres (looking for action)
db.boxoffice.find({"genre": "action"}).pretty()


// $size
/// returns all documents with the number in the array - only be exact number
db.boxoffice.find({"genre": {$size: 3}}).pretty()

// $all
// this returns these genres in eactly this order, not the instances where they are written in another order, ie thriller, action
db.boxoffice.find({"genre": ["action", "thriller"]}).pretty()

// this returns all ocations no matter in what order they appear
db.boxoffice.find({"genre": { $all: ["action", "thriller"]}}).pretty()

//$elematch
// returns entire array as long as there is a match
db.users.find({$and: [{"hobbies.title": "sports"}, {"hobbies.frequency": {$gte: 3}}]}).pretty()

// only show matches
db.users.find({ hobbies: { $elemMatch: { title:  'sports', frequency: { $gte:  3 } } } }).pretty()



/* CURSOR*************************************************************** */

// see total number of docs in db
db.movies.find().count()

const dataCursor = db.movies.find()

// cycle throu all data until cursor is exhausted and all has been fetched
dataCursor.next()

//cycle throu all the documents (that we havent fetched yet) and shows movie name
dataCursor.forEach((movie) => {printjson(movie.name)})

//resetting cursor by reassignin to new constant
const newCursor = db.movies.find()

// cycle throu data
newCursor.next()

// check if i can get anymore data
newCursor.hasNext()

newCursor.skip()


// SORTING CURSOR RESULTS

// sorting by rating 1 = ascending, -1 = decending
db.movies.find().sort({"rating.average": 1, runtime: -1}).pretty()

//Sort by "rating.average" in Ascending Order
db.movies.find().sort({"rating.average": 1}).forEach(d => {printjson({name: d.name, rating: d.rating.average})})

//Sort by "rating.average" in Ascending Order first.. and then by "runtime" in Ascending Order
db.movies.find().sort({"rating.average": 1, runtime: 1}).forEach(d => {printjson({name: d.name, rating: d.rating.average, runtime: d.runtime})})

// SKIP
//skips first 10
db.movies.find({}, {name: 1, _id: 0, "rating.average": 1, runtime: 1}).sort({"rating.average": -1, runtime: -1}).skip(10)

//skips first 100 AND limits to see 10
db.movies.find({}, {name: 1, _id: 0, "rating.average": 1, runtime: 1}).sort({"rating.average": -1, runtime: -1}).skip(100).limit(10)




// PROJECTION

// have to exclude the id
db.movies.find({}, { _id: 0, name: 1, genres: 1, rating: 1, runtime: 1 })
db.movies.find({}, { _id: 0, name: 1, genres: 1, "rating.average": 1, runtime: 1 })
db.movies.find({}, { _id: 0, name: 1, genres: 1, runtime: 1, "schedule.time": 1 })

// PROJECTION IN ARRAYS
db.movies.find({genres: "Drama"})
db.movies.find({genres: "Drama"}, {"genres.$": 1})

// only show horror cause that is the first matching element
db.movies.find({genres: {$all: ["Drama", "Horror"]}}, {"genres.$": 1})

// pull out items but only horrors cause condition is equality to horror
db.movies.find({genres: "Drama"}, {genres: {$elemMatch: {$eq: "Horror"}}})

// here only one has horror with rating avg greater then 9
db.movies.find({"rating.average": {$gt: 9}}, {genres: {$elemMatch: {$eq: "Horror"}}})


// SLICE
// only show the 2 first genretypes
db.movies.find({"rating.average": {$gt: 9}}, {_id: 0, name: 1, genres: {$slice: 2}})

// slice to show range of 1,2 genretypes
db.movies.find({"rating.average": {$gt: 9}}, {_id: 0, name: 1, genres: {$slice: [1,2]}})

/*{
  _id: ObjectId("624435c76502a18aa072dd6b"),
  id: 21,
  url: 'http://www.tvmaze.com/shows/21/the-last-ship',
  name: 'The Last Ship',
  type: 'Scripted',
  language: 'English',
  genres: [ 'Drama', 'Action', 'Thriller' ],
  status: 'Running',
  runtime: 60,
  premiered: '2014-06-22',
  officialSite: 'http://www.tntdrama.com/shows/the-last-ship',
  schedule: { time: '21:00', days: [ 'Sunday' ] },
  rating: { average: 7.8 },
  weight: 100,
  network: {
    id: 14,
    name: 'TNT',
    country: {
      name: 'United States',
      code: 'US',
      timezone: 'America/New_York'
    }
  }*/
