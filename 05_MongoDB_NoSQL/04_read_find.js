//finds one document, the first document
db.movies.findOne()

//pass filter to find first matching document where condition is met
db.movies.findOne({})

//returns a cursor ie the first 20 documents
db.movies.find().pretty()

/* ***************************************************************** */

//APPLY FILTER
//shows the first doc that meets criteria
db.movies.findOne({runtime: 60})

//shows all documents that match criteria
db.movies.find({runtime: 60})

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
