db.myCollection.find({age: 32})
/*
db            = access current database
myCollection  = access this collection
find ()       = apply this (method)
{age: 32}     = equality / single value (filter), age = field, 32 = value
*/

db.myCollection.find({age:$gt300})
/*
$gt           =operator
*/

/*READ
Queary & Projections
Query selectors
- Used to locate data
- wont change data
- example $eq

Projection Operators
- Modify data presentation
- wont change data
- example $

Update operator
- Modify + add additional data
- will change data
- example $inc
*/

/* ***************************************************************** */

/*QUERY SELECTORS
Comparison
Logical
Element
Evaluation
Array
Comments
Geospatial

PROJECTION OPERATORS
$
$elemMatch
$meta
$slice
*/

