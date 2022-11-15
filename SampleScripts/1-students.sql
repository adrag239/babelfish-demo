USE [master]
DROP DATABASE IF EXISTS MyTestDB1
DROP DATABASE IF EXISTS MyTestDB2
CREATE DATABASE MyTestDB1
CREATE DATABASE MyTestDB2

USE [MyTestDB1] --For the rest of the query use the database MyTestDB1
GO
CREATE TABLE [dbo].[Student] (
    [StudentId] [int] NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [Age] [tinyint] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY  
(
    [StudentId] ASC
)
) ON [PRIMARY]
GO

-- Insert some sample data
INSERT INTO [dbo].[Student]([StudentId],[Name],[Age]) VALUES (1,'John',15)
INSERT INTO [dbo].[Student]([StudentId],[Name],[Age]) VALUES (2,'Kate',20)
INSERT INTO [dbo].[Student]([StudentId],[Name],[Age]) VALUES (3,'Sara',65)

USE [MyTestDB2] --For the rest of the query use the database MyTestDB2
GO
CREATE TABLE [dbo].[Student] (
    [StudentId] [int] NOT NULL,
    [Name] [nvarchar](50) NOT NULL,
    [Age] [tinyint] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY  
(
    [StudentId] ASC
)
) ON [PRIMARY]
GO

-- Insert some sample data
INSERT INTO [dbo].[Student]([StudentId],[Name],[Age]) VALUES (10,'Rubi',52)
INSERT INTO [dbo].[Student]([StudentId],[Name],[Age]) VALUES (20,'Jilly',16)
INSERT INTO [dbo].[Student]([StudentId],[Name],[Age]) VALUES (30,'Abdul',30)


USE [MyTestDB1]
SELECT * FROM Student

USE [MyTestDB2]
SELECT * FROM Student


USE [MyTestDB1] -- Use the database MyTestDB1
GO
CREATE SCHEMA Finance  

USE [MyTestDB2] -- Use the database MyTestDB2
GO
CREATE SCHEMA Finance  
