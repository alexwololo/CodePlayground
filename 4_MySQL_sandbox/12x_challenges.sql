show databases;
use one_to_many;
SELECT DATABASE();

CREATE TABLE students(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100),
  PRIMARY KEY(id)
);
SHOW TABLES;
DROP TABLE students;
DROP TABLE papers;

CREATE TABLE papers(
  title VARCHAR(100),
  grade INT,
  student_id INT,
  FOREIGN KEY (student_id) REFERENCES students(id)
);
SHOW TABLES;

INSERT INTO students (first_name) VALUES
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);
SELECT * FROM students;
SELECT * FROM papers;


-- EXERCISE 1 : PRINT first_name, title, grade.
SELECT first_name, title, grade
FROM students
INNER JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

-- ALT SOLUTION
SELECT first_name, title, grade
FROM students
RIGHT JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

-- PROBLEM 2 - show students who didnt turn in papers aka NULL values
SELECT first_name, title, grade
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;

-- PROBLEM 3 - replace NULL with missing and 0
SELECT
    first_name,
    IFNULL(title, 'MISSING'),
    IFNULL(grade, 0)
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;

-- PROBLEM 4 Print AVG grade for all sudents
SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;


-- PROBLEM 5 - If grade is null or below 75 then student is failing else they pass
SELECT first_name,
       Ifnull(Avg(grade), 0) AS average,
       CASE
         WHEN Avg(grade) IS NULL THEN 'FAILING'
         WHEN Avg(grade) >= 75 THEN 'PASSING'
         ELSE 'FAILING'
       end                   AS passing_status
FROM   students
       LEFT JOIN papers
              ON students.id = papers.student_id
GROUP  BY students.id
ORDER  BY average DESC;
