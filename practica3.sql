USE [master]
GO
/****** Object:  Database [library]    Script Date: 3/9/2020 7:56:07 PM ******/
CREATE DATABASE [library]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'library', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\library.mdf' , SIZE = 5312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'library_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\library_log.ldf' , SIZE = 7040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [library] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [library] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [library] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [library] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [library] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [library] SET ARITHABORT OFF 
GO
ALTER DATABASE [library] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [library] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [library] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [library] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [library] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [library] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [library] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [library] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [library] SET  DISABLE_BROKER 
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [library] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [library] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [library] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [library] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [library] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [library] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [library] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [library] SET  MULTI_USER 
GO
ALTER DATABASE [library] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [library] SET DB_CHAINING OFF 
GO
ALTER DATABASE [library] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [library] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [library] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [library] SET QUERY_STORE = OFF
GO
USE [library]
GO
/****** Object:  UserDefinedFunction [dbo].[buyukharf]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[buyukharf](@kelime varchar(40))
returns varchar(40)
as
Begin
	Declare @sonuc varchar(40) = '',@i int = 1,@boyut int = len(@kelime),@harf int;
	while(@i<=@boyut)
	Begin
		Set @harf = ascii(substring(@kelime,@i,1))
		if(@harf < 91)
			Set @sonuc += char(@harf)
		else
			Set @sonuc += char(@harf-32)
		Set @i += 1; 
	End
	return @sonuc
End
GO
/****** Object:  Table [dbo].[authors]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[authorId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](70) NULL,
 CONSTRAINT [PK_authors] PRIMARY KEY CLUSTERED 
(
	[authorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authorsFull]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorsFull](
	[autor_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](70) NULL,
 CONSTRAINT [PK__autors__80C6EC52B73D584D] PRIMARY KEY CLUSTERED 
(
	[autor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[bookId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](90) NULL,
	[pagecount] [int] NULL,
	[point] [int] NULL,
	[authorId] [int] NULL,
	[typeId] [int] NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[borrows]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrows](
	[borrowId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NULL,
	[bookId] [int] NULL,
	[takenDate] [datetime] NULL,
	[broughtDate] [datetime] NULL,
 CONSTRAINT [PK_borrows] PRIMARY KEY CLUSTERED 
(
	[borrowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[names]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[names](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NULL,
	[cinsiyet] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sinif]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinif](
	[ad] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 3/9/2020 7:56:08 PM ******/
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
	[class] [varchar](7) NULL,
	[point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[surnames]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[surnames](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[types]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[types](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [FK_books_authors] FOREIGN KEY([authorId])
REFERENCES [dbo].[authors] ([authorId])
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [FK_books_authors]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [FK_books_types] FOREIGN KEY([typeId])
REFERENCES [dbo].[types] ([typeId])
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [FK_books_types]
GO
ALTER TABLE [dbo].[borrows]  WITH CHECK ADD  CONSTRAINT [FK_borrows_books] FOREIGN KEY([bookId])
REFERENCES [dbo].[books] ([bookId])
GO
ALTER TABLE [dbo].[borrows] CHECK CONSTRAINT [FK_borrows_books]
GO
ALTER TABLE [dbo].[borrows]  WITH CHECK ADD  CONSTRAINT [FK_borrows_students] FOREIGN KEY([studentId])
REFERENCES [dbo].[students] ([studentId])
GO
ALTER TABLE [dbo].[borrows] CHECK CONSTRAINT [FK_borrows_students]
GO
/****** Object:  StoredProcedure [dbo].[addBorrows]    Script Date: 3/9/2020 7:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[addBorrows] (@value int)
as Begin
Declare @i int = 0
Declare @s int,@b int,@t datetime = '08.09.2015',@br datetime,@atarih datetime,@sayi int,@s2 int
while(@i<@value)
Begin
	Set @s = floor(rand()*505)
	Set @b = floor(rand()*168)
	Set @sayi = floor(rand()*60*24*600)
	Set @atarih = DATEADD(MI,@sayi,@t);
	Set @s2 = floor(rand()*20*24*60)
	Insert into borrows values(@s,@b,@atarih,DATEADD(MI,@s2,@atarih))
	Set @i += 1
End
End
GO
USE [master]
GO
ALTER DATABASE [library] SET  READ_WRITE 
GO
