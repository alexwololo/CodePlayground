db.people.insertOne({name: "Kristin", age: 28, hobbies: ["Yoga", "Dancing"]}, {writeConcern: {w: 0}})
// ==> { "acknowledged" : false }

db.people.insertOne({name: "Alexandra", age: 20, hobbies: ["Jiu Jitsu", "Parkour"]}, {writeConcern: {w: 1}})
// ==> { "acknowledged" : true}

db.people.insertOne({name: "Angelo", age: 10, hobbies: ["Farming", "Fighting"]}, {writeConcern: {w: 1, j: false}})
// ==> { "acknowledged" : true}

db.people.insertOne({name: "Mikaila", age: 17}, {writeConcern: {w: 1, j: true}})
// ==> { "acknowledged" : true}

db.people.insertOne({name: "Aliya", age: 14}, {writeConcern: {w: 1, j: true, wtimeout:200}})
// ==> { "acknowledged" : true}

db.people.insertOne({name: "Aliya", age: 14}, {writeConcern: {w: 1, j: true, wtimeout:1}})
// ==> { "acknowledged" : true}
