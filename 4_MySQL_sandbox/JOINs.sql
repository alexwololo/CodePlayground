/*
https://dataschool.com/learn-sql/joins/#primary-keys

Primary Keys
A primary key is a column (or sometimes set of columns) in a table that is a unique identifier for each row. It is very common for databases to have a column named id (short for identification number) as an enumerated Primary Key for each table.

It doesn’t have to be id. It can be email, username, or any other column as long as it can be counted on to uniquely identify that row of data in the table.

--

Foreign Keys
Foreign keys are columns in a table that specify a link to a primary key in another table. A great example of this is the artist_id column in the albums table. It contains a value of the id of the correct artist that produced that album.

Another example is the album_id in the tracks database. Earlier in this tutorial we looked up all the tracks with an album_id of 89. We also looked up which albums had an id of 89 and found that the tracks referred to the album “American Idiot”. TODO: Fix this paragraph/example.

It is very common for foreign key to be named in the format of [other table name]_id as album_id and artist_id are, but again it’s not required. The foreign key column could be of any type and link to any column in another table as long as that other column is a Primary Key uniquely identifying a single row.

--

*/

--JOINing Tables
SELECT *
FROM [table1]
JOIN [table2]
ON [table1.primary_key] = [table2.foreign_key];

/* Let’s join the artists and albums tables. In the above figure we can see that their relationship is defined by the artist_id in the albums table acting as a foreign key to the id column in the artists table. We can get the joined data from both tables by running the following query: */

SELECT * FROM albums
JOIN artists
ON album.artist_id = artist.id;


/*JOIN types
There are a few different types of JOINs, each which specifies a different way for the database to handle data that doesn’t match the join condition. These Venn diagrams are a nice way of demonstrating what data is returned in these joins.*/

-- https://dataschool.com/how-to-teach-people-sql/sql-join-types-explained-visually/

--TYPE        --DESCRIPTION
(INNER)	        --DEFAULT: returns only the rows where matches were found
LEFT (OUTER)    --returns matches and all rows from the left listed table
RIGHT (OUTER)	  --returns matches and all rows from the right listed table
FULL (OUTER)	  --returns matches and all rows from both tables

/*We can demonstrate each of these by doing a COUNT(*) and showing how many rows are in each dataset. First, the following query shows us how many columns are in the artists and albums tables.*/


