USE Libreria

SELECT *
FROM students s
LEFT JOIN borrows bw
ON s.studentId = bw.studentId;

SELECT *
FROM authors a
LEFT JOIN type t
ON a.authorId = t.typeId;

SELECT *
FROM students s
RIGHT JOIN borrows bw
ON s.studentId = bw.studentId;

SELECT *
FROM authors a
RIGHT JOIN type t
ON a.authorId = t.typeId;

SELECT *
FROM students s
INNER JOIN borrows bw
ON s.studentId = bw.studentId;

SELECT *
FROM authors a
INNER JOIN books b
ON a.authorId = b.bookId;

SELECT * 
FROM books 
CROSS JOIN type;

SELECT * 
FROM students 
CROSS JOIN borrows;

SELECT name, typeId FROM books WHERE pagecount > (SELECT AVG(pagecount) FROM books);

WITH estudiantes AS (SELECT * FROM students)
SELECT * FROM estudiantes WHERE studentId < 20
UNION ALL
SELECT * FROM estudiantes WHERE gender = 'Femenino'

CREATE TABLE authorsBackUp(
	[authorId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](70) NULL,)

DROP TABLE authorsBackUp;

SELECT * INTO authorsBackUp FROM authors

SELECT * FROM authorsBackUp

