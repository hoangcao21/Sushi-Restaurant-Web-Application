USE [master]
GO
/****** Object:  Database [SushiRestaurant]    Script Date: 2019-07-26 3:09:36 PM ******/
CREATE DATABASE [SushiRestaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SushiRestaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SushiRestaurant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SushiRestaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SushiRestaurant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SushiRestaurant] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SushiRestaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SushiRestaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SushiRestaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SushiRestaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SushiRestaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SushiRestaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [SushiRestaurant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SushiRestaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SushiRestaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SushiRestaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SushiRestaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SushiRestaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SushiRestaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SushiRestaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SushiRestaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SushiRestaurant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SushiRestaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SushiRestaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SushiRestaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SushiRestaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SushiRestaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SushiRestaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SushiRestaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SushiRestaurant] SET RECOVERY FULL 
GO
ALTER DATABASE [SushiRestaurant] SET  MULTI_USER 
GO
ALTER DATABASE [SushiRestaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SushiRestaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SushiRestaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SushiRestaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SushiRestaurant] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SushiRestaurant', N'ON'
GO
ALTER DATABASE [SushiRestaurant] SET QUERY_STORE = OFF
GO
USE [SushiRestaurant]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2019-07-26 3:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](500) NULL,
	[price] [money] NULL,
	[content] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 2019-07-26 3:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[content] [varchar](1000) NULL,
	[image] [varchar](500) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (1, N'Claritas est etiam processus', 15.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (2, N'Duis autem vel eum iriure dolor.', 20.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (3, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (4, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (5, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (6, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (7, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (8, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (9, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (10, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (11, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (12, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (13, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (14, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([id], [productName], [price], [content]) VALUES (15, N'Eodem modo typi, qui nunc nobis videntur.', 25.0000, N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([id], [name], [content], [image]) VALUES (1, NULL, NULL, N'01.jpg')
INSERT [dbo].[Section] ([id], [name], [content], [image]) VALUES (2, N'24 types of sushi rolls', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'02.jpg')
INSERT [dbo].[Section] ([id], [name], [content], [image]) VALUES (3, N'Address and contact:', N'The Sushi Restaurant
|
New York, NY, USA
|
Tel: 12345
|
Email: your-email@your-email.com', NULL)
INSERT [dbo].[Section] ([id], [name], [content], [image]) VALUES (4, N'Opening hours:', N'Monday Closed
|
Tuesday 12 - 22
|
Wednesday 12 - 22
|
Thursday 12 - 22
|
Friday 11 - 23
|
Saturday 11 - 23
|
Sunday 11 - 22', NULL)
INSERT [dbo].[Section] ([id], [name], [content], [image]) VALUES (5, NULL, NULL, N'map.png')
SET IDENTITY_INSERT [dbo].[Section] OFF
/****** Object:  StoredProcedure [dbo].[GetMenus]    Script Date: 2019-07-26 3:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[GetMenus]
@u int,
@v int
as
begin
 SELECT a.id, a.productName, a.price, a.[content] FROM ( 
  SELECT *, ROW_NUMBER() OVER (ORDER BY id) as row 
  FROM dbo.Menu a
 ) a WHERE a.row >= @u and a.row <= @v
end
GO
USE [master]
GO
ALTER DATABASE [SushiRestaurant] SET  READ_WRITE 
GO
