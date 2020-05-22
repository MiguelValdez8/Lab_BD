use Libreria
GO

/*PRACTICA 9*/

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

/*PRACTICA 10 */

CREATE PROCEDURE GeneroE1 @gender varchar(10)
AS
SELECT * FROM Vista1
GO

CREATE PROCEDURE BooksE1 @bookId int
AS
SELECT * FROM tabla
GO

CREATE PROCEDURE GeneroE2 @gender varchar(10)
AS
SELECT * FROM Vista3
GO

CREATE PROCEDURE AutoresE1 @name varchar(50)
AS
SELECT * FROM Vista4
GO

CREATE PROCEDURE PaginasE1 @gender int
AS
SELECT * FROM Vista5
GO

CREATE FUNCTION retornoDeLibro( @studentId int )RETURNS datetime
AS
BEGIN
DECLARE @retorno datetime
SELECT @retorno = @studentId + ' - ' + broughtDate from borrows
RETURN @retorno
END

CREATE FUNCTION salidaDeLibro( @studentId int )RETURNS datetime
AS
BEGIN
DECLARE @salida datetime
SELECT @salida = @studentId + ' - ' + takenDate from borrows
RETURN @salida
END

Create trigger trAutores ON authors Instead of Insert
AS
BEGIN
Insert Into Vista4
SELECT name, surname
FROM authors
END
go

jaja



CREATE TRIGGER AfterInsertTriType on type
FOR INSERT 
AS DECLARE @typeId INT,
	   @name VARCHAR(30);
SELECT @typeId = t.typeId FROM type t;
SELECT @name = t.name FROM type t;

INSERT INTO type( 
       typeId
      ,name)
VALUES (@typeId,
	@name)
GO