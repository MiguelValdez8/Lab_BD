Create database Libreria
Use Libreria 

CREATE TABLE students(
	[studentId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[surname] [varchar](20) NULL,
	[birthdate] [date] NULL,
	[gender] [varchar](10) NULL,
	[sem] [varchar](7) NULL,)

CREATE TABLE borrows(
	[borrowId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NULL,
	[bookId] [int] NULL,
	[takenDate] [datetime] NULL,
	[broughtDate] [datetime] NULL,)

CREATE TABLE books(
	[bookId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](90) NULL,
	[pagecount] [int] NULL,
	[authorId] [int] NULL,
	[typeId] [int] NULL,)

CREATE TABLE authors(
	[authorId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](70) NULL,)

CREATE TABLE type(
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL,)

Insert into students(name,surname,birthdate,gender,sem) VALUES ('Jonatan','Valdez','2000-02-06','Masculino','1erSem' );

Insert into students(name,surname,birthdate,gender,sem) VALUES ('Emiliano','Gonzalez','1999-11-05','Masculino','3erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Patricia','Jimenez','1998-08-05','Femenino','4toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Helga','Ramirez','1998-05-09','Femenino','4toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Valentin','Nieto','2000-01-01','Masculino','1erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Robin','Kepper','1998-04-08','Femenino','4toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Joe','Dameron','1996-07-23','Masculino','6toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Joe','Dameron','1996-07-23','Masculino','6toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Ronald','Snow','1996-09-25','Masculino','6toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Harry','Black','1996-12-31','Masculino','6toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Petra','Akerman','2000-08-15','Femenino','1erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Luke','Brown','2000-08-16','Masculino','1erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Erina','Manta','1998-03-11','Femenino','4toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Melissa','Elric','1998-08-02','Femenino','4toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Levi','Sand','1996-02-27','Masculino','6toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Mike','Hugs','1998-04-08','Masculino','4toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Armin','Arleto','1999-08-15','Masculino','3erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Mika','Snoke','1999-07-15','Femenino','3erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Benita','Portgas','2000-10-30','Femenino','1erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Erwin','Jagger','1996-08-15','Masculino','6toSem' );


Insert into students(name,surname,birthdate,gender,sem) VALUES ('Esteban','Lopez','2000-03-04','Masculino','1erSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Martin','Rodriguez','1996-08-15','Femenino','6toSem' );
Insert into students(name,surname,birthdate,gender,sem) VALUES ('Sergio','Aldrete','1996-11-16','Masculino','6toSem' );

Select * From students

Update students 
Set name = 'Estevane'
Where studentId = 21

Update students 
Set name = 'Fabiola', sem = '5toSem'
Where studentId = 24

Update students 
Set name = 'Javier', surname = 'Gomez'
Where studentId = 8

Delete From students 
Where studentId = 23;




Insert into type(name) VALUES('Algebra');
Insert into type(name) VALUES('CalculoIntegral');
Insert into type(name) VALUES('CalculoDiferencial');
Insert into type(name) VALUES('Fisica');
Insert into type(name) VALUES('Quimica');
Insert into type(name) VALUES('Biologia');
Insert into type(name) VALUES('Astronomia');
Insert into type(name) VALUES('Computacion');
Insert into type(name) VALUES('Logica');
Insert into type(name) VALUES('Terror');
Insert into type(name) VALUES('Romanticismo');
Insert into type(name) VALUES('Naturalismo');
Insert into type(name) VALUES('Humanismo');
Insert into type(name) VALUES('Gotico');
Insert into type(name) VALUES('Historia');
Insert into type(name) VALUES('Tesis');
Insert into type(name) VALUES('Optica');
Insert into type(name) VALUES('Metrologia');
Insert into type(name) VALUES('Telecomunicaciones');
Insert into type(name) VALUES('Aritmetica');

Insert into type(name) VALUES('CalculoMultiVariable');
Insert into type(name) VALUES('CalculoDeVariasVariables');

Select * From type

Update type 
Set name = 'CalculoDeVariasVariables'
Where typeId = 21


Delete From type 
Where typeId = 22;


Insert into authors(name,surname) Values ('Hector','Lemanh');
Insert into authors(name,surname) Values ('Michael','Spivack');
Insert into authors(name,surname) Values ('Robert','Leithold');
Insert into authors(name,surname) Values ('Robb','Resnik');
Insert into authors(name,surname) Values ('Walter','White');
Insert into authors(name,surname) Values ('Victor','Kohe');
Insert into authors(name,surname) Values ('Emmanuel','Rasmun');
Insert into authors(name,surname) Values ('Sandra','Riz');
Insert into authors(name,surname) Values ('Hector','Salamanca');
Insert into authors(name,surname) Values ('Martin','Ledesma');
Insert into authors(name,surname) Values ('Ramon','Ayala');
Insert into authors(name,surname) Values ('Brian','May');
Insert into authors(name,surname) Values ('Salazar','Slytherin');
Insert into authors(name,surname) Values ('Brian','Dumbledor');
Insert into authors(name,surname) Values ('Romina','Ravenclaw');
Insert into authors(name,surname) Values ('Rowina','Smith');
Insert into authors(name,surname) Values ('Mariana','Aldrete');
Insert into authors(name,surname) Values ('Miguel','Horozco');
Insert into authors(name,surname) Values ('Peter','Limon');
Insert into authors(name,surname) Values ('Dani','Bale');

Insert into authors(name,surname) Values ('Esteban','Lemanh');
Insert into authors(name,surname) Values ('Javier','Lemanh');


Select * From authors

Update authors 
Set surname = 'Solis'
Where authorId = 23

Update authors
Set name = 'Miguel', surname= 'Valdez'
Where authorId = 22

Delete From authors 
Where authorId = 2;




Insert into books(name,pagecount,authorId,typeId) Values ('Matematicas1','250','1','1');
Insert into books(name,pagecount,authorId,typeId) Values ('Calculo2','350','3','2');
Insert into books(name,pagecount,authorId,typeId) Values ('ElCalculo','450','4','3');
Insert into books(name,pagecount,authorId,typeId) Values ('Fisica1','350','5','4');
Insert into books(name,pagecount,authorId,typeId) Values ('Quimica4','450','6','5');
Insert into books(name,pagecount,authorId,typeId) Values ('Mamiferos','250','7','6');
Insert into books(name,pagecount,authorId,typeId) Values ('ElFirmamento','250','8','7');
Insert into books(name,pagecount,authorId,typeId) Values ('Automatas','230','9','8');
Insert into books(name,pagecount,authorId,typeId) Values ('PensamientoMatematico1','250','10','9');
Insert into books(name,pagecount,authorId,typeId) Values ('ElCorazonEnLaLuna','120','11','10');
Insert into books(name,pagecount,authorId,typeId) Values ('VivirConSida','150','12','11');
Insert into books(name,pagecount,authorId,typeId) Values ('LaRazon','250','13','12');
Insert into books(name,pagecount,authorId,typeId) Values ('VivirConMuggles','550','14','13');
Insert into books(name,pagecount,authorId,typeId) Values ('Caverna','350','15','14');
Insert into books(name,pagecount,authorId,typeId) Values ('Conocimiento','250','16','15');
Insert into books(name,pagecount,authorId,typeId) Values ('ElNuevoMundo','180','17','16');
Insert into books(name,pagecount,authorId,typeId) Values ('LaLuz','800','18','17');
Insert into books(name,pagecount,authorId,typeId) Values ('Incertidumbre','250','19','18');
Insert into books(name,pagecount,authorId,typeId) Values ('Ccna1','240','20','19');
Insert into books(name,pagecount,authorId,typeId) Values ('MatematicasBasicas','150','21','20');
Insert into books(name,pagecount,authorId,typeId) Values ('Matematicas4','350','22','21');


Select * From books

Update books 
Set pagecount = '200'
Where bookId = 21

Update books
Set name = 'CiscoCCNA', pagecount= '350'
Where bookId = 20

Delete From books 
Where bookId = 1;	

Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('1','2','20200618 10:34:09 AM','20200621 10:34:09 AM');

Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('1','4','20200618 10:35:09 AM','20200621 10:35:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('3','4','20200619 09:20:05 AM','20200622 10:20:05 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('3','5','20200619 09:21:09 AM','20200622 10:21:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('5','19','20200619 09:34:33 AM','20200622 09:34:33 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('5','4','20200619 09:35:09 AM','20200622 09:35:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('8','15','20200619 18:15:15 PM','20200622 18:15:15 PM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('8','12','20200619 18:16:08 PM','20200622 18:16:08 PM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('19','5','20200620 09:10:09 AM','20200623 09:10:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('19','6','20200620 09:11:09 AM','20200623 09:11:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('7','2','20200620 09:15:09 AM','20200623 09:15:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('7','3','20200620 09:15:54 AM','20200623 09:15:54 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('7','15','20200620 09:16:07 AM','20200623 09:16:07 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('2','4','20200620 10:30:09 AM','20200623 10:30:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('2','20','20200620 10:30:59 AM','20200623 10:30:59 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('2','17','20200620 10:31:35 AM','20200623 10:31:35 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('13','9','20200620 11:34:09 AM','20200623 11:34:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('13','8','20200620 11:34:50 AM','20200623 11:34:50 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('13','7','20200620 11:35:09 AM','20200623 11:35:09 AM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('11','12','20200620 12:22:00 PM','20200623 12:22:00 PM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('11','20','20200620 12:22:35 PM','20200623 12:22:35 PM');

Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('11','13','20200620 12:23:02 PM','20200623 12:23:02 PM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('9','2','20200620 13:00:09 PM','20200623 13:00:09 PM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('9','16','20200620 13:01:09 PM','20200623 13:01:09 PM');
Insert into borrows(studentId,bookId,takenDate,broughtDate) Values ('9','14','20200620 13:01:39 PM','20200623 13:01:39 PM');


Select * From borrows

Update borrows 
Set studentId = '1'
Where borrowId = 3

Update borrows 
Set studentId = '4'
Where borrowId = 1

Update borrows 
Set studentId = '4'
Where borrowId = 2

Update borrows
Set studentId = '14', bookId= '4'
Where borrowId = 20

Update borrows
Set studentId = '14', bookId= '5'
Where borrowId = 21

Update borrows
Set studentId = '14', bookId= '3'
Where borrowId = 22

Delete From borrows 
Where borrowId = 23;

Delete From borrows 
Where borrowId = 24;

Delete From borrows 
Where borrowId = 25;


