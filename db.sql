USE [master]
GO
/****** Object:  Database [sampleDb3]    Script Date: 3/1/2020 6:04:22 PM ******/
CREATE DATABASE [sampleDb3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sampleDb3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\sampleDb3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sampleDb3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\sampleDb3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [sampleDb3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sampleDb3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sampleDb3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sampleDb3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sampleDb3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sampleDb3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sampleDb3] SET ARITHABORT OFF 
GO
ALTER DATABASE [sampleDb3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [sampleDb3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sampleDb3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sampleDb3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sampleDb3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sampleDb3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sampleDb3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sampleDb3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sampleDb3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sampleDb3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [sampleDb3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sampleDb3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sampleDb3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sampleDb3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sampleDb3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sampleDb3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sampleDb3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sampleDb3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sampleDb3] SET  MULTI_USER 
GO
ALTER DATABASE [sampleDb3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sampleDb3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sampleDb3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sampleDb3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sampleDb3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sampleDb3] SET QUERY_STORE = OFF
GO
USE [sampleDb3]
GO
/****** Object:  Table [dbo].[tblStudents]    Script Date: 3/1/2020 6:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[City] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblStudents] ON 
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (1, N'Mark', N'Male', N'London')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (2, N'John', N'Male', N'Washington')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (3, N'Sara', N'Female', N'Sydney')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (4, N'Tom', N'Male', N'New York')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (5, N'Pam', N'Male', N'Los Angeles')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (6, N'Catherine', N'Female', N'Chicago')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (7, N'Mary', N'Female', N'Houston')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (8, N'Mike', N'Male', N'Sheffield')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (9, N'Rosie', N'Female', N'Manchester')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (10, N'Sasha', N'Female', N'London')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (11, N'Rob', N'Male', N'NewYork')
GO
INSERT [dbo].[tblStudents] ([Id], [Name], [Gender], [City]) VALUES (12, N'Jane', N'Female', N'Paris')
GO
SET IDENTITY_INSERT [dbo].[tblStudents] OFF
GO
USE [master]
GO
ALTER DATABASE [sampleDb3] SET  READ_WRITE 
GO
