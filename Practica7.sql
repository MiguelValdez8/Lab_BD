Use Libreria

SELECT name
FROM students
WHERE studentId = 15

SELECT name
FROM books
WHERE bookId = 5

SELECT name
FROM type
WHERE typeId = 18

SELECT name
FROM authors
WHERE authorId = 6

SELECT broughtDate
FROM borrows
WHERE studentId = 2

SELECT name
FROM students
GROUP BY name

SELECT name
FROM books
GROUP BY name

SELECT name
FROM type
GROUP BY name

SELECT takenDate
FROM borrows
GROUP BY takenDate

SELECT name
FROM authors
GROUP BY name

SELECT gender, COUNT(gender)
FROM students
GROUP BY gender

SELECT COUNT(pagecount), pagecount 
FROM books
GROUP BY pagecount

SELECT bookId, COUNT(bookId)
FROM borrows
GROUP BY bookId

SELECT name, COUNT(name)
FROM authors
GROUP BY name

SELECT name, COUNT(name)
FROM type
GROUP BY name

SELECT COUNT(name), name
FROM type
GROUP BY name
HAVING COUNT(name) >= 1

SELECT name
FROM authors
GROUP BY name
HAVING COUNT(name) >= 1

SELECT gender, COUNT(gender)
FROM students
GROUP BY gender
HAVING COUNT(gender) = 9

SELECT COUNT(pagecount), pagecount 
FROM books
GROUP BY pagecount
HAVING COUNT(*) >= 5

SELECT bookId, COUNT(bookId)
FROM borrows
GROUP BY bookId
HAVING COUNT(*) >= 2

SELECT name, COUNT(name)
FROM authors
GROUP BY name
HAVING COUNT(name) >= 2

SELECT TOP 3 * FROM students

SELECT TOP 8 * FROM type

SELECT TOP 5 * FROM borrows

SELECT TOP 10 * FROM books

SELECT TOP 5 * FROM authors