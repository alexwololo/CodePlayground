CREATE TABLE reviewers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);
DESC reviewers;

CREATE TABLE series(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
released_year YEAR(4),
genre VARCHAR(100)
);
DESC series;

CREATE TABLE reviews(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
rating DECIMAL(2,1),
series_id INT,
reviewer_id INT,
FOREIGN KEY(series_id) REFERENCES series(id),
FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
);

INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ('Bob\'s Burgers', 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ('Breaking Bad', 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ('Fargo', 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');
SELECT * FROM series;

INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
SELECT * FROM reviewers;

INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);
SELECT * FROM reviews;


SELECT *
FROM [table1]
JOIN [table2]
ON [table1.primary_key] = [table2.foreign_key];




1. Threads (1984 TV Movie)
112 min | Drama, Sci-Fi, Thriller

2. Privilegiet (2022 TV Movie)
107 min | Drama, Horror, Mystery

6. Help (2021 TV Movie)
98 min | Drama
13. Gifted Hands (2009 TV Movie)
86 min | Biography, Drama
17. Cut, Color, Murder (2022 TV Movie)
84 min | Crime, Mystery
18. Gia (1998 TV Movie)
R | 120 min | Biography, Drama, Romance
22. The Dropout (2019 TV Movie)
Documentary
26. Girl from Compton (2016 TV Movie)
87 min | Drama
3. Silent Hours (2021 TV Movie)
156 min | Crime, Thriller
38. American Refugee (2021 TV Movie)
94 min | Drama, Horror, Thriller
41. Sharknado (2013 TV Movie)
15 | 86 min | Action, Adventure, Comedy
48. Z-O-M-B-I-E-S (2018 TV Movie)
7 | 94 min | Family, Musical, Romance
50. The Wizard of Lies (2017 TV Movie)
133 min | Biography, Crime, Drama
