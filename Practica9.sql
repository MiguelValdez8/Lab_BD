use Libreria
GO

CREATE VIEW Vista1 AS	
SELECT gender, COUNT(gender) AS column2
FROM students
GROUP BY gender

SELECT * FROM Vista1

CREATE VIEW tabla AS	
SELECT bookId, COUNT(bookId) AS column1
FROM borrows
GROUP BY bookId

SELECT * FROM tabla

CREATE VIEW Vista3 AS
SELECT gender, COUNT(gender) AS column3
FROM students
GROUP BY gender
HAVING COUNT(gender) = 9

SELECT * FROM Vista3

CREATE VIEW Vista4 AS
SELECT name, COUNT(name) AS column4
FROM authors
GROUP BY name
HAVING COUNT(name) >= 2

SELECT * FROM Vista4

CREATE VIEW Vista5 AS
SELECT pagecount, COUNT(pagecount) AS column5
FROM books
GROUP BY pagecount

SELECT * FROM Vista5
