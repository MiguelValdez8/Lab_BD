USE [master]
GO
/****** Object:  Database [Libreria]    Script Date: 5/19/2020 3:54:17 PM ******/
CREATE DATABASE [Libreria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Libreria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Libreria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Libreria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Libreria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Libreria] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Libreria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Libreria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Libreria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Libreria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Libreria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Libreria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Libreria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Libreria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Libreria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Libreria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Libreria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Libreria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Libreria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Libreria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Libreria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Libreria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Libreria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Libreria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Libreria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Libreria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Libreria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Libreria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Libreria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Libreria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Libreria] SET  MULTI_USER 
GO
ALTER DATABASE [Libreria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Libreria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Libreria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Libreria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Libreria] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Libreria] SET QUERY_STORE = OFF
GO
USE [Libreria]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 5/19/2020 3:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[authorId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](70) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 5/19/2020 3:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[bookId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](90) NULL,
	[pagecount] [int] NULL,
	[authorId] [int] NULL,
	[typeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrows]    Script Date: 5/19/2020 3:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrows](
	[borrowId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NULL,
	[bookId] [int] NULL,
	[takenDate] [datetime] NULL,
	[broughtDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 5/19/2020 3:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[studentId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[surname] [varchar](20) NULL,
	[birthdate] [date] NULL,
	[gender] [varchar](10) NULL,
	[sem] [varchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typ]    Script Date: 5/19/2020 3:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typ](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 5/19/2020 3:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[authors] ON 

INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (1, N'Hector', N'Lemanh')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (3, N'Michael', N'Spivack')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (4, N'Robert', N'Leithold')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (5, N'Robb', N'Resnik')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (6, N'Walter', N'White')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (7, N'Victor', N'Kohe')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (8, N'Emmanuel', N'Rasmun')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (9, N'Sandra', N'Riz')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (10, N'Hector', N'Salamanca')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (11, N'Martin', N'Ledesma')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (12, N'Ramon', N'Ayala')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (13, N'Brian', N'May')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (14, N'Salazar', N'Slytherin')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (15, N'Brian', N'Dumbledor')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (16, N'Romina', N'Ravenclaw')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (17, N'Rowina', N'Smith')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (18, N'Mariana', N'Aldrete')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (19, N'Miguel', N'Horozco')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (20, N'Peter', N'Limon')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (21, N'Dani', N'Bale')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (22, N'Miguel', N'Valdez')
INSERT [dbo].[authors] ([authorId], [name], [surname]) VALUES (23, N'Javier', N'Solis')
SET IDENTITY_INSERT [dbo].[authors] OFF
SET IDENTITY_INSERT [dbo].[books] ON 

INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (2, N'Matematicas1', 250, 1, 1)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (3, N'Calculo2', 350, 3, 2)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (4, N'ElCalculo', 450, 4, 3)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (5, N'Fisica1', 350, 5, 4)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (6, N'Quimica4', 450, 6, 5)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (7, N'Mamiferos', 250, 7, 6)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (8, N'ElFirmamento', 250, 8, 7)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (9, N'Automatas', 230, 9, 8)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (10, N'PensamientoMatematico1', 250, 10, 9)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (11, N'ElCorazonEnLaLuna', 120, 11, 10)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (12, N'VivirConSida', 150, 12, 11)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (13, N'LaRazon', 250, 13, 12)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (14, N'VivirConMuggles', 550, 14, 13)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (15, N'Caverna', 350, 15, 14)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (16, N'Conocimiento', 250, 16, 15)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (17, N'ElNuevoMundo', 180, 17, 16)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (18, N'LaLuz', 800, 18, 17)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (19, N'Incertidumbre', 250, 19, 18)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (20, N'CiscoCCNA', 350, 20, 19)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (21, N'MatematicasBasicas', 200, 21, 20)
INSERT [dbo].[books] ([bookId], [name], [pagecount], [authorId], [typeId]) VALUES (22, N'Matematicas4', 350, 22, 21)
SET IDENTITY_INSERT [dbo].[books] OFF
SET IDENTITY_INSERT [dbo].[borrows] ON 

INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (1, 4, 2, CAST(N'2020-06-18T10:34:09.000' AS DateTime), CAST(N'2020-06-21T10:34:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (2, 4, 4, CAST(N'2020-06-18T10:35:09.000' AS DateTime), CAST(N'2020-06-21T10:35:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (3, 1, 4, CAST(N'2020-06-19T09:20:05.000' AS DateTime), CAST(N'2020-06-22T10:20:05.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (4, 3, 5, CAST(N'2020-06-19T09:21:09.000' AS DateTime), CAST(N'2020-06-22T10:21:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (5, 5, 19, CAST(N'2020-06-19T09:34:33.000' AS DateTime), CAST(N'2020-06-22T09:34:33.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (6, 5, 4, CAST(N'2020-06-19T09:35:09.000' AS DateTime), CAST(N'2020-06-22T09:35:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (7, 8, 15, CAST(N'2020-06-19T18:15:15.000' AS DateTime), CAST(N'2020-06-22T18:15:15.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (8, 8, 12, CAST(N'2020-06-19T18:16:08.000' AS DateTime), CAST(N'2020-06-22T18:16:08.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (9, 19, 5, CAST(N'2020-06-20T09:10:09.000' AS DateTime), CAST(N'2020-06-23T09:10:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (10, 19, 6, CAST(N'2020-06-20T09:11:09.000' AS DateTime), CAST(N'2020-06-23T09:11:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (11, 7, 2, CAST(N'2020-06-20T09:15:09.000' AS DateTime), CAST(N'2020-06-23T09:15:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (12, 7, 3, CAST(N'2020-06-20T09:15:54.000' AS DateTime), CAST(N'2020-06-23T09:15:54.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (13, 7, 15, CAST(N'2020-06-20T09:16:07.000' AS DateTime), CAST(N'2020-06-23T09:16:07.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (14, 2, 4, CAST(N'2020-06-20T10:30:09.000' AS DateTime), CAST(N'2020-06-23T10:30:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (15, 2, 20, CAST(N'2020-06-20T10:30:59.000' AS DateTime), CAST(N'2020-06-23T10:30:59.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (16, 2, 17, CAST(N'2020-06-20T10:31:35.000' AS DateTime), CAST(N'2020-06-23T10:31:35.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (17, 13, 9, CAST(N'2020-06-20T11:34:09.000' AS DateTime), CAST(N'2020-06-23T11:34:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (18, 13, 8, CAST(N'2020-06-20T11:34:50.000' AS DateTime), CAST(N'2020-06-23T11:34:50.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (19, 13, 7, CAST(N'2020-06-20T11:35:09.000' AS DateTime), CAST(N'2020-06-23T11:35:09.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (20, 14, 4, CAST(N'2020-06-20T12:22:00.000' AS DateTime), CAST(N'2020-06-23T12:22:00.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (21, 14, 5, CAST(N'2020-06-20T12:22:35.000' AS DateTime), CAST(N'2020-06-23T12:22:35.000' AS DateTime))
INSERT [dbo].[borrows] ([borrowId], [studentId], [bookId], [takenDate], [broughtDate]) VALUES (22, 14, 3, CAST(N'2020-06-20T12:23:02.000' AS DateTime), CAST(N'2020-06-23T12:23:02.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[borrows] OFF
SET IDENTITY_INSERT [dbo].[students] ON 

INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (1, N'Jonatan', N'Valdez', CAST(N'2000-02-06' AS Date), N'Masculino', N'1erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (2, N'Emiliano', N'Gonzalez', CAST(N'1999-11-05' AS Date), N'Masculino', N'3erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (3, N'Patricia', N'Jimenez', CAST(N'1998-08-05' AS Date), N'Femenino', N'4toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (4, N'Helga', N'Ramirez', CAST(N'1998-05-09' AS Date), N'Femenino', N'4toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (5, N'Valentin', N'Nieto', CAST(N'2000-01-01' AS Date), N'Masculino', N'1erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (6, N'Robin', N'Kepper', CAST(N'1998-04-08' AS Date), N'Femenino', N'4toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (7, N'Joe', N'Dameron', CAST(N'1996-07-23' AS Date), N'Masculino', N'6toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (8, N'Javier', N'Gomez', CAST(N'1996-07-23' AS Date), N'Masculino', N'6toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (9, N'Ronald', N'Snow', CAST(N'1996-09-25' AS Date), N'Masculino', N'6toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (10, N'Harry', N'Black', CAST(N'1996-12-31' AS Date), N'Masculino', N'6toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (11, N'Petra', N'Akerman', CAST(N'2000-08-15' AS Date), N'Femenino', N'1erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (12, N'Luke', N'Brown', CAST(N'2000-08-16' AS Date), N'Masculino', N'1erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (13, N'Erina', N'Manta', CAST(N'1998-03-11' AS Date), N'Femenino', N'4toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (14, N'Melissa', N'Elric', CAST(N'1998-08-02' AS Date), N'Femenino', N'4toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (15, N'Levi', N'Sand', CAST(N'1996-02-27' AS Date), N'Masculino', N'6toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (16, N'Mike', N'Hugs', CAST(N'1998-04-08' AS Date), N'Masculino', N'4toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (17, N'Armin', N'Arleto', CAST(N'1999-08-15' AS Date), N'Masculino', N'3erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (18, N'Mika', N'Snoke', CAST(N'1999-07-15' AS Date), N'Femenino', N'3erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (19, N'Benita', N'Portgas', CAST(N'2000-10-30' AS Date), N'Femenino', N'1erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (20, N'Erwin', N'Jagger', CAST(N'1996-08-15' AS Date), N'Masculino', N'6toSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (21, N'Estevane', N'Lopez', CAST(N'2000-03-04' AS Date), N'Masculino', N'1erSem')
INSERT [dbo].[students] ([studentId], [name], [surname], [birthdate], [gender], [sem]) VALUES (24, N'Fabiola', N'Rodriguez', CAST(N'1996-08-15' AS Date), N'Femenino', N'5toSem')
SET IDENTITY_INSERT [dbo].[students] OFF
SET IDENTITY_INSERT [dbo].[type] ON 

INSERT [dbo].[type] ([typeId], [name]) VALUES (1, N'Algebra')
INSERT [dbo].[type] ([typeId], [name]) VALUES (2, N'CalculoIntegral')
INSERT [dbo].[type] ([typeId], [name]) VALUES (3, N'CalculoDiferencial')
INSERT [dbo].[type] ([typeId], [name]) VALUES (4, N'Fisica')
INSERT [dbo].[type] ([typeId], [name]) VALUES (5, N'Quimica')
INSERT [dbo].[type] ([typeId], [name]) VALUES (6, N'Biologia')
INSERT [dbo].[type] ([typeId], [name]) VALUES (7, N'Astronomia')
INSERT [dbo].[type] ([typeId], [name]) VALUES (8, N'Computacion')
INSERT [dbo].[type] ([typeId], [name]) VALUES (9, N'Logica')
INSERT [dbo].[type] ([typeId], [name]) VALUES (10, N'Terror')
INSERT [dbo].[type] ([typeId], [name]) VALUES (11, N'Romanticismo')
INSERT [dbo].[type] ([typeId], [name]) VALUES (12, N'Naturalismo')
INSERT [dbo].[type] ([typeId], [name]) VALUES (13, N'Humanismo')
INSERT [dbo].[type] ([typeId], [name]) VALUES (14, N'Gotico')
INSERT [dbo].[type] ([typeId], [name]) VALUES (15, N'Historia')
INSERT [dbo].[type] ([typeId], [name]) VALUES (16, N'Tesis')
INSERT [dbo].[type] ([typeId], [name]) VALUES (17, N'Optica')
INSERT [dbo].[type] ([typeId], [name]) VALUES (18, N'Metrologia')
INSERT [dbo].[type] ([typeId], [name]) VALUES (19, N'Telecomunicaciones')
INSERT [dbo].[type] ([typeId], [name]) VALUES (20, N'Aritmetica')
INSERT [dbo].[type] ([typeId], [name]) VALUES (21, N'CalculoDeVariasVariables')
SET IDENTITY_INSERT [dbo].[type] OFF
USE [master]
GO
ALTER DATABASE [Libreria] SET  READ_WRITE 
GO
