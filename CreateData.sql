USE [master]
GO
/****** Object:  Database [DoCav1_4]    Script Date: 11/14/2023 8:54:00 PM ******/
CREATE DATABASE [DoCav1_4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoCav1_4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DoCav1_4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DoCav1_4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DoCav1_4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DoCav1_4] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoCav1_4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoCav1_4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoCav1_4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoCav1_4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoCav1_4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoCav1_4] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoCav1_4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoCav1_4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoCav1_4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoCav1_4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoCav1_4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoCav1_4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoCav1_4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoCav1_4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoCav1_4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoCav1_4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DoCav1_4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoCav1_4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoCav1_4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoCav1_4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoCav1_4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoCav1_4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoCav1_4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoCav1_4] SET RECOVERY FULL 
GO
ALTER DATABASE [DoCav1_4] SET  MULTI_USER 
GO
ALTER DATABASE [DoCav1_4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoCav1_4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoCav1_4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoCav1_4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DoCav1_4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DoCav1_4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DoCav1_4', N'ON'
GO
ALTER DATABASE [DoCav1_4] SET QUERY_STORE = ON
GO
ALTER DATABASE [DoCav1_4] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DoCav1_4]
GO
/****** Object:  Table [dbo].[Pet_Breed]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pet_Breed](
	[id] [nvarchar](50) NOT NULL,
	[breedname] [nvarchar](50) NULL,
	[pet_type] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pet_Item]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pet_Item](
	[id] [nvarchar](50) NOT NULL,
	[pet_item] [varchar](50) NULL,
	[pet_type] [nvarchar](50) NULL,
	[img] [nvarchar](max) NOT NULL,
	[description] [nvarchar](50) NULL,
	[price] [nvarchar](50) NOT NULL,
	[postid] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBookmark]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookmark](
	[postid] [nvarchar](50) NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[createtime] [datetime2](6) NULL,
	[isactive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComment]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComment](
	[id] [nvarchar](50) NOT NULL,
	[content] [nvarchar](500) NOT NULL,
	[isactive] [bit] NOT NULL,
	[isprivate] [bit] NOT NULL,
	[createtime] [datetime2](6) NULL,
	[postid] [nvarchar](50) NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPet]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPet](
	[id] [nvarchar](50) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[gender] [bit] NOT NULL,
	[age] [int] NULL,
	[img] [nvarchar](max) NOT NULL,
	[price] [nvarchar](50) NOT NULL,
	[description] [nvarchar](50) NULL,
	[postid] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPost]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPost](
	[id] [nvarchar](50) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[isactive] [bit] NOT NULL,
	[createtime] [datetime2](6) NULL,
	[issold] [bit] NOT NULL,
	[isexchange] [bit] NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[pet_Breedid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__tblPost__3213E83F13627305] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPostimg]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPostimg](
	[id] [nvarchar](50) NOT NULL,
	[img] [nvarchar](max) NULL,
	[description] [nvarchar](50) NULL,
	[postid] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReact]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isactive] [bit] NOT NULL,
	[createtime] [datetime2](6) NULL,
	[postid] [nvarchar](50) NULL,
	[userid] [nvarchar](50) NOT NULL,
	[commentid] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport](
	[id] [nvarchar](50) NOT NULL,
	[message] [nvarchar](200) NULL,
	[isactive] [bit] NOT NULL,
	[postid] [nvarchar](50) NULL,
	[userid] [nvarchar](50) NOT NULL,
	[commentid] [nvarchar](50) NULL,
	[createtime] [datetime2](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[id] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[dob] [datetime2](6) NULL,
	[gender] [bit] NOT NULL,
	[isactive] [bit] NOT NULL,
	[isban] [bit] NOT NULL,
	[avt] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser_Role]    Script Date: 11/14/2023 8:54:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser_Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[roleid] [int] NOT NULL,
	[datestart] [datetime2](6) NULL,
	[dateend] [datetime2](6) NULL,
	[isactive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'05a82da5-b2fe-44de-af01-204bbae5101b', N'Siberian Husky', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'0bc4dab0-8f4f-426e-a9fc-3a95d8019b6b', N'British Shorthair', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'16281755-79dc-4b5e-b2da-249ae9c034da', N'Scottish Fold', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12', N'Bulldog', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237', N'Labrador Retriever', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'39e03664-88f7-4b47-a86f-1e6d6bd2644b', N'Doberman Pinscher', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'3a13a300-b1b9-405b-859b-b0d216352f42', N'Boxer', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'3d01a9ec-dfd3-401b-96aa-de9a8f12206a', N'Dalmatian', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'4cafc305-6058-4eeb-816b-2aefabb7b9fb', N'German Shepherd', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'4dada948-86d9-444e-a9f9-86b486cb1ed7', N'Dachshund', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3', N'Siamese', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'582112d7-a8d7-4d37-8adf-7ce38e372d55', N'French Bulldog', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'6611e117-deea-4233-a8cb-1031f7bd7881', N'Rottweiler', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'78838ccd-bcb6-442d-9076-cdfb11a1a09b', N'Bengal', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'8904cff7-e44f-4438-b498-76bfa7962200', N'Husky', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'94cec921-909a-428b-bd0a-eb2d3136f252', N'Labrador', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'9b5281f3-7ed7-42b9-a232-b2b7d1f1fc55', N'Beagle', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'a1d2da64-82bc-4c9c-b15b-b8d1b5b9e432', N'Sphynx', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'b1b66766-716d-4a09-86a2-c173e52c0d3e', N'Ragdoll', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'ba24432d-677b-4632-accd-dd100ff88b1f', N'Shih Tzu', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31', N'Persian', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'd6a64ce2-8d0c-48b7-8633-571cffcdba79', N'Mixed', N'Mixed')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'd885c9c1-de86-47a9-bd23-ab339beae959', N'Poodle', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076', N'Golden Retriever', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'eacb2884-43f6-434f-9779-8d3d697c9580', N'Maine Coon', N'Cat')
GO
INSERT [dbo].[Pet_Item] ([id], [pet_item], [pet_type], [img], [description], [price], [postid]) VALUES (N'5838d587-470f-42c6-8f99-09b23797eea1', N'Cat Scratching Post', N'Cat', N'cat-scratcher.jpg', N'Provide a scratching post for Leo''s playtime.', N'15', N'e5b28f45-c02e-4d9c-a542-0a8df174c25a')
INSERT [dbo].[Pet_Item] ([id], [pet_item], [pet_type], [img], [description], [price], [postid]) VALUES (N'9481bfc9-37df-4f05-9e23-af0a25039b9e', N'Dog Bed', N'Dog', N'dog-bed.jpg', N'Include a comfortable bed for Charlie''s naps.', N'25', N'ae222578-9dc3-4010-8217-b0fab84b62c0')
INSERT [dbo].[Pet_Item] ([id], [pet_item], [pet_type], [img], [description], [price], [postid]) VALUES (N'ef90d869-ca2c-4f7f-bca4-2421990d7a67', N'Dog Treats', N'Dog', N'dog-treats.jpg', N'Include a supply of tasty treats for Daisy.', N'10', N'e5b28f45-c02e-4d9c-a542-0a8df174c25a')
GO
SET IDENTITY_INSERT [dbo].[tblBookmark] ON 

INSERT [dbo].[tblBookmark] ([postid], [userid], [id], [createtime], [isactive]) VALUES (N'b2d6496f-34dc-4fbd-a918-805a36c303a1', N'5422582b-35a5-40ee-9288-601e7e7c3a23', 1, CAST(N'2023-11-14T20:51:34.3490000' AS DateTime2), 0)
INSERT [dbo].[tblBookmark] ([postid], [userid], [id], [createtime], [isactive]) VALUES (N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'5422582b-35a5-40ee-9288-601e7e7c3a23', 3, CAST(N'2023-11-14T20:52:53.9200000' AS DateTime2), 1)
INSERT [dbo].[tblBookmark] ([postid], [userid], [id], [createtime], [isactive]) VALUES (N'd77f17b3-cc69-4820-bab0-87979fad6dd2', N'5422582b-35a5-40ee-9288-601e7e7c3a23', 4, CAST(N'2023-11-14T20:53:00.2710000' AS DateTime2), 1)
INSERT [dbo].[tblBookmark] ([postid], [userid], [id], [createtime], [isactive]) VALUES (N'eb33f25d-cb60-49a6-8bd9-6b4783f3c8ea', N'5422582b-35a5-40ee-9288-601e7e7c3a23', 5, CAST(N'2023-11-14T20:53:05.2860000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[tblBookmark] OFF
GO
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (1, N'Dog Chat')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (2, N'Dog Health and Nutrition')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (3, N'Dog Service')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (4, N'Dog Show and Events')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (5, N'Dog Exchange')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (6, N'Cat Chat')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (7, N'Cat Health and Nutrition')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (8, N'Cat Service')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (9, N'Cat Show and Events')
INSERT [dbo].[tblCategory] ([id], [name]) VALUES (10, N'Cat Exchange')
GO
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'12ecf0b7-921d-431f-82a0-0ceebd9250fd', N'This cat service always exceeds my expectations with their amazing cats!', 1, 0, CAST(N'2023-11-14T20:37:20.0090000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'83016dc4-2323-4ccc-a18c-8d2506e61621')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'36b416b8-81b3-4c35-a8d8-e632e02b4a25', N'Their service and care for the cats are truly remarkable!', 1, 0, CAST(N'2023-11-14T20:35:09.9550000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'7ee02806-3473-452b-a49c-7d09f475687d')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'42856cc1-f7a2-4cc0-ac94-17cb122266e5', N'This cat service is the best place to find your furry companion!', 1, 0, CAST(N'2023-11-14T20:38:01.0090000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'8f03618e-7b1a-4813-9369-17d9a13a192c')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'45907aa0-d809-46fc-8495-da22939ac76c', N'I''m fascinated by the range of cats available in this cat service!', 1, 0, CAST(N'2023-11-14T20:37:04.6660000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'824a3677-b07b-42eb-8dc2-2d0b1c2e6c04')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'49b47eb5-a866-4c33-835e-634c42c1df85', N'The cats provided by this service always bring so much happiness!', 1, 0, CAST(N'2023-11-14T20:38:16.0440000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'9305cae5-436f-4b1b-bc0a-c0683ebadaa5')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'4def369c-14f5-40c9-9c24-43c885d9335d', N'I''m amazed by the incredible variety of cats provided by this service!', 1, 0, CAST(N'2023-11-14T20:38:23.0160000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'9623c23a-e578-4b0a-aba3-692a167595bb')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'5538afdd-4cf5-4eef-af13-400eee37fd8a', N'Thank for your sharing.', 1, 0, CAST(N'2023-11-14T20:21:55.9570000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'55347702-a256-4256-9efa-abef44ad7364')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'61fed278-b5d1-4879-80ec-eb863ec58fc8', N'Too happy to see this post.', 1, 0, CAST(N'2023-11-14T20:19:15.6840000' AS DateTime2), N'8a4da630-1411-494a-a74e-f8246f8b0824', N'65b6b2ae-250a-4698-b5cf-f530bf139491')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'8d1bf9af-93a5-4845-bb78-c5a8379df55d', N'The cats from this service bring so much joy and comfort!', 1, 0, CAST(N'2023-11-14T20:37:31.0830000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'838f3f86-2a2b-46b3-a278-0667fb822c36')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'903c1392-053a-470e-b00f-96322eeaec2d', N'The cat service offers an amazing selection of breeds!', 1, 0, CAST(N'2023-11-14T20:35:00.8980000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'7e73a92e-9b1e-4694-824c-5ee440d214ef')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'aed31d52-c0a7-4938-bf22-bc2b21425bf7', N'This cat service offers an incredible variety of cats!', 1, 0, CAST(N'2023-11-14T20:36:16.4850000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'7f0be948-3484-4fa8-8a2b-4fa22c7092f1')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'af169b67-b7c2-4706-ae1d-4a70f612cb57', N'The cats available through this service are simply adorable!', 1, 0, CAST(N'2023-11-14T20:36:23.2590000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'8005d665-ee13-49ae-b6b4-df326ba671e8')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'b909b9b7-1543-4b92-9ec1-e75e7e9f9338', N'Good information.', 1, 0, CAST(N'2023-11-14T20:25:49.1520000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'55347702-a256-4256-9efa-abef44ad7364')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'c3dae44d-ad43-464e-bafb-4759014bbbda', N'This cat service never fails to amaze me with their delightful cats!', 1, 0, CAST(N'2023-11-14T20:36:28.2180000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'80c24f09-5f25-4feb-b4bf-3559ce0bc863')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'cac47a04-663e-4c1e-a411-e6cbab0b0363', N'The variety of cats from this service is simply impressive!', 1, 0, CAST(N'2023-11-14T20:37:56.5880000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'8cf924c1-5bf9-41f4-9155-07775a17dba5')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'cb563c7d-3e51-4cc4-9f4f-64697d690c31', N'I love the diverse range of cats available through this service!', 1, 0, CAST(N'2023-11-14T20:34:48.6070000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'55347702-a256-4256-9efa-abef44ad7364')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'ccd7b3f9-d5cf-4849-b150-6d73c6b09c85', N'This cat service has such a diverse selection of lovely cats!', 1, 0, CAST(N'2023-11-14T20:37:41.1970000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'89c4288b-046b-4fe1-832f-4461362c6dae')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'd621e5d9-d853-4954-82cf-936afed557bf', N'This cat service always delivers the best cats!', 1, 0, CAST(N'2023-11-14T20:38:19.7300000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'93ebc9c5-a62c-4e7f-889f-fa32e756eafd')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'd73f741d-5e22-46de-8057-efda3ced5da8', N'I''m amazed at the quality of cats offered by this cat service!', 1, 0, CAST(N'2023-11-14T20:37:35.7790000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'89a78f94-20f2-4356-a74f-c75f4cfefdd6')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'dcf23608-b986-4048-a10c-c6ef76dd5d18', N'This cat service never fails to amaze me with their charming cats!', 1, 0, CAST(N'2023-11-14T20:37:51.6550000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'8c2d0322-94be-4ee1-a815-00fe6bca4589')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'ddf99556-45b3-4a8c-b90d-4071fe0a9479', N'This cat service offers an exceptional selection of adorable cats!', 1, 0, CAST(N'2023-11-14T20:38:10.2030000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'929e720e-0681-464e-90ea-d660dd11dd74')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'fdc83921-14dd-41fe-b438-ce3b94b9dbaf', N'The cats provided by this service are absolutely delightful!', 1, 0, CAST(N'2023-11-14T20:37:46.1680000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'8ae8d470-00d3-4088-a6f1-a525692821cf')
INSERT [dbo].[tblComment] ([id], [content], [isactive], [isprivate], [createtime], [postid], [userid]) VALUES (N'fffcb564-8ae1-4bd8-a2aa-a32172530712', N'I''m always impressed by the variety of cats available in this service!', 1, 0, CAST(N'2023-11-14T20:38:05.8990000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'90436f24-0003-44f2-90b9-dae7af07a2e6')
GO
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'00dfef15-c5e7-4af8-9fdb-8f1e92527fdb', N'Labrador Retriever Jubilee: Embracing Boundless Affection', N'Labrador Retriever Jubilee - Celebrating Affection and Enthusiasm! Welcome to a jubilant event dedicated to the exuberant affection and boundless enthusiasm of Labrador Retrievers. Renowned for their friendly nature and unwavering loyalty, Labs are true family companions. Witness their joyful demeanor, wagging tails, and expressive eyes that radiate warmth and love. Our showcase is a tribute to their playful spirit and loving disposition. Join us for an occasion filled with wagging tails, wet noses, and a whole lot of love!', 1, CAST(N'2023-11-14T19:28:47.5520000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'02db2bc1-84f1-4234-84f8-df99cd082286', N'Bulldog Lovers Unite', N'Discuss the charming and easygoing nature of Bulldogs. Share tips on Bulldog care and training methods.', 1, CAST(N'2023-11-12T10:30:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 1, N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1', N'Scottish Fold Feline Friends', N'Join the discussion about Scottish Fold cats and their unique folded ears. Share your stories and tips on taking care of Scottish Fold cats.', 1, CAST(N'2023-11-11T15:45:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 6, N'16281755-79dc-4b5e-b2da-249ae9c034da')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'081b6a9b-5e80-4817-ad3f-9ce608964898', N'Labrador Retriever Show Extravaganza', N'Don''t miss the upcoming Labrador Retriever show! Join us for a day of fun and excitement, showcasing the beauty and talents of Labradors.', 1, CAST(N'2023-11-10T08:20:00.0000000' AS DateTime2), 0, 0, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 4, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'136dc94a-8004-416f-ba49-e05aafa0bc81', N'Pet Exchange: Labrador for Golden Retriever', N'Looking to exchange our lovable Labrador Retriever, Max, for a Golden Retriever. Max is friendly, well-trained, and loves playing fetch.', 1, CAST(N'2023-11-09T17:10:00.0000000' AS DateTime2), 0, 1, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 5, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'1597e988-f31e-464b-bbc9-60c0460ce985', N'Poodle Posh Show Extravaganza', N'The Poodle Posh Show is coming soon! Enjoy the grace and elegance of Poodles as they participate in this prestigious event for dog lovers.', 1, CAST(N'2023-11-08T14:55:00.0000000' AS DateTime2), 0, 0, N'b84f2db4-1634-42f8-9775-76e83e114c6f', 4, N'd885c9c1-de86-47a9-bd23-ab339beae959')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'18b31590-c425-458b-86b4-0da67453be26', N'Shih Tzu Specialty Services', N'Shih Tzus are known for their beautiful coats and playful demeanor. Discover specialized pet services, including grooming and socialization, for your Shih Tzu friend.', 1, CAST(N'2023-11-07T12:40:00.0000000' AS DateTime2), 0, 0, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 3, N'ba24432d-677b-4632-accd-dd100ff88b1f')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'1db81ae8-5e70-4789-9917-46ac371f5198', N'Bulldog Bonanza: Embracing Charm and Tenacity', N'Bulldog Bonanza - Celebrating Bulldog Charm and Tenacity! Join us for an exciting celebration dedicated to the charm and tenacity of Bulldogs. These sturdy dogs with their distinctive wrinkled face and muscular build embody courage and determination. Witness their affectionate nature and playful spirit that belies their tough appearance. Our showcase is a tribute to their loyalty and unwavering spirit. Experience the charm and resilience of Bulldogs at our bonanza!', 1, CAST(N'2023-11-14T18:22:00.2570000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'1edfe45f-8a0b-425d-a7bc-c5bb54f071d6', N'Ragdoll Royalty Showtime', N'The Ragdoll Royalty Show is just around the corner! Get ready to be mesmerized by the grace and elegance of Ragdoll cats at this royal feline event.', 1, CAST(N'2023-11-06T09:25:00.0000000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 9, N'b1b66766-716d-4a09-86a2-c173e52c0d3e')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'2023b6de-3333-409a-bd7c-8d4c8e400514', N'Pet Exchange: Golden Retriever & Persian Cat', N'We have a Golden Retriever named Max, and a Persian cat named Luna. We''re looking to exchange Max for a Labrador Retriever and Luna for a Siamese cat.', 1, CAST(N'2023-11-05T18:15:00.0000000' AS DateTime2), 0, 1, N'65b6b2ae-250a-4698-b5cf-f530bf139491', 10, N'd6a64ce2-8d0c-48b7-8633-571cffcdba79')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'22af3732-af50-4511-b573-a651323ade54', N'Ragdoll Cat Enthusiasts', N'Join the discussion about Ragdoll cats, known for their docile nature. Share experiences and tips for raising a Ragdoll cat.', 1, CAST(N'2023-11-04T13:05:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 6, N'b1b66766-716d-4a09-86a2-c173e52c0d3e')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'31f4064a-97fe-4602-8d0a-67b2f6e192b6', N'Dachshund Delights', N'Let''s talk about the charming Dachshunds and their unique features. Share your experiences and advice on caring for Dachshund pups.', 1, CAST(N'2023-11-03T16:50:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 1, N'4dada948-86d9-444e-a9f9-86b486cb1ed7')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'3d46cec0-0e52-411a-9531-b29c5d3d9937', N'Persian Cat Wellness Workshop: Nurturing Health and Vitality', N'Persian Cat Wellness Workshop - Nurturing Your Persian''s Health and Vitality! Join us for an engaging workshop dedicated to the health and vitality of Persian cats. Explore the specific dietary needs, grooming essentials, and common health issues of Persian cats. Gain valuable insights into maintaining their luxurious coats, ensuring proper hydration, and addressing potential health concerns. Our workshop aims to equip Persian cat owners with essential knowledge for ensuring their feline companion''s well-being!', 1, CAST(N'2023-11-14T19:35:06.1170000' AS DateTime2), 0, 0, N'31a7db28-5fbc-4de2-a83c-9ed94ab53712', 7, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'3dad097f-d417-47a7-a0da-394bdeed5560', N'Bengal Cat Wellness Workshop: Promoting Health and Happiness', N'Bengal Cat Wellness Workshop - Enriching Your Bengal''s Health and Happiness! Join us for an interactive workshop focused on the health and happiness of Bengal cats. Explore their specific dietary needs, exercise routines, and potential health issues. Learn about enriching their environment, ensuring mental stimulation, and addressing health concerns. Our workshop aims to provide Bengal cat owners with valuable insights for ensuring the well-being and vitality of their feline companions!', 1, CAST(N'2023-11-14T19:36:18.4640000' AS DateTime2), 0, 0, N'7e71ac07-b027-4304-a048-7831163d7ffe', 7, N'78838ccd-bcb6-442d-9076-cdfb11a1a09b')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'3e5aeb18-c8b7-43dd-9cdf-e989398fad52', N'Labrador Health and Nutrition Seminar: Ensuring Optimal Well-being', N'Labrador Health and Nutrition Seminar - Exploring Optimal Health for Your Labrador! Join us for an informative seminar dedicated to ensuring the optimal health and nutrition of Labrador Retrievers. Learn about the dietary requirements, exercise needs, and common health concerns of Labradors. Discover tips for maintaining a healthy weight, promoting dental hygiene, and ensuring overall well-being. Our seminar aims to provide valuable insights and practical advice for keeping your Labrador happy and healthy!', 1, CAST(N'2023-11-14T19:34:25.5150000' AS DateTime2), 0, 0, N'31a7db28-5fbc-4de2-a83c-9ed94ab53712', 2, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'40c248af-625d-41da-be89-219771d7c902', N'Scottish Fold Cat Services Hub', N'Scottish Fold cats are known for their distinctive ears and friendly nature. Explore premium pet services, including grooming and interactive toys, for your Scottish Fold feline.', 1, CAST(N'2023-11-02T11:30:00.0000000' AS DateTime2), 0, 0, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 3, N'16281755-79dc-4b5e-b2da-249ae9c034da')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'4457ae11-8ac6-44f2-8ce1-56f7ab882975', N'Dachshund Delight Showtime', N'The Dachshund Delight Show is here! Witness the quirky charm and playful spirit of Dachshunds in this fun dog show event for all dog lovers.', 1, CAST(N'2023-11-01T19:00:00.0000000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 4, N'4dada948-86d9-444e-a9f9-86b486cb1ed7')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'45b22eb6-72bb-45ef-b8c9-5760494e173e', N'Rottweiler Rally: Embracing Confidence and Devotion', N'Rottweiler Rally - Celebrating Confidence and Loyalty! Join us for an impressive showcase dedicated to Rottweilers, known for their confidence, strength, and unwavering loyalty. These powerful dogs with a distinctive coat and robust build are the epitome of loyalty and devotion. Witness their confident demeanor and dignified presence as they exhibit their steadfast loyalty and affectionate nature. Our showcase honors the Rottweiler''s protective instincts and loving disposition. Experience the charm and confidence of Rottweilers at our rally!', 1, CAST(N'2023-11-14T19:28:37.3880000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'6611e117-deea-4233-a8cb-1031f7bd7881')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'48f10310-935c-4f04-a5ce-ae640cb5cae2', N'Maine Coon Cat Enthusiasts', N'Let''s discuss the unique characteristics of Maine Coon cats. Share your experiences and tips for Maine Coon owners.', 1, CAST(N'2023-10-31T10:15:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 6, N'eacb2884-43f6-434f-9779-8d3d697c9580')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'4d4134a3-dc54-47ac-84f4-a57df630c991', N'Persian Cat Enthusiasts', N'Join the discussion about Persian cats and their luxurious fur. Share grooming tips and your favorite Persian cat stories.', 1, CAST(N'2023-10-30T12:35:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 1, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'59e89239-677a-41c3-b302-e105177099ca', N'Guide to Raising a Happy Labrador', N'Labrador Retrievers are known for their friendly and outgoing nature. Learn how to care for and train your Labrador.', 1, CAST(N'2023-10-29T14:25:00.0000000' AS DateTime2), 0, 0, N'f02079fb-c290-4ed9-8bea-a978799801e8', 2, N'94cec921-909a-428b-bd0a-eb2d3136f252')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'5acf7dc6-5a41-4e70-8442-328c6f9e8e8b', N'Pet Exchange: Persian Cat for Ragdoll Cat', N'Looking to exchange our Persian cat, Whiskers, for a Ragdoll cat. Whiskers is calm, elegant, and loves lounging on soft pillows.', 1, CAST(N'2023-10-28T07:40:00.0000000' AS DateTime2), 1, 1, N'00299536-a753-42c8-bd07-50091bc2f789', 10, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'5e39e538-0e61-4483-a4d9-3115cb9177d8', N'Dalmatian Delight: Embracing Elegance and Playfulness', N'Dalmatian Delight - A Celebration of Elegance and Playfulness! Join us for an elegant showcase celebrating the unique charm and playful nature of Dalmatians. Known for their distinctive spotted coats and boundless energy, Dalmatians are both elegant and spirited. Witness their graceful movements and expressive eyes that reflect their playful spirit. Our showcase is a tribute to their agility and joyful demeanor. Experience the elegance and energy of Dalmatians at our delightful event!', 1, CAST(N'2023-11-14T19:28:32.2050000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'3d01a9ec-dfd3-401b-96aa-de9a8f12206a')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'607ad137-0272-4ea4-8693-cfd3f51a8a54', N'Pet Exchange: Labrador Retriever for Beagle', N'Looking to exchange our friendly Labrador Retriever, Buddy, for a Beagle. Buddy is playful, obedient, and loves outdoor activities.', 1, CAST(N'2023-10-27T20:05:00.0000000' AS DateTime2), 0, 1, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', 5, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'60cdcc9a-87f1-4d20-8591-37231d0b42fa', N'The Golden Guide: Raising a Happy Retriever', N'Discover the joyful and friendly world of Golden Retrievers. Tips on training and grooming.', 1, CAST(N'2023-10-26T09:55:00.0000000' AS DateTime2), 0, 0, N'987984c2-a8c7-48e8-9429-564a046664d4', 2, N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'6eecf7d3-556c-4952-8c60-d16f7354ed4b', N'Golden Retriever Gala: Embracing Canine Companionship', N'Golden Retriever Gala - A Celebration of Love and Loyalty! Join us for an enchanting event dedicated to the heartwarming companionship and loyalty of Golden Retrievers. These affectionate and intelligent dogs are known for their gentle demeanor and unwavering devotion. Witness their gleaming golden coats and friendly smiles that brighten everyone''s day. Our showcase highlights their versatile abilities and loving nature. From their playful antics to their heart-melting affection, Golden Retrievers embody the true essence of a faithful companion. Come and immerse yourself in a world of wagging tails and endless joy!', 1, CAST(N'2023-11-14T19:29:09.7670000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'7032774e-1dad-4b46-a7bd-8328ecba4514', N'Golden Retriever Pet Services Guide', N'Find premium pet services tailored for Golden Retrievers. From dog training to pet grooming, discover the best options for your furry friend.', 1, CAST(N'2023-10-25T16:30:00.0000000' AS DateTime2), 0, 0, N'a5ea2028-44db-4791-8d1a-a29b04c7e771', 3, N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'71177857-f9b4-4e22-999c-3d267f604680', N'British Shorthair Cat Services', N'Discover premium pet services tailored for British Shorthair cats. From grooming to cat hotels, we''ve got your feline friend covered.', 1, CAST(N'2023-10-24T08:10:00.0000000' AS DateTime2), 0, 0, N'e772ed19-6d87-4a9c-8c56-d84766589db4', 8, N'0bc4dab0-8f4f-426e-a9fc-3a95d8019b6b')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'72af1fb2-ae60-4b34-a66a-0f8d2f31315d', N'The Ultimate Guide to German Shepherd Care', N'German Shepherds are known for their intelligence and loyalty. Learn how to train and care for your German Shepherd companion.', 1, CAST(N'2023-10-23T17:50:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 1, N'4cafc305-6058-4eeb-816b-2aefabb7b9fb')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'73a64ec9-b442-4707-8d59-d0a3a51bdf7d', N'Shih Tzu Tales', N'Join the discussion about Shih Tzu dogs and their sweet and friendly disposition. Share your experiences and insights into Shih Tzu care.', 1, CAST(N'2023-10-22T11:20:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 1, N'ba24432d-677b-4632-accd-dd100ff88b1f')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'74dba9b3-a930-4616-aa57-bb6309c48bba', N'Pet Exchange: Ragdoll Cat for Siamese Cat', N'We''re interested in exchanging our Ragdoll cat, Bella, for a Siamese cat. Bella is gentle, affectionate, and enjoys cuddling with humans.', 1, CAST(N'2023-10-21T13:45:00.0000000' AS DateTime2), 0, 1, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', 10, N'b1b66766-716d-4a09-86a2-c173e52c0d3e')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'7bb454c9-e463-462e-a29b-5b583e047453', N'Pet Exchange: Beagle for Golden Retriever', N'Interested in exchanging our Beagle, Charlie, for a Golden Retriever. Charlie is energetic, friendly, and loves outdoor adventures.', 1, CAST(N'2023-10-20T12:00:00.0000000' AS DateTime2), 0, 1, N'309f160c-b5c9-400e-a70b-cd14bb0d92fd', 5, N'9b5281f3-7ed7-42b9-a232-b2b7d1f1fc55')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'806e66b7-63c8-45e9-8baf-57de23c27c41', N'Maine Coon Cat Services Hub', N'Maine Coon cats are known for their size and personality. Explore premium pet services, including grooming and behavioral training, for your Maine Coon.', 1, CAST(N'2023-10-19T15:15:00.0000000' AS DateTime2), 0, 0, N'a5ea2028-44db-4791-8d1a-a29b04c7e771', 8, N'eacb2884-43f6-434f-9779-8d3d697c9580')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'80caf662-7624-4ec3-999c-01e1d39c5a88', N'Bengal Cat Spectacle', N'The Bengal Cat Spectacle is around the corner! Prepare to witness the wild elegance and beauty of Bengal cats at this unique feline show event.', 1, CAST(N'2023-10-18T19:30:00.0000000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 9, N'78838ccd-bcb6-442d-9076-cdfb11a1a09b')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'814369e6-a32e-41b3-a2ab-c6d363ebcea2', N'Pet Exchange: Siamese for Ragdoll Cat', N'Interested in exchanging our Siamese cat, Bella, for a Ragdoll cat. Bella is affectionate, sociable, and enjoys spending time with humans.', 1, CAST(N'2023-10-17T16:40:00.0000000' AS DateTime2), 0, 1, N'65b6b2ae-250a-4698-b5cf-f530bf139491', 10, N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'82327947-dbd6-48c0-a38a-a59ee3f78f9e', N'Ragdoll Cat Luxury Services', N'Ragdoll cats are gentle giants. Discover specialized pet services, including massage therapy and luxury boarding, to keep your Ragdoll happy.', 1, CAST(N'2023-10-16T14:05:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 8, N'b1b66766-716d-4a09-86a2-c173e52c0d3e')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'84047e46-de04-4f83-882b-c88f022ba956', N'Pet Exchange: Dachshund for Labrador Retriever', N'We''re interested in exchanging our Dachshund, Bella, for a Labrador Retriever. Bella is playful, lively, and loves long walks.', 1, CAST(N'2023-10-15T18:50:00.0000000' AS DateTime2), 0, 1, N'168126aa-9f15-4a70-832a-285276ae39ea', 5, N'4dada948-86d9-444e-a9f9-86b486cb1ed7')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'8a4da630-1411-494a-a74e-f8246f8b0824', N'Boxer Bonanza: Embracing Athleticism and Affection', N'Boxer Bonanza - Celebrating Strength and Playfulness! Join us for a lively celebration of Boxers, a breed known for its strength, intelligence, and playful nature. These spirited dogs, with their muscular build and expressive faces, exude both athleticism and charm. Witness their boundless energy and unwavering loyalty as they showcase their playful antics and affectionate nature. Our showcase pays tribute to the Boxer''s versatility as both a devoted family companion and a vigilant guardian. Come and experience the vibrant spirit and exuberance of Boxers at our bonanza!', 1, CAST(N'2023-11-14T19:28:42.1540000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'3a13a300-b1b9-405b-859b-b0d216352f42')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'91f19bd0-20d3-4e09-b3df-1694de6fd00d', N'German Shepherd Spectacular: Honoring Canine Greatness', N'German Shepherd Spectacular - Unveiling Canine Excellence! Welcome to an event celebrating the intelligence, loyalty, and versatility of German Shepherds. Renowned for their courage and dedication, German Shepherds stand as a symbol of unwavering loyalty and steadfastness. Witness their sleek and powerful physique, coupled with their sharp minds and acute senses. Our showcase is a tribute to their remarkable abilities, whether as loyal companions, working dogs, or guardians. Join us for an opportunity to appreciate their unmatched intellect and admire their noble demeanor.', 1, CAST(N'2023-11-14T19:29:00.3670000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'4cafc305-6058-4eeb-816b-2aefabb7b9fb')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'92b2651a-507e-4741-9c0b-38930d4cbd40', N'Bulldog Pet Services Oasis', N'Bulldogs are known for their laid-back nature. Explore premium pet services, including spa days and home boarding, for your Bulldog companion.', 1, CAST(N'2023-10-12T11:00:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 3, N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'92cce5f5-28cf-4f55-9749-d6245f048145', N'Shih Tzu Serenade: Embracing Elegance and Affection', N'Shih Tzu Serenade - Celebrating Charm and Grace! Join us for a charming showcase dedicated to the elegance and grace of Shih Tzus. These small dogs with a luxurious coat and a captivating expression exude charm and sophistication. Witness their graceful movements and affectionate nature that have made them beloved companions. Our showcase is a tribute to their gentle temperament and delightful presence. Experience the charm and grace of Shih Tzus at our serenade!', 1, CAST(N'2023-11-14T19:28:26.9660000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'ba24432d-677b-4632-accd-dd100ff88b1f')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'98b2461b-f769-4fcb-bf14-f26278f2f6d3', N'Training Tips for Your Husky', N'Husky: How to Train and Care for Your Energetic Companion', 1, CAST(N'2023-10-14T10:25:00.0000000' AS DateTime2), 0, 0, N'f02079fb-c290-4ed9-8bea-a978799801e8', 2, N'8904cff7-e44f-4438-b498-76bfa7962200')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'9eb86d9e-c0d8-4e4a-9de6-8bf64cb32f13', N'Caring for Your Siamese Cat', N'Siamese cats are known for their striking blue eyes and talkative nature. Learn how to care for and entertain your Siamese feline friend.', 1, CAST(N'2023-10-13T07:15:00.0000000' AS DateTime2), 0, 0, N'bafdd9e5-dbcb-4f2b-99e6-0a64e619e3ac', 6, N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'9f240f0e-015b-4c64-8c12-145643e84c17', N'Siamese Cat Show Spectacular', N'Get ready for the Siamese Cat Show! Witness the elegance and charm of Siamese cats in this exciting event for all cat enthusiasts.', 1, CAST(N'2023-10-11T09:45:00.0000000' AS DateTime2), 0, 0, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 9, N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'9fba4a6d-1987-4334-bb58-69c2fcbe8ed9', N'Maine Coon Cat Showcase', N'Join us for the Maine Coon Cat Extravaganza! Marvel at the majestic beauty and friendly nature of Maine Coon cats in this grand event.', 1, CAST(N'2023-10-12T11:00:00.0000000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 9, N'eacb2884-43f6-434f-9779-8d3d697c9580')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'a62e13ba-54d7-4446-914f-cd89ab45fce1', N'Persian Cat Grooming and Care', N'Persian cats are known for their long and luxurious coats. Explore premium pet services, including grooming and pampering, to keep your Persian cat in top shape.', 1, CAST(N'2023-10-10T17:55:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 8, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'a9b251f9-4088-4138-8f3a-04a259d9aa63', N'Grooming Tips for Your Poodle', N'Poodles are known for their intelligence and elegance. Learn how to care for and groom your Poodle.', 1, CAST(N'2023-10-09T13:25:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 2, N'd885c9c1-de86-47a9-bd23-ab339beae959')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ad3af4e6-a572-4cca-8fe7-59d75d4d2a2c', N'Boxer Dog Services Hub', N'Explore top-notch pet services for Boxer dogs. From training to daycare, we''ve got all your Boxer''s needs covered.', 1, CAST(N'2023-10-08T12:50:00.0000000' AS DateTime2), 0, 0, N'e772ed19-6d87-4a9c-8c56-d84766589db4', 3, N'3a13a300-b1b9-405b-859b-b0d216352f42')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ae222578-9dc3-4010-8217-b0fab84b62c0', N'Pet Exchange: Labrador Retriever & Ragdoll Cat', N'We have a Labrador Retriever named Charlie and a Ragdoll cat named Whiskers. We''re looking to exchange Charlie for a Beagle and Whiskers for a Maine Coon cat.', 1, CAST(N'2023-10-07T08:30:00.0000000' AS DateTime2), 0, 1, N'65b6b2ae-250a-4698-b5cf-f530bf139491', 10, N'd6a64ce2-8d0c-48b7-8633-571cffcdba79')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'Sphynx Cat Grooming and Care', N'Sphynx cats have unique grooming needs. Discover specialized pet services for Sphynx cats, including skin care and spa treatments.', 1, CAST(N'2023-10-06T16:15:00.0000000' AS DateTime2), 0, 0, N'e772ed19-6d87-4a9c-8c56-d84766589db4', 8, N'a1d2da64-82bc-4c9c-b15b-b8d1b5b9e432')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'b2d6496f-34dc-4fbd-a918-805a36c303a1', N'Beagle Pet Services Directory', N'Beagles are energetic and social dogs. Explore pet services including group play and agility training tailored for your Beagle.', 1, CAST(N'2023-10-05T19:40:00.0000000' AS DateTime2), 0, 0, N'a5ea2028-44db-4791-8d1a-a29b04c7e771', 3, N'9b5281f3-7ed7-42b9-a232-b2b7d1f1fc55')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'be49ff82-84df-44ac-9b9e-f1997516a713', N'Poodle Pet Services Center', N'Discover a wide range of pet services for Poodles. From grooming to therapy, we have everything you need to keep your Poodle happy and healthy.', 1, CAST(N'2023-10-04T14:10:00.0000000' AS DateTime2), 0, 0, N'a5ea2028-44db-4791-8d1a-a29b04c7e771', 3, N'd885c9c1-de86-47a9-bd23-ab339beae959')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'bfd46c19-42a1-4d97-a670-55e4da0e90d2', N'Maine Coon Cat Showcase', N'Join us for the Maine Coon Cat Extravaganza! Marvel at the majestic beauty and friendly nature of Maine Coon cats in this grand event for feline enthusiasts.', 1, CAST(N'2023-10-03T10:45:00.0000000' AS DateTime2), 0, 0, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 9, N'eacb2884-43f6-434f-9779-8d3d697c9580')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'c09c62e6-2f9b-4267-b4cf-733ec34deacf', N'Pet Exchange: Siamese Cat for Persian Cat', N'Looking to exchange our Siamese cat, Luna, for a Persian cat. Luna is affectionate, vocal, and enjoys human company.', 1, CAST(N'2023-10-02T15:35:00.0000000' AS DateTime2), 0, 1, N'1cfbf661-f9dc-42a7-8299-61909766f9de', 10, N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'c8c0326d-5ccd-40f7-a2af-53520acc420e', N'Golden Retriever Extravaganza', N'Join us for a Golden Retriever Extravaganza! A celebration of Golden Retrievers'' intelligence, playfulness, and loyalty.', 1, CAST(N'2023-11-14T18:05:48.6640000' AS DateTime2), 0, 0, N'6f295afa-5c46-4b52-a292-3fb97ed4544a', 9, N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'c959e55f-c418-4ac6-b5d4-e0ce18c1d18b', N'Meow Madness', N'Meow Madness - A Maine Coon Cat Spectacle! Experience the elegance and majesty of Maine Coon cats in this feline extravaganza.', 1, CAST(N'2023-11-14T18:05:55.1510000' AS DateTime2), 0, 0, N'6f295afa-5c46-4b52-a292-3fb97ed4544a', 9, N'eacb2884-43f6-434f-9779-8d3d697c9580')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'cbbbc95b-d189-4ed6-bdcc-682b3da3b51f', N'Persian Cat Showtime Extravaganza', N'Get ready for the Persian Cat Showcase! Marvel at the luxurious coats and elegance of Persian cats at this grand feline show event.', 1, CAST(N'2023-10-01T08:05:00.0000000' AS DateTime2), 0, 0, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 9, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ce74052a-4287-4e7d-a88b-dcfd617ea243', N'Dachshund Delights - Pet Services', N'Dachshunds are known for their unique shape and spirited personality. Explore specialized pet services, including agility training and custom attire for your Dachshund.', 1, CAST(N'2023-09-30T17:20:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 3, N'4dada948-86d9-444e-a9f9-86b486cb1ed7')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'd04dc3b1-73d5-403b-a840-e70decf0cd30', N'Siamese Soiree: Embracing Elegance and Affection', N'Siamese Soiree - Embrace Feline Elegance and Affection! Welcome to a charming evening celebrating the elegance and affection of Siamese cats. These sleek and sociable cats with their striking blue eyes and distinctive coloration are captivating companions. Witness their vocal and affectionate nature that sets them apart. Our showcase is a tribute to their loyalty and lively spirit. Experience the grace and affection of Siamese cats at our delightful soiree!', 1, CAST(N'2023-11-14T19:28:13.1040000' AS DateTime2), 0, 0, N'31a7db28-5fbc-4de2-a83c-9ed94ab53712', 9, N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'd1652fbc-b05f-440f-b75f-49e3fbec6690', N'Golden Retriever Gala Showtime', N'The Golden Retriever Gala is coming soon! Be part of the joy and playfulness of Golden Retrievers at this exciting dog show event for dog lovers of all ages.', 1, CAST(N'2023-09-29T19:25:00.0000000' AS DateTime2), 0, 0, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 4, N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'd1ffd6b9-9480-41e6-87c7-98319e23569b', N'Maine Coon Health Symposium: Insights for Well-being', N'Maine Coon Health Symposium - Understanding Your Maine Coon''s Well-being! Engage in an enlightening symposium dedicated to the health and wellness of Maine Coon cats. Delve into the specific nutritional requirements, grooming essentials, and common health considerations for Maine Coons. Discover strategies for ensuring their optimal health, addressing dietary needs, and promoting their well-being. Our symposium aims to provide a comprehensive understanding of Maine Coon health for their dedicated owners!', 1, CAST(N'2023-11-14T19:35:28.6030000' AS DateTime2), 0, 0, N'7e71ac07-b027-4304-a048-7831163d7ffe', 7, N'eacb2884-43f6-434f-9779-8d3d697c9580')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'd77f17b3-cc69-4820-bab0-87979fad6dd2', N'Scottish Fold Care Seminar: Fostering Well-being', N'Scottish Fold Care Seminar - Nurturing Your Scottish Fold''s Well-being! Attend an enlightening seminar dedicated to the health and care of Scottish Fold cats. Explore their unique nutritional requirements, grooming needs, and potential health concerns. Discover best practices for maintaining their distinctive folded ears, promoting a balanced diet, and ensuring their overall health. Our seminar aims to provide essential insights into Scottish Fold care for their dedicated owners!', 1, CAST(N'2023-11-14T19:35:55.1430000' AS DateTime2), 0, 0, N'7e71ac07-b027-4304-a048-7831163d7ffe', 7, N'16281755-79dc-4b5e-b2da-249ae9c034da')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'd87ac06d-3b8b-4520-84de-4376e3c6b3e5', N'Labrador Pet Services Directory', N'Looking for reliable pet services for your Labrador? Explore dog walking, grooming, and pet-sitting options for Labradors in your area.', 1, CAST(N'2023-09-28T13:50:00.0000000' AS DateTime2), 0, 0, N'e772ed19-6d87-4a9c-8c56-d84766589db4', 3, N'94cec921-909a-428b-bd0a-eb2d3136f252')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'e3cec6ef-7bf5-43e6-b3c5-ea971cf1d7f1', N'Siamese Cat Care Services', N'Siamese cats require special care. Explore top pet services, including nutritional advice and grooming, designed for your Siamese feline friend.', 1, CAST(N'2023-09-27T12:55:00.0000000' AS DateTime2), 0, 0, N'a5ea2028-44db-4791-8d1a-a29b04c7e771', 8, N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'e5b28f45-c02e-4d9c-a542-0a8df174c25a', N'Pet Exchange: Shih Tzu & Bengal Cat', N'We have a Shih Tzu named Daisy and a Bengal cat named Leo. We''re looking to exchange Daisy for a Dachshund and Leo for a Siamese cat.', 1, CAST(N'2023-09-26T14:45:00.0000000' AS DateTime2), 0, 1, N'65b6b2ae-250a-4698-b5cf-f530bf139491', 10, N'd6a64ce2-8d0c-48b7-8633-571cffcdba79')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'eb33f25d-cb60-49a6-8bd9-6b4783f3c8ea', N'Doberman Pinscher Showcase: Embracing Elegance and Vigilance', N'Doberman Pinscher Showcase - A Tribute to Elegance and Vigilance! Join us for an exclusive event celebrating the grace, loyalty, and vigilance of Doberman Pinschers. Known for their sleek coats and alert expressions, Dobermans embody a perfect blend of elegance and strength. Witness their regal stance and keen intelligence that sets them apart. Our showcase is a salute to their loyalty as fearless protectors and affectionate companions. Experience the charisma and noble presence of Doberman Pinschers at our event, where their loyalty and elegance take center stage!', 1, CAST(N'2023-11-14T19:28:55.2060000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'39e03664-88f7-4b47-a86f-1e6d6bd2644b')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ec3c42e1-3109-4389-85d1-f66282c535a6', N'Bengal Cat Services Center', N'Bengal cats are known for their energetic nature. Explore specialized pet services, including agility training and interactive toys, for your Bengal feline.', 1, CAST(N'2023-09-25T16:00:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 8, N'78838ccd-bcb6-442d-9076-cdfb11a1a09b')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'eda11cbb-a04d-4e5d-9fb4-2e11cac7429a', N'Beagle Owners'' Forum', N'Join our discussion about Beagles and their playful nature. Share your Beagle stories and training tips!', 1, CAST(N'2023-09-24T11:05:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 1, N'9b5281f3-7ed7-42b9-a232-b2b7d1f1fc55')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ee4d7692-89a2-45c0-9cd5-7f57aae972b8', N'Shih Tzu Showtime Spectacle', N'The Shih Tzu Show Extravaganza is here! Witness the beauty and charm of Shih Tzus in this delightful dog show event for all dog lovers.', 1, CAST(N'2023-11-13T15:27:18.2570000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 4, N'ba24432d-677b-4632-accd-dd100ff88b1f')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ef68552c-0e3b-4f5f-805f-23834b0f3838', N'Bulldog Bonanza: Embracing Charm and Tenacity', N'Bulldog Bonanza - Celebrating Bulldog Charm and Tenacity! Join us for an exciting celebration dedicated to the charm and tenacity of Bulldogs. These sturdy dogs with their distinctive wrinkled face and muscular build embody courage and determination. Witness their affectionate nature and playful spirit that belies their tough appearance. Our showcase is a tribute to their loyalty and unwavering spirit. Experience the charm and resilience of Bulldogs at our bonanza!', 1, CAST(N'2023-11-14T19:28:20.7290000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'fed76a42-9e8b-4dd6-8140-98d876e4b174', N'Siberian Husky Soiree: A Night of Husky Splendor', N'Siberian Husky Soiree - Embrace the Elegance of Huskies! Join us for an evening celebrating the majestic beauty and spirited nature of Siberian Huskies. These stunning dogs, with their striking coats and piercing blue eyes, captivate all who encounter them. Witness their athletic build and graceful gait as they exude an aura of strength and resilience. Our showcase honors their independent yet friendly temperament and their love for adventure. From their charming vocalizations to their playful antics, Siberian Huskies are a breed apart. Embrace this opportunity to experience the allure and charm of these magnificent creatures!', 1, CAST(N'2023-11-14T19:29:04.8010000' AS DateTime2), 0, 0, N'7ee02806-3473-452b-a49c-7d09f475687d', 4, N'05a82da5-b2fe-44de-af01-204bbae5101b')
GO
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'013632c2-a7dc-44ac-8ca6-f582f2ee4485', N'siamese-cat-image1.jpg', N'Adorable Siamese kitten.', N'9eb86d9e-c0d8-4e4a-9de6-8bf64cb32f13')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'0151ce80-bbf5-49fe-91e1-b7a05e3366cb', N'siamese-cat-image2.jpg', N'Siamese cat enjoying a sunbeam.', N'9eb86d9e-c0d8-4e4a-9de6-8bf64cb32f13')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'0b6a2d94-045d-4ad9-9a6c-2c82a1d2a2e0', N'husky-image1.jpg', N'A cute Husky puppy.', N'98b2461b-f769-4fcb-bf14-f26278f2f6d3')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'0cd3501b-5b55-4dbe-9e79-5749da3047f8', N'scottish-fold-image2.jpg', N'Scottish Fold cat enjoying a sunny spot.', N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'13a62b0c-41d9-437a-ba8f-60fdffde3901', N'golden-retriever-service-image2.jpg', N'Happy Golden Retriever during obedience training.', N'7032774e-1dad-4b46-a7bd-8328ecba4514')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'192ed7d6-841f-489c-8103-b1a52ec67163', N'bengal-service-image1.jpg', N'Energetic Bengal cat during agility training.', N'ec3c42e1-3109-4389-85d1-f66282c535a6')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'1bf6dd65-8f6c-4d0e-ad96-20aba1b63135', N'labrador-health-image1.jpg', N'Labrador Retrievers enjoying a healthy lifestyle.', N'3e5aeb18-c8b7-43dd-9cdf-e989398fad52')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'1cac3d78-9587-4a46-918f-4fccacab6eb8', N'dachshund-show-image1.jpg', N'Dachshunds showcasing their unique charm on stage.', N'4457ae11-8ac6-44f2-8ce1-56f7ab882975')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'22347f20-6309-4165-bcf5-e4372e155062', N'british-shorthair-service-image2.jpg', N'British Shorthair in a cozy cat hotel.', N'71177857-f9b4-4e22-999c-3d267f604680')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'28977d92-486f-4caa-975e-fab09b97ffcf', N'german-shepherd-image2.jpg', N'German Shepherd enjoying a hike.', N'72af1fb2-ae60-4b34-a66a-0f8d2f31315d')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'2be0d8bf-fef8-47fa-b676-ddaf8ea27349', N'golden-retriever-service-image1.jpg', N'Golden Retriever getting a spa treatment.', N'7032774e-1dad-4b46-a7bd-8328ecba4514')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'2e3f24e8-8c58-44d5-95ce-cb282980dc28', N'maine-coon-service-image2.jpg', N'Happy Maine Coon during behavioral training.', N'806e66b7-63c8-45e9-8baf-57de23c27c41')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'32302013-3518-4d6a-af74-9b978e297723', N'ragdoll-cat-image1.jpg', N'Beautiful Ragdoll cat.', N'22af3732-af50-4511-b573-a651323ade54')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'3840adc4-325d-4ab5-a969-89a8f26aca96', N'persian-cat-image1.jpg', N'Elegant Persian cat.', N'4d4134a3-dc54-47ac-84f4-a57df630c991')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'39d24f8c-bb13-4764-a21c-1f5a1568deff', N'scottish-fold-service-image2.jpg', N'Happy Scottish Fold playing with interactive toys.', N'40c248af-625d-41da-be89-219771d7c902')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'3bc83932-b4db-4c75-b5af-8c5c139c4e48', N'siamese-service-image2.jpg', N'Healthy Siamese cat with a nutritious meal.', N'e3cec6ef-7bf5-43e6-b3c5-ea971cf1d7f1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'3fbd45a4-6987-41ae-8467-0792c9da9c6a', N'poodle-service-image2.jpg', N'Poodle enjoying therapy sessions.', N'be49ff82-84df-44ac-9b9e-f1997516a713')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'401b57e8-0edf-4db3-b6fe-734831fbb6a0', N'labrador-image2.jpg', N'Labrador enjoying a day at the park.', N'59e89239-677a-41c3-b302-e105177099ca')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'456ab3b1-c5e0-4489-9457-e7606a2c33a9', N'british-shorthair-service-image1.jpg', N'British Shorthair enjoying a spa day.', N'71177857-f9b4-4e22-999c-3d267f604680')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'481ff840-b0db-4c23-99d2-9ba2a38e4f88', N'siamese-exchange-image2.jpg', N'Bella cuddling with her favorite toy.', N'814369e6-a32e-41b3-a2ab-c6d363ebcea2')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'4cd5f243-4350-4a1c-8e44-26ab9753fbf2', N'siamese-service-image1.jpg', N'Siamese cat enjoying a grooming session.', N'e3cec6ef-7bf5-43e6-b3c5-ea971cf1d7f1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'50e1b267-1335-4322-ae05-a59ad6297d7f', N'siamese-exchange-image1.jpg', N'Bella, our Siamese cat, relaxing on a sunny day.', N'814369e6-a32e-41b3-a2ab-c6d363ebcea2')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'519a2a75-f7fb-4e06-933f-6e7259e801db', N'labrador-image1.jpg', N'Adorable Labrador puppy.', N'59e89239-677a-41c3-b302-e105177099ca')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'5a580fb8-373b-4798-a180-194ae22490ea', N'boxer-service-image2.jpg', N'Happy Boxer enjoying playtime at a dog daycare.', N'ad3af4e6-a572-4cca-8fe7-59d75d4d2a2c')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'61d51871-f516-4446-a023-6e1e5981ef79', N'poodle-show-image1.jpg', N'Poodles in their stylish show attire.', N'1597e988-f31e-464b-bbc9-60c0460ce985')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'632ff498-f869-45e1-bb0c-d986f82526eb', N'dachshund-service-image1.jpg', N'Energetic Dachshund mastering agility training.', N'ce74052a-4287-4e7d-a88b-dcfd617ea243')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'6b491e8f-ecc9-4ca1-8243-df3d03ad2318', N'persian-cat-image2.jpg', N'Persian cat relaxing in style.', N'4d4134a3-dc54-47ac-84f4-a57df630c991')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'6c2a8ea4-56c3-481d-a1be-6dc92dd79e41', N'maine-coon-service-image1.jpg', N'Maine Coon enjoying a grooming session.', N'806e66b7-63c8-45e9-8baf-57de23c27c41')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'6d3bc4c7-2ee5-48ba-864f-787efcf62243', N'shihtzu-image2.jpg', N'Shih Tzu enjoying a cuddle session.', N'73a64ec9-b442-4707-8d59-d0a3a51bdf7d')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'702e63b7-c930-4a23-aa79-d6b701a63b8f', N'maine-coon-image1.jpg', N'A beautiful Maine Coon cat.', N'48f10310-935c-4f04-a5ce-ae640cb5cae2')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'72af716c-3af8-4b6a-a84a-8d930742db81', N'labrador-show-image2.jpg', N'Happy Labradors competing in agility challenges.', N'081b6a9b-5e80-4817-ad3f-9ce608964898')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'72cf1de4-4f6f-477c-ae9d-40c1027ef97a', N'poodle-image1.jpg', N'Adorable Poodle puppy.', N'a9b251f9-4088-4138-8f3a-04a259d9aa63')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'777a3435-e824-4b8f-ac62-150ee40c7088', N'labrador-service-image1.jpg', N'Happy Labrador after a grooming session.', N'd87ac06d-3b8b-4520-84de-4376e3c6b3e5')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'782affd3-be65-4bfd-bc80-b006006b8440', N'shihtzu-service-image1.jpg', N'Shih Tzu enjoying a grooming session.', N'18b31590-c425-458b-86b4-0da67453be26')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'7885a9be-4d22-47d1-8eae-bd7c2482533e', N'persian-cat-health-image1.jpg', N'Persian cats showcasing their elegance and beauty.', N'3d46cec0-0e52-411a-9531-b29c5d3d9937')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'7998881d-a9f2-4744-a01c-af02a5c99414', N'golden-retriever-2.jpg', N'Golden Retriever enjoying a day at the beach.', N'60cdcc9a-87f1-4d20-8591-37231d0b42fa')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'7d76555f-13b9-451a-9e2c-4e45d16b0542', N'bulldog-image2.jpg', N'Bulldog enjoying a day at the park.', N'02db2bc1-84f1-4234-84f8-df99cd082286')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'88029c47-f128-4ed1-a1cf-41c3a626f6b1', N'dachshund-exchange-image.jpg', N'Bella, our Dachshund, having fun in the backyard.', N'84047e46-de04-4f83-882b-c88f022ba956')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'884a179b-8774-44b8-a477-4c16b857f1a2', N'ragdoll-cat-image2.jpg', N'Ragdoll cat enjoying a cozy nap.', N'22af3732-af50-4511-b573-a651323ade54')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'8ae1e27a-b38e-469f-bb1f-6638eeb4720c', N'siamese-show-image2.jpg', N'Judges admiring the beauty of Siamese cats.', N'9f240f0e-015b-4c64-8c12-145643e84c17')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'8c64cadf-1b8d-401e-93c8-5bfd6af5012b', N'poodle-show-image2.jpg', N'Poodles showcasing their tricks and talents.', N'1597e988-f31e-464b-bbc9-60c0460ce985')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'8ead6cad-db2f-4de7-bc6f-dc76e7908832', N'maine-coon-show-image1.jpg', N'Maine Coon cats in their glory at the show.', N'9fba4a6d-1987-4334-bb58-69c2fcbe8ed9')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'8f3bf26d-4c66-4014-a8c2-319c973c2918', N'german-shepherd-image1.jpg', N'Adorable German Shepherd puppy.', N'72af1fb2-ae60-4b34-a66a-0f8d2f31315d')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'918c0d3a-66cc-4f7c-b875-8a0e9314a1a9', N'beagle-service-image1.jpg', N'Beagle enjoying group playtime.', N'b2d6496f-34dc-4fbd-a918-805a36c303a1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'9425d9bd-b039-4c1b-90fa-001dc2df2724', N'scottish-fold-image1.jpg', N'Adorable Scottish Fold kitten with folded ears.', N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'9c28e48d-718c-4870-9967-4c1e8c595c3d', N'scottish-fold-service-image1.jpg', N'Scottish Fold cat enjoying a grooming session.', N'40c248af-625d-41da-be89-219771d7c902')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'a15f5161-5005-47b5-a79c-ef6e32d3c7bc', N'sphynx-service-image1.jpg', N'Sphynx cat receiving a skin care treatment.', N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'c5d02276-4a5b-4e9a-be43-9042ba815bc7', N'dachshund-service-image2.jpg', N'Dachshund in stylish custom attire.', N'ce74052a-4287-4e7d-a88b-dcfd617ea243')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'c7b600b4-f47e-4681-bee1-c71f646d735b', N'beagle-image2.jpg', N'Beagle enjoying a day at the park.', N'eda11cbb-a04d-4e5d-9fb4-2e11cac7429a')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'c8b52f33-8d18-4f2b-955e-3bf1253648a1', N'poodle-service-image1.jpg', N'Poodle at a grooming salon.', N'be49ff82-84df-44ac-9b9e-f1997516a713')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'c9ab7de8-7a7b-4f09-9c99-15e2184d1630', N'sphynx-service-image2.jpg', N'Relaxed Sphynx cat enjoying a spa day.', N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'ccbedf10-2c49-4c41-914a-be62b4cfaee5', N'husky-image2.jpg', N'Husky enjoying outdoor play.', N'98b2461b-f769-4fcb-bf14-f26278f2f6d3')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'cf41886b-e8c9-4d57-9ec1-8323ad643464', N'bengal-service-image2.jpg', N'Bengal cat enjoying interactive toys.', N'ec3c42e1-3109-4389-85d1-f66282c535a6')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd01abb47-730a-44e2-a6f4-d42222282ed0', N'poodle-image2.jpg', N'Poodle looking dapper after grooming.', N'a9b251f9-4088-4138-8f3a-04a259d9aa63')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd121d5ed-26bc-4d36-bb1e-f09a4c1c8180', N'persian-service-image1.jpg', N'Persian cat enjoying a grooming session.', N'a62e13ba-54d7-4446-914f-cd89ab45fce1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd27caa53-2e17-410f-9631-48d79495cb68', N'siamese-exchange-image.jpg', N'Luna, our Siamese cat, relaxing on a sunny day.', N'c09c62e6-2f9b-4267-b4cf-733ec34deacf')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd3469db2-d56a-49bd-8a15-4bbfadf76f1c', N'labrador-show-image1.jpg', N'Labrador Retriever during a talent display.', N'081b6a9b-5e80-4817-ad3f-9ce608964898')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd6512e8e-8611-482c-9bea-020838e43a0c', N'bulldog-image1.jpg', N'Adorable Bulldog puppy.', N'02db2bc1-84f1-4234-84f8-df99cd082286')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd678c999-3d4d-4aa0-9be6-d564ec86b6f8', N'maine-coon-show-image1.jpg', N'Maine Coon cats in their glory at the show.', N'bfd46c19-42a1-4d97-a670-55e4da0e90d2')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd75b1456-66eb-47e9-965c-772b27da4502', N'maine-coon-image2.jpg', N'Maine Coon cat enjoying a cozy nap.', N'48f10310-935c-4f04-a5ce-ae640cb5cae2')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd822a589-e990-4dee-b7e3-7862a423f25d', N'bulldog-service-image1.jpg', N'Relaxed Bulldog during a spa day.', N'92b2651a-507e-4741-9c0b-38930d4cbd40')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'd8a87000-fcfd-462a-bdb3-be557ff4fef6', N'dachshund-image1.jpg', N'Cute Dachshund puppy.', N'31f4064a-97fe-4602-8d0a-67b2f6e192b6')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'dac362e4-5bbb-43a6-a378-866eb0b15f0c', N'shihtzu-image1.jpg', N'Cute Shih Tzu puppy.', N'73a64ec9-b442-4707-8d59-d0a3a51bdf7d')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'db019622-e52e-48ab-b837-ea570db0a335', N'dachshund-image2.jpg', N'Dachshund enjoying a playful moment.', N'31f4064a-97fe-4602-8d0a-67b2f6e192b6')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'ddad7ac1-8bf1-4a6b-aeca-82346c5c58cd', N'bulldog-service-image2.jpg', N'Bulldog enjoying cozy home boarding.', N'92b2651a-507e-4741-9c0b-38930d4cbd40')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'dfbdb694-c7d9-4aed-ada9-dc6468d849ac', N'beagle-service-image2.jpg', N'Beagle mastering agility training.', N'b2d6496f-34dc-4fbd-a918-805a36c303a1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'e432a2e8-654c-4661-8af7-4900122e5c3a', N'boxer-service-image1.jpg', N'Boxer dog at a professional training session.', N'ad3af4e6-a572-4cca-8fe7-59d75d4d2a2c')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'f1dca443-ffc2-4d0e-b8a1-d46c20d43ed2', N'siamese-show-image1.jpg', N'Siamese cat gracefully parading in the show.', N'9f240f0e-015b-4c64-8c12-145643e84c17')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'f563a144-d28d-412f-a846-dd270dd30a40', N'golden-retriever-1.jpg', N'Meet our lovely Golden Retriever, Daisy.', N'60cdcc9a-87f1-4d20-8591-37231d0b42fa')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'f577b71c-ebf0-42d1-8729-8e605fe85c65', N'beagle-image1.jpg', N'Adorable Beagle puppy.', N'eda11cbb-a04d-4e5d-9fb4-2e11cac7429a')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'f8f2e76a-d010-4104-84ab-a0fc9fdd7a42', N'persian-service-image2.jpg', N'Persian cat in a cozy pet spa.', N'a62e13ba-54d7-4446-914f-cd89ab45fce1')
GO
SET IDENTITY_INSERT [dbo].[tblReact] ON 

INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (1, 1, CAST(N'2023-11-14T19:40:14.3950000' AS DateTime2), N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1', N'824a3677-b07b-42eb-8dc2-2d0b1c2e6c04', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (2, 1, CAST(N'2023-11-14T19:51:49.8360000' AS DateTime2), N'00dfef15-c5e7-4af8-9fdb-8f1e92527fdb', N'5422582b-35a5-40ee-9288-601e7e7c3a23', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (3, 1, CAST(N'2023-11-14T19:51:54.1960000' AS DateTime2), N'02db2bc1-84f1-4234-84f8-df99cd082286', N'55347702-a256-4256-9efa-abef44ad7364', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (4, 1, CAST(N'2023-11-14T19:51:57.7420000' AS DateTime2), N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1', N'5d6ab49a-422b-467d-bbbe-56a713f6fcc9', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (5, 1, CAST(N'2023-11-14T19:52:00.9790000' AS DateTime2), N'081b6a9b-5e80-4817-ad3f-9ce608964898', N'60031ecb-fde0-44cc-a44e-a6e38537a230', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (6, 1, CAST(N'2023-11-14T19:52:05.9610000' AS DateTime2), N'136dc94a-8004-416f-ba49-e05aafa0bc81', N'600a9e9b-1eef-497b-8e96-db59d1edc521', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (7, 1, CAST(N'2023-11-14T19:52:09.6530000' AS DateTime2), N'1597e988-f31e-464b-bbc9-60c0460ce985', N'6040ed1e-c0a8-4bf7-b93b-3948b96e9e53', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (8, 1, CAST(N'2023-11-14T19:52:14.1640000' AS DateTime2), N'18b31590-c425-458b-86b4-0da67453be26', N'65b6b2ae-250a-4698-b5cf-f530bf139491', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (9, 1, CAST(N'2023-11-14T19:52:17.9670000' AS DateTime2), N'1db81ae8-5e70-4789-9917-46ac371f5198', N'65ec04f0-6f59-4949-a08a-42d74c689ee5', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (10, 1, CAST(N'2023-11-14T19:52:21.1730000' AS DateTime2), N'1edfe45f-8a0b-425d-a7bc-c5bb54f071d6', N'671edc99-b92c-42b6-a1ca-980b0994d658', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (11, 1, CAST(N'2023-11-14T19:52:24.3380000' AS DateTime2), N'2023b6de-3333-409a-bd7c-8d4c8e400514', N'6a9759d1-a6dc-4f94-999d-f5e92b85a5b6', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (12, 1, CAST(N'2023-11-14T19:52:28.7860000' AS DateTime2), N'22af3732-af50-4511-b573-a651323ade54', N'6cba8f81-7370-47a6-9f5f-afd3c842f6ef', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (13, 1, CAST(N'2023-11-14T19:52:32.1270000' AS DateTime2), N'31f4064a-97fe-4602-8d0a-67b2f6e192b6', N'6d4e7909-cb7c-4d4b-8f78-a386741a45b0', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (14, 1, CAST(N'2023-11-14T19:52:35.7340000' AS DateTime2), N'3d46cec0-0e52-411a-9531-b29c5d3d9937', N'6e371817-a4c3-46bb-8390-af296218292a', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (15, 1, CAST(N'2023-11-14T19:52:40.0480000' AS DateTime2), N'3dad097f-d417-47a7-a0da-394bdeed5560', N'6f295afa-5c46-4b52-a292-3fb97ed4544a', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (16, 1, CAST(N'2023-11-14T19:52:43.6060000' AS DateTime2), N'3e5aeb18-c8b7-43dd-9cdf-e989398fad52', N'70dbc7f9-f61d-4a36-81ef-bb25632cec68', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (17, 1, CAST(N'2023-11-14T19:52:46.9640000' AS DateTime2), N'40c248af-625d-41da-be89-219771d7c902', N'711d6119-7957-4229-a93d-a52f02a70c42', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (18, 1, CAST(N'2023-11-14T19:52:51.0250000' AS DateTime2), N'4457ae11-8ac6-44f2-8ce1-56f7ab882975', N'7214ad25-6539-4a2f-a883-fabf7608f5d1', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (19, 1, CAST(N'2023-11-14T19:52:54.6730000' AS DateTime2), N'45b22eb6-72bb-45ef-b8c9-5760494e173e', N'74c5b4ed-1509-43ea-b7b1-b9cdade2bd5b', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (20, 1, CAST(N'2023-11-14T19:52:58.3880000' AS DateTime2), N'48f10310-935c-4f04-a5ce-ae640cb5cae2', N'7798cff6-c153-43ca-858b-67845fc300bf', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (21, 1, CAST(N'2023-11-14T19:53:01.5210000' AS DateTime2), N'4d4134a3-dc54-47ac-84f4-a57df630c991', N'78e8a23c-8763-4bfc-9d6e-11dffe91a12b', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (22, 1, CAST(N'2023-11-14T19:53:06.1640000' AS DateTime2), N'59e89239-677a-41c3-b302-e105177099ca', N'7ae691fb-18f7-4fab-a12c-c9b0d134d023', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (23, 1, CAST(N'2023-11-14T19:53:10.2730000' AS DateTime2), N'5acf7dc6-5a41-4e70-8442-328c6f9e8e8b', N'7da30436-8701-48c5-8e30-e9a413a38566', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (24, 1, CAST(N'2023-11-14T19:53:15.2880000' AS DateTime2), N'5e39e538-0e61-4483-a4d9-3115cb9177d8', N'7e71ac07-b027-4304-a048-7831163d7ffe', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (25, 0, CAST(N'2023-11-14T19:53:18.9970000' AS DateTime2), N'607ad137-0272-4ea4-8693-cfd3f51a8a54', N'7e73a92e-9b1e-4694-824c-5ee440d214ef', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (26, 1, CAST(N'2023-11-14T20:03:10.1440000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'93ebc9c5-a62c-4e7f-889f-fa32e756eafd', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (27, 1, CAST(N'2023-11-14T20:03:13.9290000' AS DateTime2), N'b2d6496f-34dc-4fbd-a918-805a36c303a1', N'9623c23a-e578-4b0a-aba3-692a167595bb', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (28, 1, CAST(N'2023-11-14T20:03:17.2330000' AS DateTime2), N'be49ff82-84df-44ac-9b9e-f1997516a713', N'96b9a5ff-5f44-4879-a9b7-c278418f9437', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (29, 1, CAST(N'2023-11-14T20:03:20.6840000' AS DateTime2), N'bfd46c19-42a1-4d97-a670-55e4da0e90d2', N'9847714c-0a69-4d1f-94e1-b947848607ad', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (30, 1, CAST(N'2023-11-14T20:03:24.4200000' AS DateTime2), N'c09c62e6-2f9b-4267-b4cf-733ec34deacf', N'987984c2-a8c7-48e8-9429-564a046664d4', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (31, 1, CAST(N'2023-11-14T20:03:27.3030000' AS DateTime2), N'c8c0326d-5ccd-40f7-a2af-53520acc420e', N'98e8c711-d2b9-4556-bc51-3fc1a1ef0272', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (32, 1, CAST(N'2023-11-14T20:03:30.3990000' AS DateTime2), N'c959e55f-c418-4ac6-b5d4-e0ce18c1d18b', N'9905c0d4-4154-4692-a47a-6bef7bacf395', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (33, 1, CAST(N'2023-11-14T20:03:33.5220000' AS DateTime2), N'cbbbc95b-d189-4ed6-bdcc-682b3da3b51f', N'9a5f710b-78e9-4baa-bce8-0089701f0f80', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (34, 1, CAST(N'2023-11-14T20:03:53.7530000' AS DateTime2), N'ce74052a-4287-4e7d-a88b-dcfd617ea243', N'9d424ce5-d738-4093-9bf3-7e5d98e9041c', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (35, 1, CAST(N'2023-11-14T20:03:57.7180000' AS DateTime2), N'd04dc3b1-73d5-403b-a840-e70decf0cd30', N'9e4de293-f088-4383-936a-f567a6bc2b52', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (36, 1, CAST(N'2023-11-14T20:04:01.6310000' AS DateTime2), N'd1652fbc-b05f-440f-b75f-49e3fbec6690', N'9ee37dd0-c43a-43a5-be02-27402c50ed12', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (37, 1, CAST(N'2023-11-14T20:04:04.6550000' AS DateTime2), N'd1ffd6b9-9480-41e6-87c7-98319e23569b', N'9f6b4232-2bce-4bdb-a22c-6747cc1d5f7d', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (38, 1, CAST(N'2023-11-14T20:04:08.3600000' AS DateTime2), N'd77f17b3-cc69-4820-bab0-87979fad6dd2', N'9fce07b2-d4b7-4456-9f14-dea4f6e66931', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (39, 1, CAST(N'2023-11-14T20:04:11.9620000' AS DateTime2), N'd87ac06d-3b8b-4520-84de-4376e3c6b3e5', N'a291ca65-55c3-4240-a45b-93a3b59c2cb1', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (40, 1, CAST(N'2023-11-14T20:04:16.3920000' AS DateTime2), N'e3cec6ef-7bf5-43e6-b3c5-ea971cf1d7f1', N'a3238da4-8b36-4655-9624-b159677d6e17', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (41, 1, CAST(N'2023-11-14T20:04:23.3230000' AS DateTime2), N'e5b28f45-c02e-4d9c-a542-0a8df174c25a', N'a382f305-b872-4fe9-b333-8e065ce06722', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (42, 1, CAST(N'2023-11-14T20:04:27.2650000' AS DateTime2), N'eb33f25d-cb60-49a6-8bd9-6b4783f3c8ea', N'a4382b9c-5ef4-4616-89dd-52c7cc8b9e99', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (43, 1, CAST(N'2023-11-14T20:04:30.2720000' AS DateTime2), N'ec3c42e1-3109-4389-85d1-f66282c535a6', N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (44, 1, CAST(N'2023-11-14T20:04:34.0120000' AS DateTime2), N'eda11cbb-a04d-4e5d-9fb4-2e11cac7429a', N'a5ea2028-44db-4791-8d1a-a29b04c7e771', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (45, 1, CAST(N'2023-11-14T20:04:38.4460000' AS DateTime2), N'ee4d7692-89a2-45c0-9cd5-7f57aae972b8', N'a7894a85-460d-4628-a424-618503a838c1', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (46, 1, CAST(N'2023-11-14T20:07:37.3350000' AS DateTime2), N'00dfef15-c5e7-4af8-9fdb-8f1e92527fdb', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (47, 1, CAST(N'2023-11-14T20:07:46.3520000' AS DateTime2), N'02db2bc1-84f1-4234-84f8-df99cd082286', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (48, 1, CAST(N'2023-11-14T20:08:02.3520000' AS DateTime2), N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (49, 1, CAST(N'2023-11-14T20:08:08.4640000' AS DateTime2), N'081b6a9b-5e80-4817-ad3f-9ce608964898', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (50, 1, CAST(N'2023-11-14T20:08:18.2050000' AS DateTime2), N'136dc94a-8004-416f-ba49-e05aafa0bc81', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (51, 1, CAST(N'2023-11-14T20:08:24.7260000' AS DateTime2), N'1597e988-f31e-464b-bbc9-60c0460ce985', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (52, 1, CAST(N'2023-11-14T20:08:30.4930000' AS DateTime2), N'18b31590-c425-458b-86b4-0da67453be26', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (53, 1, CAST(N'2023-11-14T20:08:36.6870000' AS DateTime2), N'1db81ae8-5e70-4789-9917-46ac371f5198', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (54, 1, CAST(N'2023-11-14T20:08:41.8680000' AS DateTime2), N'1edfe45f-8a0b-425d-a7bc-c5bb54f071d6', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (55, 1, CAST(N'2023-11-14T20:09:11.4950000' AS DateTime2), N'22af3732-af50-4511-b573-a651323ade54', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (56, 1, CAST(N'2023-11-14T20:09:16.2860000' AS DateTime2), N'31f4064a-97fe-4602-8d0a-67b2f6e192b6', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (57, 1, CAST(N'2023-11-14T20:09:22.1940000' AS DateTime2), N'3d46cec0-0e52-411a-9531-b29c5d3d9937', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (58, 1, CAST(N'2023-11-14T20:09:27.0200000' AS DateTime2), N'3dad097f-d417-47a7-a0da-394bdeed5560', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (59, 1, CAST(N'2023-11-14T20:09:32.0320000' AS DateTime2), N'3e5aeb18-c8b7-43dd-9cdf-e989398fad52', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (60, 1, CAST(N'2023-11-14T20:09:37.1390000' AS DateTime2), N'40c248af-625d-41da-be89-219771d7c902', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (61, 1, CAST(N'2023-11-14T20:09:42.4160000' AS DateTime2), N'4457ae11-8ac6-44f2-8ce1-56f7ab882975', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (62, 1, CAST(N'2023-11-14T20:09:47.2260000' AS DateTime2), N'45b22eb6-72bb-45ef-b8c9-5760494e173e', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (63, 1, CAST(N'2023-11-14T20:09:53.2330000' AS DateTime2), N'48f10310-935c-4f04-a5ce-ae640cb5cae2', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (64, 1, CAST(N'2023-11-14T20:09:59.5580000' AS DateTime2), N'4d4134a3-dc54-47ac-84f4-a57df630c991', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (65, 1, CAST(N'2023-11-14T20:10:04.6400000' AS DateTime2), N'59e89239-677a-41c3-b302-e105177099ca', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (66, 1, CAST(N'2023-11-14T20:10:10.4740000' AS DateTime2), N'5acf7dc6-5a41-4e70-8442-328c6f9e8e8b', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (67, 1, CAST(N'2023-11-14T20:10:15.9290000' AS DateTime2), N'5e39e538-0e61-4483-a4d9-3115cb9177d8', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (68, 1, CAST(N'2023-11-14T20:10:22.2250000' AS DateTime2), N'607ad137-0272-4ea4-8693-cfd3f51a8a54', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (69, 1, CAST(N'2023-11-14T20:10:27.5980000' AS DateTime2), N'60cdcc9a-87f1-4d20-8591-37231d0b42fa', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (70, 1, CAST(N'2023-11-14T20:10:32.8560000' AS DateTime2), N'6eecf7d3-556c-4952-8c60-d16f7354ed4b', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (71, 1, CAST(N'2023-11-14T20:10:37.2950000' AS DateTime2), N'7032774e-1dad-4b46-a7bd-8328ecba4514', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (72, 1, CAST(N'2023-11-14T20:10:43.2240000' AS DateTime2), N'71177857-f9b4-4e22-999c-3d267f604680', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (73, 1, CAST(N'2023-11-14T20:10:48.8860000' AS DateTime2), N'72af1fb2-ae60-4b34-a66a-0f8d2f31315d', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (74, 1, CAST(N'2023-11-14T20:10:54.9050000' AS DateTime2), N'73a64ec9-b442-4707-8d59-d0a3a51bdf7d', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (75, 1, CAST(N'2023-11-14T20:11:01.3270000' AS DateTime2), N'74dba9b3-a930-4616-aa57-bb6309c48bba', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (76, 1, CAST(N'2023-11-14T20:11:07.9300000' AS DateTime2), N'7bb454c9-e463-462e-a29b-5b583e047453', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (77, 1, CAST(N'2023-11-14T20:11:13.3450000' AS DateTime2), N'806e66b7-63c8-45e9-8baf-57de23c27c41', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (78, 1, CAST(N'2023-11-14T20:11:19.6690000' AS DateTime2), N'80caf662-7624-4ec3-999c-01e1d39c5a88', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (79, 1, CAST(N'2023-11-14T20:11:25.0710000' AS DateTime2), N'814369e6-a32e-41b3-a2ab-c6d363ebcea2', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (80, 1, CAST(N'2023-11-14T20:11:31.9840000' AS DateTime2), N'82327947-dbd6-48c0-a38a-a59ee3f78f9e', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (81, 1, CAST(N'2023-11-14T20:11:37.5170000' AS DateTime2), N'84047e46-de04-4f83-882b-c88f022ba956', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (82, 1, CAST(N'2023-11-14T20:12:04.1680000' AS DateTime2), N'8a4da630-1411-494a-a74e-f8246f8b0824', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (83, 1, CAST(N'2023-11-14T20:12:09.8000000' AS DateTime2), N'91f19bd0-20d3-4e09-b3df-1694de6fd00d', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (84, 1, CAST(N'2023-11-14T20:12:14.9000000' AS DateTime2), N'92b2651a-507e-4741-9c0b-38930d4cbd40', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (85, 1, CAST(N'2023-11-14T20:12:19.4800000' AS DateTime2), N'92cce5f5-28cf-4f55-9749-d6245f048145', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (86, 1, CAST(N'2023-11-14T20:12:25.3040000' AS DateTime2), N'98b2461b-f769-4fcb-bf14-f26278f2f6d3', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (87, 1, CAST(N'2023-11-14T20:12:30.2370000' AS DateTime2), N'9eb86d9e-c0d8-4e4a-9de6-8bf64cb32f13', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (88, 1, CAST(N'2023-11-14T20:12:35.0230000' AS DateTime2), N'9f240f0e-015b-4c64-8c12-145643e84c17', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (89, 1, CAST(N'2023-11-14T20:12:40.3080000' AS DateTime2), N'9fba4a6d-1987-4334-bb58-69c2fcbe8ed9', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (90, 1, CAST(N'2023-11-14T20:12:44.8640000' AS DateTime2), N'a62e13ba-54d7-4446-914f-cd89ab45fce1', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (91, 1, CAST(N'2023-11-14T20:12:50.7810000' AS DateTime2), N'a9b251f9-4088-4138-8f3a-04a259d9aa63', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (92, 1, CAST(N'2023-11-14T20:12:55.2620000' AS DateTime2), N'ad3af4e6-a572-4cca-8fe7-59d75d4d2a2c', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (93, 1, CAST(N'2023-11-14T20:13:00.1870000' AS DateTime2), N'ae222578-9dc3-4010-8217-b0fab84b62c0', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (94, 1, CAST(N'2023-11-14T20:13:05.4190000' AS DateTime2), N'b1f720b1-dc08-4e8f-ae04-a74f6e7524b3', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (95, 1, CAST(N'2023-11-14T20:13:10.1350000' AS DateTime2), N'b2d6496f-34dc-4fbd-a918-805a36c303a1', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (96, 1, CAST(N'2023-11-14T20:13:16.8640000' AS DateTime2), N'be49ff82-84df-44ac-9b9e-f1997516a713', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (97, 1, CAST(N'2023-11-14T20:13:22.8590000' AS DateTime2), N'bfd46c19-42a1-4d97-a670-55e4da0e90d2', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (98, 1, CAST(N'2023-11-14T20:13:28.2550000' AS DateTime2), N'c09c62e6-2f9b-4267-b4cf-733ec34deacf', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (99, 1, CAST(N'2023-11-14T20:13:33.3740000' AS DateTime2), N'c8c0326d-5ccd-40f7-a2af-53520acc420e', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
GO
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (100, 1, CAST(N'2023-11-14T20:13:38.5390000' AS DateTime2), N'c959e55f-c418-4ac6-b5d4-e0ce18c1d18b', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (101, 1, CAST(N'2023-11-14T20:13:44.3840000' AS DateTime2), N'cbbbc95b-d189-4ed6-bdcc-682b3da3b51f', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (102, 1, CAST(N'2023-11-14T20:13:50.0500000' AS DateTime2), N'ce74052a-4287-4e7d-a88b-dcfd617ea243', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (103, 1, CAST(N'2023-11-14T20:13:56.8660000' AS DateTime2), N'd04dc3b1-73d5-403b-a840-e70decf0cd30', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (104, 1, CAST(N'2023-11-14T20:14:01.9690000' AS DateTime2), N'd1652fbc-b05f-440f-b75f-49e3fbec6690', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (105, 1, CAST(N'2023-11-14T20:14:10.0730000' AS DateTime2), N'd1ffd6b9-9480-41e6-87c7-98319e23569b', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (106, 1, CAST(N'2023-11-14T20:14:14.9280000' AS DateTime2), N'd77f17b3-cc69-4820-bab0-87979fad6dd2', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (107, 1, CAST(N'2023-11-14T20:14:19.7430000' AS DateTime2), N'd87ac06d-3b8b-4520-84de-4376e3c6b3e5', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (108, 1, CAST(N'2023-11-14T20:14:25.3860000' AS DateTime2), N'e3cec6ef-7bf5-43e6-b3c5-ea971cf1d7f1', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (109, 1, CAST(N'2023-11-14T20:14:30.3990000' AS DateTime2), N'e5b28f45-c02e-4d9c-a542-0a8df174c25a', N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (110, 0, CAST(N'2023-11-14T20:42:09.1950000' AS DateTime2), NULL, N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', N'42856cc1-f7a2-4cc0-ac94-17cb122266e5')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (111, 1, CAST(N'2023-11-14T20:42:15.2900000' AS DateTime2), NULL, N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', N'aed31d52-c0a7-4938-bf22-bc2b21425bf7')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (112, 1, CAST(N'2023-11-14T20:42:20.2380000' AS DateTime2), NULL, N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', N'ccd7b3f9-d5cf-4849-b150-6d73c6b09c85')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (113, 1, CAST(N'2023-11-14T20:42:25.6490000' AS DateTime2), NULL, N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', N'12ecf0b7-921d-431f-82a0-0ceebd9250fd')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (114, 1, CAST(N'2023-11-14T20:42:30.0930000' AS DateTime2), NULL, N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', N'36b416b8-81b3-4c35-a8d8-e632e02b4a25')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (115, 1, CAST(N'2023-11-14T20:42:57.7760000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'42856cc1-f7a2-4cc0-ac94-17cb122266e5')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (116, 1, CAST(N'2023-11-14T20:43:04.5130000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'45907aa0-d809-46fc-8495-da22939ac76c')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (117, 1, CAST(N'2023-11-14T20:43:09.0840000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'49b47eb5-a866-4c33-835e-634c42c1df85')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (118, 1, CAST(N'2023-11-14T20:43:16.0790000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'4def369c-14f5-40c9-9c24-43c885d9335d')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (119, 1, CAST(N'2023-11-14T20:43:21.5310000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'5538afdd-4cf5-4eef-af13-400eee37fd8a')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (120, 1, CAST(N'2023-11-14T20:43:25.9620000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'61fed278-b5d1-4879-80ec-eb863ec58fc8')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (121, 1, CAST(N'2023-11-14T20:43:30.9240000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'8d1bf9af-93a5-4845-bb78-c5a8379df55d')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (122, 1, CAST(N'2023-11-14T20:43:36.5050000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'903c1392-053a-470e-b00f-96322eeaec2d')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (123, 1, CAST(N'2023-11-14T20:43:42.6470000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'aed31d52-c0a7-4938-bf22-bc2b21425bf7')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (124, 1, CAST(N'2023-11-14T20:43:47.1380000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'af169b67-b7c2-4706-ae1d-4a70f612cb57')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (125, 1, CAST(N'2023-11-14T20:43:52.3260000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'b909b9b7-1543-4b92-9ec1-e75e7e9f9338')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (126, 1, CAST(N'2023-11-14T20:44:00.6160000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'c3dae44d-ad43-464e-bafb-4759014bbbda')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (127, 1, CAST(N'2023-11-14T20:44:05.6450000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'cac47a04-663e-4c1e-a411-e6cbab0b0363')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (128, 1, CAST(N'2023-11-14T20:44:10.8400000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'cb563c7d-3e51-4cc4-9f4f-64697d690c31')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (129, 1, CAST(N'2023-11-14T20:44:16.0760000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'ccd7b3f9-d5cf-4849-b150-6d73c6b09c85')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (130, 0, CAST(N'2023-11-14T20:44:20.3760000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'd621e5d9-d853-4954-82cf-936afed557bf')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (131, 1, CAST(N'2023-11-14T20:44:59.6880000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'd73f741d-5e22-46de-8057-efda3ced5da8')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (132, 1, CAST(N'2023-11-14T20:45:04.4260000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'dcf23608-b986-4048-a10c-c6ef76dd5d18')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (133, 1, CAST(N'2023-11-14T20:45:09.2240000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'ddf99556-45b3-4a8c-b90d-4071fe0a9479')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (134, 1, CAST(N'2023-11-14T20:45:14.8740000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'fdc83921-14dd-41fe-b438-ce3b94b9dbaf')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (135, 1, CAST(N'2023-11-14T20:45:19.3210000' AS DateTime2), NULL, N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'fffcb564-8ae1-4bd8-a2aa-a32172530712')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (136, 1, CAST(N'2023-11-14T20:46:41.3900000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'fffcb564-8ae1-4bd8-a2aa-a32172530712')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (137, 1, CAST(N'2023-11-14T20:47:13.8150000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'fdc83921-14dd-41fe-b438-ce3b94b9dbaf')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (138, 1, CAST(N'2023-11-14T20:47:19.8450000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'ddf99556-45b3-4a8c-b90d-4071fe0a9479')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (139, 1, CAST(N'2023-11-14T20:47:25.1850000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'dcf23608-b986-4048-a10c-c6ef76dd5d18')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (140, 1, CAST(N'2023-11-14T20:47:31.3830000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'd73f741d-5e22-46de-8057-efda3ced5da8')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (141, 1, CAST(N'2023-11-14T20:47:36.4540000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'd621e5d9-d853-4954-82cf-936afed557bf')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (142, 1, CAST(N'2023-11-14T20:47:41.9410000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'ccd7b3f9-d5cf-4849-b150-6d73c6b09c85')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (143, 1, CAST(N'2023-11-14T20:48:13.1670000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'cb563c7d-3e51-4cc4-9f4f-64697d690c31')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (144, 1, CAST(N'2023-11-14T20:48:17.4300000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'cac47a04-663e-4c1e-a411-e6cbab0b0363')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (145, 1, CAST(N'2023-11-14T20:48:22.0170000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'c3dae44d-ad43-464e-bafb-4759014bbbda')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (146, 1, CAST(N'2023-11-14T20:48:35.2390000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'b909b9b7-1543-4b92-9ec1-e75e7e9f9338')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (147, 1, CAST(N'2023-11-14T20:48:43.0210000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'af169b67-b7c2-4706-ae1d-4a70f612cb57')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (148, 1, CAST(N'2023-11-14T20:48:52.2670000' AS DateTime2), NULL, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'aed31d52-c0a7-4938-bf22-bc2b21425bf7')
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (149, 1, CAST(N'2023-11-14T20:49:02.3480000' AS DateTime2), N'fed76a42-9e8b-4dd6-8140-98d876e4b174', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (150, 1, CAST(N'2023-11-14T20:49:08.1420000' AS DateTime2), N'ef68552c-0e3b-4f5f-805f-23834b0f3838', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (151, 1, CAST(N'2023-11-14T20:49:15.0480000' AS DateTime2), N'ee4d7692-89a2-45c0-9cd5-7f57aae972b8', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (152, 1, CAST(N'2023-11-14T20:49:20.5920000' AS DateTime2), N'eda11cbb-a04d-4e5d-9fb4-2e11cac7429a', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (153, 1, CAST(N'2023-11-14T20:49:26.5150000' AS DateTime2), N'ec3c42e1-3109-4389-85d1-f66282c535a6', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (154, 1, CAST(N'2023-11-14T20:49:31.5470000' AS DateTime2), N'eb33f25d-cb60-49a6-8bd9-6b4783f3c8ea', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (155, 1, CAST(N'2023-11-14T20:49:37.2820000' AS DateTime2), N'e5b28f45-c02e-4d9c-a542-0a8df174c25a', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (156, 1, CAST(N'2023-11-14T20:49:44.4230000' AS DateTime2), N'e3cec6ef-7bf5-43e6-b3c5-ea971cf1d7f1', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (157, 1, CAST(N'2023-11-14T20:49:49.1180000' AS DateTime2), N'd87ac06d-3b8b-4520-84de-4376e3c6b3e5', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (158, 1, CAST(N'2023-11-14T20:49:53.7350000' AS DateTime2), N'd77f17b3-cc69-4820-bab0-87979fad6dd2', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (159, 1, CAST(N'2023-11-14T20:49:58.4730000' AS DateTime2), N'd1ffd6b9-9480-41e6-87c7-98319e23569b', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (160, 1, CAST(N'2023-11-14T20:50:03.1030000' AS DateTime2), N'd1652fbc-b05f-440f-b75f-49e3fbec6690', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (161, 1, CAST(N'2023-11-14T20:50:07.2720000' AS DateTime2), N'd04dc3b1-73d5-403b-a840-e70decf0cd30', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (162, 1, CAST(N'2023-11-14T20:50:12.7990000' AS DateTime2), N'ce74052a-4287-4e7d-a88b-dcfd617ea243', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (163, 1, CAST(N'2023-11-14T20:50:17.3850000' AS DateTime2), N'cbbbc95b-d189-4ed6-bdcc-682b3da3b51f', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (164, 1, CAST(N'2023-11-14T20:50:22.6440000' AS DateTime2), N'c959e55f-c418-4ac6-b5d4-e0ce18c1d18b', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
INSERT [dbo].[tblReact] ([id], [isactive], [createtime], [postid], [userid], [commentid]) VALUES (165, 1, CAST(N'2023-11-14T20:50:35.1610000' AS DateTime2), N'c8c0326d-5ccd-40f7-a2af-53520acc420e', N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', NULL)
SET IDENTITY_INSERT [dbo].[tblReact] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (1, N'AD', N'All')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (2, N'Staff', N'Cat')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (3, N'Staff', N'Dog')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (4, N'Staff', N'All')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (5, N'User', N'All')
SET IDENTITY_INSERT [dbo].[tblRole] OFF
GO
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'00299536-a753-42c8-bd07-50091bc2f789', N'iamsuperman', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Super Man', N'iamsuperman@example.com', CAST(N'2003-11-13T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'00c540e4-1683-47c7-a9dc-ec8d8d936946', N'user6588', N'$2a$10$Qnn.E4Ow4S55VeRJheV/TO/fGoGCyKFpMMq3IE9vXv5.TjA77lawy', N'Angelo Daugherty', N'user4943@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'01547cde-7d15-4adc-ae06-4e843c41e822', N'user6687', N'$2a$10$WjJI4Fe7Z2JggSM2hVHPBOAN45WQSxWUxaoC/PoYtjzLrIXTVSTL6', N'Clayton Leuschke', N'khanhuser166008@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'02b48493-8eb8-4215-8638-c92257e8b375', N'coolUser123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'So Cool', N'coolUser123@example.com', CAST(N'1991-05-18T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'02eea20e-593b-40f0-a671-327da05efd40', N'user6500', N'$2a$10$SuoaWYsIN/92kKN.Dd1QMufe2VLtTne4frM.Jx0EtZomeqdKOCmoa', N'Miss Elsa Goodwin', N'user4311@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'056ad09d-c080-4992-b2f0-26b6837b2055', N'user5490', N'$2a$10$bhz4Y8mSQUCfRYuyUZcLQOGOrO9Kht8OYDaoRylc/38RZcGBC8wuG', N'Kathleen Treutel', N'user3366@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'0a391310-7a66-4773-8c50-64a545e92910', N'user215', N'$2a$10$H.Q4zW3SB0jU2pScUBzzAO6a.s1u49ezi/3v9q/eLQG9k/y6cETBa', N'User 5123', N'user3625@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'0c96dd28-5961-4b5b-b952-7d0936834ba2', N'user7542', N'$2a$10$So5uubA/lgPNwSjKmbst6uihSI1LGa6yK/8bXAhNW2XlyRzIo3phK', N'Lamar Heaney', N'user1397@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'0e2a1744-4b62-46a6-bba6-dffa04d4c9ac', N'user9865', N'$2a$10$sVPnQ5e0Qy9c3WsDN6hbYODtsy6PUBKuzmtmjzuFwISuRenM.tkgy', N'Ronald Corwin', N'user7019@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'0ec411dc-3903-4ed9-b936-fa841d86e09a', N'user3610', N'$2a$10$76Y/1Yf4YjuL54ZW7.2gnOpUzf5dbQaL1FLYmTN2wgTex4EGyDAq.', N'User 6931', N'user499@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'0f056b06-720f-481a-b4ab-6697c738a6df', N'user3291', N'$2a$10$2qeBbVMBhJLTJYqbBOnjc.RdoL3Q/ibHGdY9R9oXb8/RCFluF4JIC', N'Viola Kunde III', N'user2993@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'110fcd91-2c78-4ad9-b61f-011f83bf305b', N'user9649', N'$2a$10$qJfI65IVCmmIzCq1GwloyugBUaW/PgZaar0fbGmahLeGk4AyQtyau', N'Willie Cormier V', N'user3972@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'11215cda-4636-40f4-9fe8-2febe91560b6', N'user1704', N'$2a$10$k.NFqCXwZqGZqd.XfKUWIeXa61ow.rv.AcmkrMxlfamWqNGPB32pO', N'Joey Beahan Sr.', N'user1470@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'1362cd81-7136-4c6c-8fe1-14a0bda98faa', N'user9962', N'$2a$10$6NwYUojf89ODk/yw6KXJmOcfo6fZ1dkRNkgdh8AuDvFfZ1G0GQI/S', N'User 2896', N'user2740@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'168126aa-9f15-4a70-832a-285276ae39ea', N'techNinja45', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Ninja Naruto', N'techNinja45@example.com', CAST(N'2005-12-07T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'17b16587-0fe1-4b72-a867-7591b57ae6ad', N'user2551', N'$2a$10$3y0Ohw3.19DXrBYqtVwZuuPv.uotL7wrFKO7jJEMSL/IWQ8mfAw1y', N'Clint Schroeder', N'khanhuser230741@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'18619cc3-9241-4b15-87ef-0c417d969fcb', N'user6562', N'$2a$10$jOxkHjRiEMlTbm9Jn9ZC2.Z3XHVTvanAfciS55h4tR2j15c4SnBKS', N'User 149', N'user7841@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'19b76fa3-24e7-409e-ab50-cccda2c048dc', N'user1016', N'$2a$10$buiam6M0jFMLvpsMdMwAzukB7DwuonJMA8q/mDe79BID02dbnorri', N'Alexander Bruen', N'khanhuser320795@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'19f9ab13-fd33-4f6d-8585-c3f419ab6308', N'user2879', N'$2a$10$bUdnh28wk7oQ31sCjWv0i..C4pTLMr8ubebhmxDBsBczO2RnUQDyG', N'Jackie DuBuque DVM', N'khanhuser352332@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'1a35b581-cebd-4136-9934-2b9e482e1822', N'user2125', N'$2a$10$r4hYM9IaHSOsSJ9fCOkE7.ka2KMTuiuVUCKXUKSA9wrmk0uhjJZE6', N'Warren Hayes I', N'user1002@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'1cfbf661-f9dc-42a7-8299-61909766f9de', N'starGazer789', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Stardust Dragon', N'starGazer789@example.com', CAST(N'2002-09-30T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'1d68a82f-f910-4e6f-921d-8c8ca94bc592', N'user6731', N'$2a$10$wANcsyy5TeLcnctDrU7CLeh3WoUq7yCYRxalXwtdBImbrpNZwlDfe', N'Lawrence Pollich', N'user1985@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'1dc66f49-066e-4acc-8b89-f1f1f49204dd', N'user8755', N'$2a$10$AwCja.iqYa1y07LIwLu1LOmqJE5tMnQJai2qHFzcGTZ6crGCW5IP6', N'Lucy Hauck II', N'khanhuser33058@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'1f74e023-abb5-4cf8-930a-192d52fc3db2', N'user1157', N'$2a$10$KisYXQP9X0KZAeznHzb3ceOM6WyolCWISDdqS1BXULM3vgSz6M8bi', N'Stuart Herman', N'user3079@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'211450b8-abc0-4f19-a3bb-ea121aa617c5', N'user2385', N'$2a$10$XxV8AiXD.cpbN7k03ZvqoulBrmPBoztm0xeo.sOFaGviHoxAARScm', N'Mandy Hane', N'user1713@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'213a9390-19c8-4596-8a64-b3d0beb32635', N'wonderLust22', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'I Wonder How', N'wonderLust22@example.com', CAST(N'2007-07-22T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'22469b44-7d62-46b0-a010-894f5338f455', N'user5376', N'$2a$10$vvHDuificxPnpNYkKn1z/.sfMgUhEo3xPlQXzKK6lqScU8JC59AoS', N'Dr. Janice Koepp', N'khanhuser42411@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'23052257-b24b-4cbe-b461-e72182208822', N'user1038', N'$2a$10$JdKyHAIelsQl3PlXoHvsuOiFfXTcT.6jPhA1AInLlqvpbdJFghtKS', N'Jaime O''Hara', N'user2771@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'23b00a0a-6267-4e02-818f-73b2917d5fb2', N'user1024', N'$2a$10$qPBYFP85v037pxGmqZfpF.VkN8p1BOVqy4H2kOHrQ1pBIEaf/nW9O', N'Gretchen Ryan', N'khanhuser731977@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'26728b81-44d4-4ec8-89ca-b97ef41571fb', N'user9303', N'$2a$10$XwCYePjXpAFY/KJldJnW9OKvMUzS.d0rM4DAqP.ELhQjpl/byK7yG', N'Eileen Ferry Sr.', N'khanhuser236706@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2707090d-1f89-4088-9587-8a8e617ffd8e', N'user6812', N'$2a$10$AcFUrnUlE05RSGr1ZzQPWeBFQ/V3hYRC15iZ0I5AtYgXfLc6JkAFq', N'Laurence Stiedemann', N'khanhuser507482@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2721b07e-fde8-4037-855a-05cef3457381', N'codingGeek37', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Michael Smith', N'michael@example.com', CAST(N'1997-04-11T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2a9ce096-5163-4324-bbc8-9192e6d4fc0b', N'businessuser', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Sophia Business', N'sophia@example.com', CAST(N'2001-08-19T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2c86edba-89f0-4460-b270-36bcbe8ee312', N'user4955', N'$2a$10$2tTjnE.xRwleMx1PiUvK9.CMnazleeZRbIq53cVs91F27U8MxR0r6', N'Ms. Ella Lynch', N'user7655@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2cd5a2f9-7323-448c-8717-aa33a94a37b5', N'user4313', N'$2a$10$t0s4cOayPO85qqrmqosEged0LG7TtZ/ARrfugw7FJxHbesELghzg.', N'Earnest Lebsack', N'khanhuser293136@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2db7a610-0f7a-41d1-88a2-0a55768ce400', N'user1439', N'$2a$10$BqoBFvZshsrdrXxy2O3Lt.vpYCX8gOGuCxtz6ZhLpwS4MRdZaln2.', N'Nora Hamill', N'user1648@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'3080b716-1b79-49cc-b7d2-b71c89e9ef28', N'user9888', N'$2a$10$mNvqfFTc/5tels4q8yt2DORm55V19eEqNe2wYSLD.OBI0nUjkU2Fe', N'Van Nolan', N'user1124@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'309f160c-b5c9-400e-a70b-cd14bb0d92fd', N'sunnyDays88', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Eva', N'sunnyDays88@example.com', CAST(N'2003-10-05T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'31a7db28-5fbc-4de2-a83c-9ed94ab53712', N'moonWalker16', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'James Bond', N'moonWalker16@example.com', CAST(N'1998-02-14T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'328fcefc-cd61-41ca-ba21-c48f70feaf76', N'marketing_user', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Mark Marketing', N'mark@example.com', CAST(N'2008-11-27T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'332b7910-99e0-4d95-a324-1269bf4d6511', N'user7707', N'$2a$10$FB6SgMlGQuyWhQ0QTV3Kbum/8yM21fYaxt5KueXOtjEQNXNRDyzlK', N'Bill Ledner', N'user5555@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'367da4ef-2891-4450-ad3d-c491fb721020', N'user4796', N'$2a$10$rfoEfRE0vv3/m8TG1Fvlf.lSYkEpfpVubddnD9XZjhPy41DjNy0xW', N'Jenna Kozey', N'khanhuser909204@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'386d264a-0d1b-487c-bd67-b7741c0ce38a', N'user2991', N'$2a$10$DFFuWU6/AVoIe7zr.1CUFu1yhlVPhdAm1Q0/Bpl4B1rpQGVo/xyYm', N'Derrick Kautzer', N'user6163@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'3947e1ad-e407-4a28-9a36-42c8bc095537', N'coffeeLover42', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Love Coffee', N'coffeeLover42@example.com', CAST(N'1993-06-03T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'3e83675a-ee99-4e2a-93fe-a73da2852641', N'musicMaestro11', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Micheal Sackjon', N'musicMaestro11@example.com', CAST(N'2009-01-25T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'3ee492f6-c6f9-4e53-a6db-c2d77f2a6144', N'jane_smith', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Jane Smith', N'jane.smith@example.com', CAST(N'1996-12-28T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'426ce6f4-5332-4c8a-aad1-c377117dd400', N'user6874', N'$2a$10$0RcOwyFUBcKSGQvHgSnZ0OoeMnhEsC7ddwe8q9rh2cNUjFXwx/0uO', N'Freddie Wunsch', N'khanhuser62607@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'travelBug55', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Coder Lord', N'travelBug55@example.com', CAST(N'2004-03-14T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4363228b-a67a-415c-bc2d-247b303b3555', N'artExplorer73', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Artist', N'artExplorer73@example.com', CAST(N'1992-09-17T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'44319e01-0f61-431e-abc5-e3aeb6958929', N'user241', N'$2a$10$RdoXMwxnE1hXq5vT8U4kG.Tm3MLfFNFgadpmV8OVlLyCaQdu4cOEC', N'Darlene Ziemann', N'user2473@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'44cce4dc-3dbe-4494-accd-1d334f0f4ac1', N'user1052', N'$2a$10$Kxw9RKe/UFAOgbqIbb/t3uZgcaA3Tp6GIk0XU7rZu9E/j9XGQV9iK', N'Chester Borer', N'khanhuser472031@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'45404bac-2ff6-4127-8600-564da1f52e5a', N'user2679', N'$2a$10$lAwfqglF2B.IrGhUCS5HVOBGRQy/leARB5SJnX94N6kYgu/25J20a', N'Drew Schuppe', N'user5282@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'46529144-ad96-4d33-9971-d4e45dc2f405', N'user5425', N'$2a$10$5iqtWwo3wgCDoAHTxY4U6efqr52tl0.pDteZiwe4hNxWJvvC3owb6', N'Darrel Stamm', N'user178@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'48cfe193-9de4-461e-aded-b9fcee9ee8d1', N'user9126', N'$2a$10$bhi9VGx75NUiRQQw4u2wz.jyjoNblMAoxPUlnzhISgmE.TfKg2E4S', N'Kathy Maggio', N'user3373@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4a489c95-cac9-4e63-98b6-6159f229c485', N'user5389', N'$2a$10$qEz5dqO/VXFnS7n0dMhM1.DnjAC9d8Vi/DRG5nNjzcyIHRs.FbqWC', N'Elena Carter', N'user813@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', N'user4355', N'$2a$10$47.uivxZ.Yh5fgVTp5IHkeXEZgadB37QnwCXAvJDqupHuEekaWU4e', N'Wesley Schmitt', N'khanhuser130195@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4b0fad8d-98e8-4965-a221-b0435aa6967b', N'user4686', N'$2a$10$A9NMC.3ZKaRjo7L7TPZJA.TKrxH7nt8XjPv3sJJMJYPWd.nB01Do6', N'Dr. Sherman Aufderhar', N'user6852@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4bea7c1a-928e-4b3c-b5cd-d836b9e57c31', N'user5649', N'$2a$10$kyAhI3WvN4khXyU9nw2ht.w3lpmv6t44WPYiXSY7fC6Tynhgafbce', N'Ben Mayert', N'user3212@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4cb2d069-31a8-4a7f-94b2-cd624a4b02d5', N'user2501', N'$2a$10$m8CjfRwbCKMr4anvsea36.kO8woyR8ah9mHMonXIB7gPTL8s5n9Cq', N'Abel Buckridge', N'khanhuser217407@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4dbcc627-ac9f-41c5-8e54-0571c67c11a6', N'user7383', N'$2a$10$5SDCmpbUCH74F/ywKYfg9u.tSEk.AdXRO73j44W/fJrmBmk3/WYZ6', N'User 6541', N'user9506@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'516202c4-bdcd-4148-ad59-641a68416146', N'user7996', N'$2a$10$7YwxOW.cefgJorzXC4x0VudtsNkauE1JZeuTBaHLRQu/CrAxF70q.', N'Gabriel McClure', N'khanhuser932436@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'53210ae3-3dd0-48c2-96d1-cf643d12a275', N'user9965', N'$2a$10$L1qpiTHl5H8G2RokKiz8Beju1EWWULMfVA8Xuaw6DcDcqkvo/K0LG', N'Bryan Hagenes', N'user1634@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'giabao123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Gia Bao', N'baogia@gmail.com', CAST(N'2003-03-19T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'55347702-a256-4256-9efa-abef44ad7364', N'designer456', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Ella Designer', N'ella@example.com', CAST(N'2006-04-08T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'5d6ab49a-422b-467d-bbbe-56a713f6fcc9', N'user404', N'$2a$10$tn6V4y/QzDM6ZzFWh3Vv7OVgBqdIXCGzfbZ9d.UpmHRuh12i8phIa', N'Stephanie Robel', N'khanhuser20587@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'60031ecb-fde0-44cc-a44e-a6e38537a230', N'user3471', N'$2a$10$8Mlyk7a48XNDTA1q5MOsRuge0Iv67mn8tTQu3NwjsGFAukCDpgWvm', N'Mike Ullrich', N'khanhuser528646@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'600a9e9b-1eef-497b-8e96-db59d1edc521', N'user4181', N'$2a$10$l1KfU.Ydi7boCPZBQp/NtuMOfGsZW01qPQcMwOfWZ2U13wVzTpG7C', N'Ms. Marshall Mann', N'user6622@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6040ed1e-c0a8-4bf7-b93b-3948b96e9e53', N'user8459', N'$2a$10$okURgt41F7M3diL.caKuQeQv3/E4fO1EZkefBpL7Akn.aNpjcsJEW', N'Bill Kilback', N'user7754@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'65b6b2ae-250a-4698-b5cf-f530bf139491', N'bookWorm99', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Worm Hole', N'bookWorm99@example.com', CAST(N'1995-11-09T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'65ec04f0-6f59-4949-a08a-42d74c689ee5', N'user7337', N'$2a$10$llSTMiuhOOFewc2YMC0Kx.MFsfSWpov7byJceI62XhrcKbRHHagpy', N'Lorena Christiansen', N'user844@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'671edc99-b92c-42b6-a1ca-980b0994d658', N'user933', N'$2a$10$xYjcChVwdAj5HCJXuqjp5uxVtchhb6XoAruh8oMJCmkwEM5hRF5se', N'Sylvester O''Hara', N'user8424@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6a9759d1-a6dc-4f94-999d-f5e92b85a5b6', N'adventureSeeker27', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Linda Johnson', N'linda@example.com', CAST(N'1999-10-02T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6cba8f81-7370-47a6-9f5f-afd3c842f6ef', N'user4403', N'$2a$10$2LuGpq1I/wN2/VjB9wIiQeu8L6iaA6BSqj/W1DW5JSFRcZrdkmlxa', N'Harriet Grimes', N'khanhuser270256@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6d4e7909-cb7c-4d4b-8f78-a386741a45b0', N'user2154', N'$2a$10$YLTwUIgJUi3T9nF60bXTp.HiieHBgUqap/qSkQVSi/3uBNRUxb66e', N'June Crist', N'user5654@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6e371817-a4c3-46bb-8390-af296218292a', N'user7156', N'$2a$10$dADuJrXsGbXAHWPzLXHzJ.B981YkbKsieXAnoX.UjrCjmTaGHCIPm', N'User 7753', N'user1801@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6f295afa-5c46-4b52-a292-3fb97ed4544a', N'fitnessFreak68', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Adam Johnson', N'fitnessFreak68@example.com', CAST(N'2000-08-26T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'70dbc7f9-f61d-4a36-81ef-bb25632cec68', N'user1778', N'$2a$10$LySUnTDTrSul27eYIzpWB.kRH3QyZlr9Ll40yLgwQqjo2V/o8GkjS', N'Charles Reichert DVM', N'khanhuser41040@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'711d6119-7957-4229-a93d-a52f02a70c42', N'user8683', N'$2a$10$CBvaq4rkvERMe/RLwZqsQuqA9rWt4cUj46cXuyB/X07xv7fOJkEEy', N'Leonard Christiansen', N'user5872@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7214ad25-6539-4a2f-a883-fabf7608f5d1', N'foodieDelight12', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Gold Gold', N'foodieDelight12@example.com', CAST(N'2003-01-13T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'74c5b4ed-1509-43ea-b7b1-b9cdade2bd5b', N'natureLover21', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Linda Smith', N'natureLover21@example.com', CAST(N'1996-04-29T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7798cff6-c153-43ca-858b-67845fc300bf', N'user839', N'$2a$10$J.2ezd5O6vT6GdhfDwB/qer9tL8OCjTpX.m537BTWMJoixD0z3u7.', N'Devin Pagac', N'user742@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'78e8a23c-8763-4bfc-9d6e-11dffe91a12b', N'user4359', N'$2a$10$tv4MdVwYyhGoDHQuzOCngOG79pBmWo4IcfQefDrmGzBcOoZzRRwem', N'User 9958', N'user9463@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7ae691fb-18f7-4fab-a12c-c9b0d134d023', N'user9162', N'$2a$10$qTDCmroq5ZVeI6OCfbnZW.oXBcNPO/HKutTai8D1id10KAqalgedS', N'Dr. Eugene Davis', N'user2782@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7da30436-8701-48c5-8e30-e9a413a38566', N'adminuser', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Admin User', N'admin@example.com', CAST(N'1992-12-15T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7e71ac07-b027-4304-a048-7831163d7ffe', N'user3911', N'$2a$10$3kkiMd7Zjyqqtb7cauUCO.Dkq4i0aa5ZE.2UBRzcjpCn5LIsSQHC.', N'Xavier', N'user6181@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7e73a92e-9b1e-4694-824c-5ee440d214ef', N'user1921', N'$2a$10$1y2SlVXSAGWyMOGbC4ogL.76ZpJ5cQqw3wWodlB9vndLHY/AhSjAm', N'Phil Cronin', N'user8150@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7ee02806-3473-452b-a49c-7d09f475687d', N'gamingWizard77', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Alice Johnson', N'alice@example.com', CAST(N'2008-06-20T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7f0be948-3484-4fa8-8a2b-4fa22c7092f1', N'user667', N'$2a$10$b7byrwAaAS3PjSIj/UnkOe41dt4kKSWM7Mpzaztkaf7GUTAdbPx1W', N'Sophie MacGyver', N'khanhuser948988@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'8005d665-ee13-49ae-b6b4-df326ba671e8', N'user3644', N'$2a$10$8OJBU/nqclNY.wjxfjO.sORxdblidbXAyobBT9EPDiP0fEU46VLOW', N'Yasmin', N'user8957@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', N'movieBuff44', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Peter Parker', N'movieBuff44@example.com', CAST(N'2009-07-10T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'824a3677-b07b-42eb-8dc2-2d0b1c2e6c04', N'user4713', N'$2a$10$k6HE8JzdQ1df71C.1IEBFeMkJ3xjqpv/EfSTYh1ignE8f4zoERBHu', N'Samantha Breitenberg', N'user8271@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'83016dc4-2323-4ccc-a18c-8d2506e61621', N'fashionista61', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'David Brown', N'david.brown@example.com', CAST(N'2004-02-27T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'838f3f86-2a2b-46b3-a278-0667fb822c36', N'john_doe', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'John Doe', N'john.doe@example.com', CAST(N'1994-11-21T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'89a78f94-20f2-4356-a74f-c75f4cfefdd6', N'user1982', N'$2a$10$o0ldOxVjqbHIkjsWlOUw7uG4Ov5jEQ3U0FsqVz6BIC3q8bP3NAwa6', N'Alma West', N'user5325@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'89c4288b-046b-4fe1-832f-4461362c6dae', N'user6106', N'$2a$10$bz3zxvsjQf0wRmqmi33joeEkaUnOPV1PGoyQ1arL/DNeeqoUTelLa', N'Tommy Barton', N'khanhuser843823@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'8ae8d470-00d3-4088-a6f1-a525692821cf', N'scienceWhiz19', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Harry Potter', N'scienceWhiz19@example.com', CAST(N'2002-05-05T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'8c2d0322-94be-4ee1-a815-00fe6bca4589', N'user8857', N'$2a$10$qPUSyVGyh/TN4X6GF.BA8.UpjAFmf3HXynPx8PFdSuTPjPH4xDN1i', N'Forrest Rempel', N'user9253@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'8cf924c1-5bf9-41f4-9155-07775a17dba5', N'user6316', N'$2a$10$SkiEsZTP0Cncx7vzfmBk8O50F8.xRY6k.58J9ZzWjEi3pIr6AVOAe', N'Meggie', N'user121@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'8f03618e-7b1a-4813-9369-17d9a13a192c', N'user9489', N'$2a$10$G2Yoh8evA3Qph8pvxB2a8uk/Uq22M8GWH3hMwYwmSBRdmqzZtZiAy', N'Danny Beier', N'khanhuser733741@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'90436f24-0003-44f2-90b9-dae7af07a2e6', N'artlover', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Ava Art', N'ava@example.com', CAST(N'1993-03-01T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
GO
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'929e720e-0681-464e-90ea-d660dd11dd74', N'user1691', N'$2a$10$95dCsQKyAPveDUIujLnpTOVPyfSzTWvfvtRB6mlN7sjSyU3AWGdyq', N'Marcia Medhurst', N'user4656@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9305cae5-436f-4b1b-bc0a-c0683ebadaa5', N'user3695', N'$2a$10$x9/p99p14z1RvkS1efHYt.w8HQ2hqPNGk/hlP9iFOCuD0TBXC8xkq', N'Betsy Schneider', N'user4792@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'93ebc9c5-a62c-4e7f-889f-fa32e756eafd', N'user6201', N'$2a$10$Id/vMSARzA3zthlFnev8EeEpOdUmvrh8iLjDdQ3.NINLnqD0ItUdK', N'Crystal Streich', N'user7241@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9623c23a-e578-4b0a-aba3-692a167595bb', N'user2240', N'$2a$10$2WS4H377kZ7ZWWdXOVM1jurLY8IeNt8Jcjc49Uc4eS7ObUm585UEy', N'Inez Zieme', N'user6341@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'96b9a5ff-5f44-4879-a9b7-c278418f9437', N'techguy123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Tony Tech', N'tony@example.com', CAST(N'1995-08-24T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9847714c-0a69-4d1f-94e1-b947848607ad', N'user282', N'$2a$10$BKovW.mtpKSKj7mnZvl4c.1pij/BxysKvEuVjopQ.SmFfs5RLgsvW', N'Delbert Yundt', N'user7702@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'987984c2-a8c7-48e8-9429-564a046664d4', N'happyFeet13', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'John Wick', N'happyFeet13@example.com', CAST(N'2005-09-12T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'98e8c711-d2b9-4556-bc51-3fc1a1ef0272', N'user9726', N'$2a$10$RJV07SjsO2LHotsNwlB3NuO5RFkH11QhR8h0BDNbl.e5W3ldBFIDS', N'User 7085', N'user8115@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9905c0d4-4154-4692-a47a-6bef7bacf395', N'wanderlustRover', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Wanderer', N'wanderlustRover@example.com', CAST(N'2001-10-30T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9a5f710b-78e9-4baa-bce8-0089701f0f80', N'susan_smith', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Susan Smith', N'susan@example.com', CAST(N'1997-06-16T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9d424ce5-d738-4093-9bf3-7e5d98e9041c', N'user2983', N'$2a$10$a0f.GSrmlIAg2TAffP2OIuwXUO7.AypeuP5bBK8FlS1SepiM.6OA6', N'Lester Greenfelder', N'user2694@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9e4de293-f088-4383-936a-f567a6bc2b52', N'foodie456', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Olivia Foodie', N'olivia@example.com', CAST(N'1998-07-26T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9ee37dd0-c43a-43a5-be02-27402c50ed12', N'sportsFanatic8', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Kamisato Ayaka', N'sportsFanatic8@example.com', CAST(N'2000-01-07T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9f6b4232-2bce-4bdb-a22c-6747cc1d5f7d', N'user1129', N'$2a$10$50Gpr5nbWazG1r1PsSR3ruLF1QgSGlB0LmyHZy4Kc5KNwUch2ZzNO', N'Mrs. Juana Maggio', N'user2093@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9fce07b2-d4b7-4456-9f14-dea4f6e66931', N'user4593', N'$2a$10$Xud0PP3T6bPqdwHswzxXXu//Oyd0CUi/llVCQzNx31kwCfcmkV2c6', N'User 4954', N'user8590@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a291ca65-55c3-4240-a45b-93a3b59c2cb1', N'user7518', N'$2a$10$atTkWApLACOWszmxmEI3u.ZCYP5pBJ45IJsvQiwsYRtUcOIeX7VXG', N'Ramon Tillman', N'user1664@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a3238da4-8b36-4655-9624-b159677d6e17', N'user8691', N'$2a$10$lWRSUyJJjPi9Ro2d4vHDae6py3J5W6qp1DT2PcLZ6HTQ/Dc9lGQuG', N'Johanna Waters', N'user1589@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a382f305-b872-4fe9-b333-8e065ce06722', N'user8895', N'$2a$10$s.UZyoLOz0FfkLGRl5Kvi.MXPT/KD38d6U1pvWnBc4t/W59zNSz86', N'Kristie Hartmann', N'user1682@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a4382b9c-5ef4-4616-89dd-52c7cc8b9e99', N'user3328', N'$2a$10$5ldg335or2vWx02dJsUsteQhUfue8oUHO93CBgtztQoPrCXBVsPkW', N'Alton Mraz', N'khanhuser448755@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', N'beachBum26', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Raiden Shogun', N'beachBum26@example.com', CAST(N'2007-03-03T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a5ea2028-44db-4791-8d1a-a29b04c7e771', N'techSavvy91', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Furina', N'techSavvy91@example.com', CAST(N'2006-12-23T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a7894a85-460d-4628-a424-618503a838c1', N'user3717', N'$2a$10$Q1FXve.YEtWXVc43n1IdgesY1D/cukfEG0fMgmTR2m2MNSboendlq', N'Henrietta Fritsch', N'user9993@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a7c4ec5a-87c1-479c-b40f-10cd9d22fe0c', N'user6824', N'$2a$10$16meNSsn4fS/iM68IWiZi.84AQL58KeNGU4p38grnz56.WCQu79T2', N'Judith Monahan', N'user2766@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a7e13bf3-d0bc-4551-bac1-c7717a2e2094', N'user5043', N'$2a$10$SuwKOEiyYiot0j3H21djoeKsbG9BFuydG.wwZW.NwIAk9rzRzJc36', N'Kenny Cronin', N'user7648@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ac1dfb0a-4626-4a11-b86e-1e501818ef22', N'user8645', N'$2a$10$izy3pd6KWwALaIRKwnFhBejBZ24PSEppKzuWU4pyii9IL.Z9rgauS', N'Esther Reinger', N'user2675@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ad4d8784-4f14-433c-90d9-d2d1a65226e0', N'user4132', N'$2a$10$KSnhYK0rAuJmMWxi3JSHRukQfU9rQ.rPFTp5NpBeqdnfeLWeGr9ti', N'Grady Nienow', N'user3703@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'adb5eb58-0d00-4b16-8e29-6431ae6f0b9a', N'user6006', N'$2a$10$d6lxaPoCoCNOwxGZfalZru0cYSabLUzjAzAuDZYa.oZS/Ua6quGsW', N'Mr. Loren Dickinson', N'user2164@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b2da6a66-e0b5-406c-88c3-a7c5c945f6ac', N'user5171', N'$2a$10$t.0jqN5WN0Gj7tiL11eOWuM7KsgPuz9lczR/NbWtMX/N/Nk4k.8z2', N'Johnathan Botsford', N'user7355@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b3227d9d-0804-4fe8-9601-d54f4a50f920', N'user5635', N'$2a$10$jFrELrxJFQTZsfkDFNO/jOJ31w8QlaD3YboMit5BhelKsnLIwej02', N'Joyce Gottlieb', N'user7750@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b3f82d57-80fc-42d1-bb29-84004ea236a4', N'user3367', N'$2a$10$vA0suqLpg1ypEDxVErIW.uPLPOLSHBa3BfidJkUOLmIYX1UpD3Ax6', N'Miss Minnie Conn', N'user1875@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b4266eb6-61c6-4fd9-8d9b-3d08810c73dc', N'user9506', N'$2a$10$D/88DR0LuYxGdiIajQRPreGxCR8JSB1qk0ZwwnP5GVTrvDouVpQMq', N'Valerie Blanda', N'user3592@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b621be83-9d21-4fa0-8160-cd8b50f82948', N'user5535', N'$2a$10$CuSIzI2FZ918uaxcBXsg8.z.Ntl0OFe47n847PH2CHPEb.f/1ndsG', N'Morris Larson', N'khanhuser270475@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b6621de3-dfff-4722-b744-c9e68ecc0565', N'user7320', N'$2a$10$wjKJ71.NzIcGQd9tcHBOlusy1fGvv2YOvobVp2DU5n6NauTQhYgLS', N'Cornelius Bode', N'user8020@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b6ab6252-69f6-4988-b349-3d2b34f3980f', N'user8757', N'$2a$10$3WkKlmfrs3bu2dyjSKNfweriAXHu9Y7h6GozZQNCqfdWwPzZWgj0a', N'Matthew Kutch', N'khanhuser444126@gmail.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b6de3646-c67e-4293-b4d2-a13dada537ca', N'user5774', N'$2a$10$ZG8USGDEh6W3aIhtMH/bIOya3ogGXsDNPQpNcxMMosJTsSRf/vtKC', N'Dwayne Gislason', N'user1886@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b6f51357-0dad-4515-b3ea-ca3812e04fb9', N'selfieKing55', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Lyney', N'selfieKing55@example.com', CAST(N'2009-09-28T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b6f62caa-8d38-476c-b332-c421244a3849', N'user4865', N'$2a$10$zp8drG47VH7WwX3X.79S..mnGdCpMv8zTYDPvifd84RJfkAURYAWa', N'Clyde Hills', N'user8981@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b84f2db4-1634-42f8-9775-76e83e114c6f', N'catLover77', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Love Cat So Much', N'catLover77@example.com', CAST(N'1992-08-31T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ba244b03-3935-40c9-9d76-205ef849dda6', N'user2908', N'$2a$10$TZN.X4PlNv5qAhgjjp0uC.BA9ELIR7y.Ap/VjzKTnIMooWtZ6b/X2', N'Alfred Medhurst', N'user825@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'bafdd9e5-dbcb-4f2b-99e6-0a64e619e3ac', N'gamer123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Daniel Gamer', N'daniel@example.com', CAST(N'1999-04-06T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'bc07df39-63b7-49b6-9299-fe98c922771b', N'user3443', N'$2a$10$vqQKcthJjL41xNiKVsRpqeZ3XIhDwboKXj.H0GapzZHYpBoJX8d1i', N'Nadine Zboncak', N'user5419@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'bdef04be-a300-47fd-94f7-83ab0640137b', N'user9557', N'$2a$10$fcKRJcA9plOOff0wbTExl.evx.buATslov/xiB1eIhWHZ8V2.mqf6', N'Tracy Dooley', N'user5743@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'bdfa5ae8-065a-42e6-8a38-8054d1bb3f01', N'user6537', N'$2a$10$xMh41r5Nzw.Y.WBSXscSyOGIf7UN56mgWKFOi8N4QwbUwccGUonnG', N'Alton Lesch', N'user9199@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'bf738340-d654-4be0-b945-754a108ad896', N'user5428', N'$2a$10$RHScbFeWVj4g1Zm1ChgfjOAq4h0tQa95tK8q8b6sW8w7klA/eri.S', N'User 8708', N'user9165@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'bfd49872-263d-40e4-89dc-aaf587d4db0b', N'user871', N'$2a$10$ueQjUMReWB.f60vl1LRiv.91JHLG89okW.YbUcIBTArV6dNs7kH/y', N'Sheri Oberbrunner', N'user7920@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'c22df346-3c0b-49c8-8fe3-5d30ec39a3f3', N'developer123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Chris Developer', N'chris@example.com', CAST(N'2003-02-11T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'c4622aa3-df86-48ac-8ad3-5277088c5692', N'user2469', N'$2a$10$3eKN06GlZztLXFGps/1ZvOGWoieOZY3T.cQw/Z4ZO1/XCz.WAdCK.', N'Shelly Lebsack', N'user6672@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'c7748a71-9c72-4a99-9ff0-1a09c8c57201', N'user3188', N'$2a$10$r.oIW7WPq7i88emsjB1bMuudzkJV2/WNuu3y0g.Yln4XeMp45zIhq', N'Alice Gleichner', N'user2072@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'c8043bae-31f1-4cd9-90a3-ea3a55c7b08f', N'user4470', N'$2a$10$f9Fo11MdX/9YmzNM354XzOrY8ysMZynclLxFw4GtKhHXAGJ4W/Kc6', N'Amos Considine', N'user9422@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'c9b8f89f-a838-4b3a-ab85-aa70cbbb2987', N'user6414', N'$2a$10$c.J8vZDZrOMfKkNSvPbBfupBVjQAjVPvHhIp68tRt7KToXJYyqKKi', N'Kristen Wehner', N'user3579@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'cd188d7b-7ae4-494c-9d52-ae706cd16f87', N'user4653', N'$2a$10$KS.nrsqLlyCGVf6mpkgY1udR7jngftPxIag0yLto57S2chyyWOSta', N'Aubrey Erdman', N'user8544@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'cd612c0d-fd4b-46da-8965-05750108e835', N'test_user', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Test User', N'test.user@example.com', CAST(N'2008-05-15T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'cecbf4de-242f-4bc6-8963-12fa286e634f', N'dogWhisperer3', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Cannot Hate Dog', N'dogWhisperer3@example.com', CAST(N'1996-11-08T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'cf9fe99f-8767-4817-a04c-7a029a436dde', N'user7416', N'$2a$10$m5bb9Y/Gj/dGbxJTT3uvXuQNWANhwJ1vn5mXkjYsGEC036AcR7rzm', N'Janie Kuhic', N'user6188@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd18077a9-be1b-44d9-8d6b-e2f49aaa89aa', N'user4588', N'$2a$10$iGWfjaH.qQHXiFv3bPgm7ODXh.dIGONwTSupBRk8SISjytDzt1Zqe', N'Marian Turcotte', N'user9558@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd2e35284-1ded-422d-9057-c89f5d9e3b47', N'user2251', N'$2a$10$HqcKJAvkJPkTniJGDziS.ucY43b49TDB.x/mjrD0558vNR6FRCgxq', N'Eddie Pfeffer', N'user6316@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd5185b15-bd62-4e51-91ab-b4bf5d5a70ae', N'mountainHiker40', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Itto', N'mountainHiker40@example.com', CAST(N'2004-08-02T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd6f82f61-26a9-438f-8016-46592b7f351c', N'user5460', N'$2a$10$0UA1lPp6Xn7IMd4wJkVuAOqDkM3IahDNuLVUuUMaEM0tiX0zZbrAa', N'Ms. Santos Hayes', N'user3790@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd70738f2-d359-4463-90de-b98765b9d558', N'user7567', N'$2a$10$biyCVXZULRfyibK2fcH5VurFBTUr4Lj3dnGb/HzwhM/3zr9wiVzIW', N'User 6856', N'user7761@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd9b2cadc-41ae-43b2-bfb6-1643729c3558', N'fitnessuser', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Emily Fitness', N'emily@example.com', CAST(N'1994-01-04T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd9e5a6ac-107b-4232-bb87-7ccee057efad', N'user3755', N'$2a$10$sT6Bw99EgZOSl6LyubABcuTVbgKvmd/w1cRF8jWlrQ3yfH7R197X2', N'Bert Nitzsche', N'khanhuser806611@gmail.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'dc52db64-96e6-46af-acab-53681d929bc5', N'user1871', N'$2a$10$san4ch3QBl3.akTRxq0GYejYqfEoSj725l.AVzyWRKwg8AovOYRnu', N'Lessie', N'user3192@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'def291e3-d0da-4e82-9053-38b0ad8ffc8c', N'user9332', N'$2a$10$yixbzFScwYqLv9SsGjr29OXhQu1/c7XkSsQHn86ofla..HM3ADPcO', N'Gloria', N'user782@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'df0516f3-7dc6-4007-a597-e817f99db6f7', N'user9223', N'$2a$10$OeAGw0wGpk8oXUTZb8h.5OxtHj88FPDSznIZCrbFa2SfqFm/bxtE6', N'Ricky McLaughlin', N'user9663@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e041c012-b97b-42b3-b13a-52570f9b5be8', N'roadTripper7', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Gorou', N'roadTripper7@example.com', CAST(N'2005-07-19T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e04cd099-24f3-4576-8453-f9696996f25c', N'user1207', N'$2a$10$/h2EkmGKcuC2tepwoZ2p9.YxhC8B94RONXZgoPWsItzwu02oQANwG', N'Miss Jose Kris', N'user8284@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e2bf800c-9ac4-451d-9ec5-b58ea9758df5', N'user5082', N'$2a$10$AkTaDe2.uqi.aWgmrkAggOVV6bZve8ubp8Wl2K9PEtUfOHt3h6jDG', N'Shelley Abshire', N'user1202@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e317bc0e-9b36-4480-b65f-3f395c3f70fd', N'traveler789', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'William Traveler', N'william@example.com', CAST(N'2002-03-22T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e3c2689a-2fea-4a90-851e-cdd4eb2a746d', N'user6686', N'$2a$10$rW8OLeC3wFSgIXGJxzoIBebkzpTLJFdyAsnjVlZx.T5aCXADsUZue', N'User 9211', N'user9198@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e6557989-4f8f-429f-bae3-be8d9497df8d', N'user7689', N'$2a$10$fTvcUcL.OWrbZgpu/fYQROJTeKR6TdR9MApstmCEZQAOLzm6wd32i', N'Mrs. Lila Bartoletti', N'user3274@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e772ed19-6d87-4a9c-8c56-d84766589db4', N'adventureTime12', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Kaedehara Kazuha', N'adventureTime12@example.com', CAST(N'1993-12-26T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e86f0a04-7594-42e7-986a-cee398c9d961', N'user7745', N'$2a$10$O4xWCngr2pJ4wzkmkNLNOOYjzW8mDy9i28zv.bvY.CgR0aB9bcKyC', N'Mildred Fritsch', N'user4758@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e960e3eb-a30e-4783-ae7c-51f7ed047bb3', N'user1187', N'$2a$10$.xvF.qkfMWSgxmedvgkX/ecu17LDJdeuzGBNXaR9hihq/Yrgt5KpS', N'Arely', N'user984@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ea16b329-ea45-4b9d-8506-ec8e66209adc', N'user5819', N'$2a$10$Nb02HjbYWYzSz3rW6IGFT.zQe/vaCj1LeJXrS6pzH.HfYbsH5BbMS', N'Opal Wisoky', N'user5174@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ed147c9c-143b-492f-b28a-59c86350209e', N'user3951', N'$2a$10$O23jbzVdNMECbJkEG8r6NO5tASQW2/cOjm.AYTQcM7foMLcvdoIeK', N'Wade Purdy', N'user7654@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', N'nightOwl88', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Jean', N'nightOwl88@example.com', CAST(N'1995-02-10T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'eeaf5bdb-01fe-42cb-a323-cdcb4bcc17eb', N'user8325', N'$2a$10$4o8zJxfZP1aAHa2S4qBN1OvKVcKX/1XRHWfxQqRFGaUriafyPntR2', N'Teresa Schimmel', N'user5954@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ef9cf7b3-6835-4911-91bb-b3aec44095b8', N'user1552', N'$2a$10$Da9YypqhSYhRrq3gssNZWukgnUYrd9yAD0yXFrxYbXzoaE1GparNm', N'Mr. Nicholas Runolfsdottir', N'user354@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'f02079fb-c290-4ed9-8bea-a978799801e8', N'codeJunkie47', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Eren Yeager', N'codeJunkie47@example.com', CAST(N'2001-04-18T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'f4d3b03b-4ac3-4ea7-b66c-4a7934783177', N'user1244', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'User 3669', N'user290@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'fb12dce2-2ebf-4f72-aa1e-f1268cca205b', N'user7289', N'$2a$10$7Q27QejPHhP41oqpEHkNVOyJyHlfphJE3YdlzcDEF5FgGlAJNkEci', N'User 4533', N'user302@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'fb67a644-b611-4444-ac0f-4ac50c7e0051', N'user108', N'$2a$10$PP3OS3mQsdqfD0Jbwlz2KuV.GwEjGyNIauvk.NDgojvzi9UxVIsJS', N'Alonzo Cruickshank', N'user5852@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'fbfbe8fa-2f72-471c-90d0-4752ede4d117', N'user8057', N'$2a$10$4BEsoI/PcsadaaHLN0NF5uW/CbcPUQnY3peH8VX6F.kQWiYR/i80a', N'Sophie Crona', N'user691@example.com', NULL, 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'fd2b1319-adc3-4cd7-b4ad-589fa0fa49af', N'user8055', N'$2a$10$Ho7lKz1z1cY/nP7pJgYTbObQdWFscKbyd9VNmzLIVyFMmZTjLdI5.', N'Lana Lockman V', N'user1416@example.com', NULL, 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'fe7b223e-548d-4189-89a6-3160666b211f', N'user3614', N'$2a$10$ShsSmKX7P344vGYy80KpT.KasBL7uAJCXT2r5rtetQJQv5OqpYul6', N'Genevieve Denesik', N'user2812@example.com', NULL, 1, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblUser_Role] ON 

INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (1, N'838f3f86-2a2b-46b3-a278-0667fb822c36', 5, CAST(N'2023-11-13T14:03:51.5510000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (2, N'3ee492f6-c6f9-4e53-a6db-c2d77f2a6144', 5, CAST(N'2023-11-13T14:04:37.5120000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (3, N'7ee02806-3473-452b-a49c-7d09f475687d', 5, CAST(N'2023-11-13T14:04:45.7260000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (4, N'cd612c0d-fd4b-46da-8965-05750108e835', 5, CAST(N'2023-11-13T14:04:54.8350000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (5, N'83016dc4-2323-4ccc-a18c-8d2506e61621', 5, CAST(N'2023-11-13T14:05:01.6530000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (6, N'9a5f710b-78e9-4baa-bce8-0089701f0f80', 5, CAST(N'2023-11-13T14:05:35.9740000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (7, N'c22df346-3c0b-49c8-8fe3-5d30ec39a3f3', 5, CAST(N'2023-11-13T14:05:41.2750000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (8, N'55347702-a256-4256-9efa-abef44ad7364', 5, CAST(N'2023-11-13T14:05:46.9800000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (9, N'328fcefc-cd61-41ca-ba21-c48f70feaf76', 4, CAST(N'2023-11-13T14:05:55.6100000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (10, N'6a9759d1-a6dc-4f94-999d-f5e92b85a5b6', 5, CAST(N'2023-11-13T14:06:02.1680000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (11, N'2721b07e-fde8-4037-855a-05cef3457381', 5, CAST(N'2023-11-13T14:06:09.0900000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (12, N'2a9ce096-5163-4324-bbc8-9192e6d4fc0b', 5, CAST(N'2023-11-13T14:06:16.8570000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (13, N'7da30436-8701-48c5-8e30-e9a413a38566', 1, CAST(N'2023-11-13T14:06:23.4960000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (14, N'96b9a5ff-5f44-4879-a9b7-c278418f9437', 4, CAST(N'2023-11-13T14:06:28.9470000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (15, N'31a7db28-5fbc-4de2-a83c-9ed94ab53712', 5, CAST(N'2023-11-13T14:06:44.0120000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (16, N'9e4de293-f088-4383-936a-f567a6bc2b52', 5, CAST(N'2023-11-13T14:06:50.4020000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (17, N'e317bc0e-9b36-4480-b65f-3f395c3f70fd', 5, CAST(N'2023-11-13T14:06:57.4010000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (18, N'd9b2cadc-41ae-43b2-bfb6-1643729c3558', 5, CAST(N'2023-11-13T14:07:02.6300000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (19, N'bafdd9e5-dbcb-4f2b-99e6-0a64e619e3ac', 4, CAST(N'2023-11-13T14:07:08.4180000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (20, N'90436f24-0003-44f2-90b9-dae7af07a2e6', 5, CAST(N'2023-11-13T14:07:12.0850000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (21, N'5422582b-35a5-40ee-9288-601e7e7c3a23', 4, CAST(N'2023-11-13T14:13:34.3630000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (22, N'4363228b-a67a-415c-bc2d-247b303b3555', 5, CAST(N'2023-11-13T14:14:01.5370000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (23, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 5, CAST(N'2023-11-13T14:14:02.8730000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (24, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 5, CAST(N'2023-11-13T14:14:03.5990000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (25, N'65b6b2ae-250a-4698-b5cf-f530bf139491', 5, CAST(N'2023-11-13T14:14:04.3170000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (26, N'168126aa-9f15-4a70-832a-285276ae39ea', 4, CAST(N'2023-11-13T14:14:24.2360000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (27, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 5, CAST(N'2023-11-13T14:14:25.0100000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (28, N'9905c0d4-4154-4692-a47a-6bef7bacf395', 5, CAST(N'2023-11-13T14:14:26.1770000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (29, N'1cfbf661-f9dc-42a7-8299-61909766f9de', 5, CAST(N'2023-11-13T14:14:33.2900000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (30, N'e041c012-b97b-42b3-b13a-52570f9b5be8', 5, CAST(N'2023-11-13T14:14:34.3600000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (31, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 5, CAST(N'2023-11-13T14:14:35.1820000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (32, N'b84f2db4-1634-42f8-9775-76e83e114c6f', 5, CAST(N'2023-11-13T14:14:35.9820000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (33, N'a5ea2028-44db-4791-8d1a-a29b04c7e771', 5, CAST(N'2023-11-13T14:14:36.7840000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (34, N'02b48493-8eb8-4215-8638-c92257e8b375', 5, CAST(N'2023-11-13T14:14:37.7350000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (35, N'7214ad25-6539-4a2f-a883-fabf7608f5d1', 5, CAST(N'2023-11-13T14:14:38.4010000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (36, N'6f295afa-5c46-4b52-a292-3fb97ed4544a', 5, CAST(N'2023-11-13T14:14:39.2180000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (37, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 5, CAST(N'2023-11-13T14:14:39.9290000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (38, N'309f160c-b5c9-400e-a70b-cd14bb0d92fd', 5, CAST(N'2023-11-13T14:14:44.1200000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (39, N'f02079fb-c290-4ed9-8bea-a978799801e8', 5, CAST(N'2023-11-13T14:15:14.6390000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (40, N'b6f51357-0dad-4515-b3ea-ca3812e04fb9', 5, CAST(N'2023-11-13T14:15:15.4370000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (41, N'00299536-a753-42c8-bd07-50091bc2f789', 5, CAST(N'2023-11-13T14:15:16.2420000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (42, N'd5185b15-bd62-4e51-91ab-b4bf5d5a70ae', 5, CAST(N'2023-11-13T14:15:17.1830000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (43, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', 5, CAST(N'2023-11-13T14:15:17.9160000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (44, N'3947e1ad-e407-4a28-9a36-42c8bc095537', 5, CAST(N'2023-11-13T14:15:18.6820000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (45, N'74c5b4ed-1509-43ea-b7b1-b9cdade2bd5b', 5, CAST(N'2023-11-13T14:15:19.4690000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (46, N'e772ed19-6d87-4a9c-8c56-d84766589db4', 5, CAST(N'2023-11-13T14:15:20.2210000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (47, N'213a9390-19c8-4596-8a64-b3d0beb32635', 5, CAST(N'2023-11-13T14:15:21.0360000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (48, N'3e83675a-ee99-4e2a-93fe-a73da2852641', 5, CAST(N'2023-11-13T14:15:22.0010000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (49, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 5, CAST(N'2023-11-13T14:15:22.7810000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (50, N'987984c2-a8c7-48e8-9429-564a046664d4', 5, CAST(N'2023-11-13T14:15:23.4900000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (51, N'f4d3b03b-4ac3-4ea7-b66c-4a7934783177', 5, CAST(N'2023-11-13T14:42:39.7840000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (52, N'bdef04be-a300-47fd-94f7-83ab0640137b', 5, CAST(N'2023-11-14T17:58:47.0540000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (53, N'600a9e9b-1eef-497b-8e96-db59d1edc521', 5, CAST(N'2023-11-14T17:58:47.6480000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (54, N'9d424ce5-d738-4093-9bf3-7e5d98e9041c', 5, CAST(N'2023-11-14T17:58:48.2210000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (55, N'b3227d9d-0804-4fe8-9601-d54f4a50f920', 5, CAST(N'2023-11-14T17:58:49.2130000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (56, N'b6621de3-dfff-4722-b744-c9e68ecc0565', 5, CAST(N'2023-11-14T17:58:50.7950000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (57, N'0c96dd28-5961-4b5b-b952-7d0936834ba2', 5, CAST(N'2023-11-14T17:58:51.6760000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (58, N'824a3677-b07b-42eb-8dc2-2d0b1c2e6c04', 5, CAST(N'2023-11-14T17:58:53.2630000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (59, N'ef9cf7b3-6835-4911-91bb-b3aec44095b8', 5, CAST(N'2023-11-14T17:58:57.8070000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (60, N'e6557989-4f8f-429f-bae3-be8d9497df8d', 5, CAST(N'2023-11-14T17:58:58.8590000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (61, N'ed147c9c-143b-492f-b28a-59c86350209e', 5, CAST(N'2023-11-14T17:59:07.3630000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (62, N'fb67a644-b611-4444-ac0f-4ac50c7e0051', 5, CAST(N'2023-11-14T17:59:25.7020000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (63, N'd6f82f61-26a9-438f-8016-46592b7f351c', 5, CAST(N'2023-11-14T17:59:26.7770000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (64, N'a291ca65-55c3-4240-a45b-93a3b59c2cb1', 5, CAST(N'2023-11-14T17:59:27.3290000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (65, N'b6f62caa-8d38-476c-b332-c421244a3849', 5, CAST(N'2023-11-14T17:59:31.6150000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (66, N'a382f305-b872-4fe9-b333-8e065ce06722', 5, CAST(N'2023-11-14T17:59:32.7820000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (67, N'9847714c-0a69-4d1f-94e1-b947848607ad', 5, CAST(N'2023-11-14T17:59:33.2400000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (68, N'b3f82d57-80fc-42d1-bb29-84004ea236a4', 5, CAST(N'2023-11-14T17:59:34.0000000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (69, N'711d6119-7957-4229-a93d-a52f02a70c42', 5, CAST(N'2023-11-14T17:59:34.7230000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (70, N'cf9fe99f-8767-4817-a04c-7a029a436dde', 5, CAST(N'2023-11-14T17:59:37.1720000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (71, N'eeaf5bdb-01fe-42cb-a323-cdcb4bcc17eb', 5, CAST(N'2023-11-14T17:59:37.6770000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (72, N'929e720e-0681-464e-90ea-d660dd11dd74', 5, CAST(N'2023-11-14T17:59:38.1120000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (73, N'46529144-ad96-4d33-9971-d4e45dc2f405', 5, CAST(N'2023-11-14T17:59:38.5260000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (74, N'93ebc9c5-a62c-4e7f-889f-fa32e756eafd', 5, CAST(N'2023-11-14T17:59:39.7410000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (75, N'ad4d8784-4f14-433c-90d9-d2d1a65226e0', 5, CAST(N'2023-11-14T17:59:40.1410000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (76, N'fbfbe8fa-2f72-471c-90d0-4752ede4d117', 5, CAST(N'2023-11-14T17:59:42.5560000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (77, N'89a78f94-20f2-4356-a74f-c75f4cfefdd6', 5, CAST(N'2023-11-14T17:59:43.7150000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (78, N'b2da6a66-e0b5-406c-88c3-a7c5c945f6ac', 5, CAST(N'2023-11-14T17:59:44.0820000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (79, N'386d264a-0d1b-487c-bd67-b7741c0ce38a', 5, CAST(N'2023-11-14T17:59:46.4660000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (80, N'0f056b06-720f-481a-b4ab-6697c738a6df', 5, CAST(N'2023-11-14T17:59:48.3860000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (81, N'4a489c95-cac9-4e63-98b6-6159f229c485', 5, CAST(N'2023-11-14T17:59:49.9170000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (82, N'45404bac-2ff6-4127-8600-564da1f52e5a', 5, CAST(N'2023-11-14T17:59:50.9420000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (83, N'4bea7c1a-928e-4b3c-b5cd-d836b9e57c31', 5, CAST(N'2023-11-14T17:59:51.3000000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (84, N'7798cff6-c153-43ca-858b-67845fc300bf', 5, CAST(N'2023-11-14T17:59:51.8170000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (85, N'a3238da4-8b36-4655-9624-b159677d6e17', 5, CAST(N'2023-11-14T18:00:02.9940000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (86, N'48cfe193-9de4-461e-aded-b9fcee9ee8d1', 5, CAST(N'2023-11-14T18:00:04.8610000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (87, N'c8043bae-31f1-4cd9-90a3-ea3a55c7b08f', 5, CAST(N'2023-11-14T18:00:06.8440000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (88, N'3080b716-1b79-49cc-b7d2-b71c89e9ef28', 5, CAST(N'2023-11-14T18:00:07.5220000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (89, N'110fcd91-2c78-4ad9-b61f-011f83bf305b', 5, CAST(N'2023-11-14T18:00:09.1030000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (90, N'44319e01-0f61-431e-abc5-e3aeb6958929', 5, CAST(N'2023-11-14T18:00:10.4100000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (91, N'd2e35284-1ded-422d-9057-c89f5d9e3b47', 5, CAST(N'2023-11-14T18:00:11.1650000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (92, N'23052257-b24b-4cbe-b461-e72182208822', 5, CAST(N'2023-11-14T18:00:11.8450000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (93, N'02eea20e-593b-40f0-a671-327da05efd40', 5, CAST(N'2023-11-14T18:00:13.6920000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (94, N'c4622aa3-df86-48ac-8ad3-5277088c5692', 5, CAST(N'2023-11-14T18:00:14.7810000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (95, N'bdfa5ae8-065a-42e6-8a38-8054d1bb3f01', 5, CAST(N'2023-11-14T18:00:15.5670000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (96, N'7ae691fb-18f7-4fab-a12c-c9b0d134d023', 5, CAST(N'2023-11-14T18:00:16.0440000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (97, N'2db7a610-0f7a-41d1-88a2-0a55768ce400', 5, CAST(N'2023-11-14T18:00:16.4480000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (98, N'0e2a1744-4b62-46a6-bba6-dffa04d4c9ac', 5, CAST(N'2023-11-14T18:00:16.8470000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (99, N'1f74e023-abb5-4cf8-930a-192d52fc3db2', 5, CAST(N'2023-11-14T18:00:20.0750000' AS DateTime2), NULL, 1)
GO
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (100, N'b6de3646-c67e-4293-b4d2-a13dada537ca', 5, CAST(N'2023-11-14T18:00:20.4340000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (101, N'a7894a85-460d-4628-a424-618503a838c1', 5, CAST(N'2023-11-14T18:00:21.5890000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (102, N'53210ae3-3dd0-48c2-96d1-cf643d12a275', 5, CAST(N'2023-11-14T18:00:22.7070000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (103, N'11215cda-4636-40f4-9fe8-2febe91560b6', 5, CAST(N'2023-11-14T18:00:23.1570000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (104, N'd18077a9-be1b-44d9-8d6b-e2f49aaa89aa', 5, CAST(N'2023-11-14T18:00:24.2380000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (105, N'9305cae5-436f-4b1b-bc0a-c0683ebadaa5', 5, CAST(N'2023-11-14T18:00:24.6210000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (106, N'df0516f3-7dc6-4007-a597-e817f99db6f7', 5, CAST(N'2023-11-14T18:00:27.5830000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (107, N'bc07df39-63b7-49b6-9299-fe98c922771b', 5, CAST(N'2023-11-14T18:00:49.6190000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (108, N'adb5eb58-0d00-4b16-8e29-6431ae6f0b9a', 5, CAST(N'2023-11-14T18:00:50.6440000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (109, N'26728b81-44d4-4ec8-89ca-b97ef41571fb', 5, CAST(N'2023-11-14T18:01:51.4110000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (110, N'd9e5a6ac-107b-4232-bb87-7ccee057efad', 5, CAST(N'2023-11-14T18:02:22.3140000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (111, N'7f0be948-3484-4fa8-8a2b-4fa22c7092f1', 5, CAST(N'2023-11-14T18:02:24.7860000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (112, N'2707090d-1f89-4088-9587-8a8e617ffd8e', 5, CAST(N'2023-11-14T18:02:25.7680000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (113, N'70dbc7f9-f61d-4a36-81ef-bb25632cec68', 5, CAST(N'2023-11-14T18:02:26.7170000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (114, N'44cce4dc-3dbe-4494-accd-1d334f0f4ac1', 5, CAST(N'2023-11-14T18:02:27.6940000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (115, N'8f03618e-7b1a-4813-9369-17d9a13a192c', 5, CAST(N'2023-11-14T18:02:28.6580000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (116, N'22469b44-7d62-46b0-a010-894f5338f455', 5, CAST(N'2023-11-14T18:02:29.5420000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (117, N'4a8f5597-1fb9-4ed4-b962-68118f8c6539', 5, CAST(N'2023-11-14T18:02:30.3660000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (118, N'19b76fa3-24e7-409e-ab50-cccda2c048dc', 5, CAST(N'2023-11-14T18:02:31.1930000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (119, N'6cba8f81-7370-47a6-9f5f-afd3c842f6ef', 5, CAST(N'2023-11-14T18:02:31.9220000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (120, N'516202c4-bdcd-4148-ad59-641a68416146', 5, CAST(N'2023-11-14T18:02:32.6880000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (121, N'b6ab6252-69f6-4988-b349-3d2b34f3980f', 5, CAST(N'2023-11-14T18:02:33.5190000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (122, N'89c4288b-046b-4fe1-832f-4461362c6dae', 5, CAST(N'2023-11-14T18:02:34.1780000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (123, N'367da4ef-2891-4450-ad3d-c491fb721020', 5, CAST(N'2023-11-14T18:02:35.0380000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (124, N'a4382b9c-5ef4-4616-89dd-52c7cc8b9e99', 5, CAST(N'2023-11-14T18:02:35.7290000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (125, N'5d6ab49a-422b-467d-bbbe-56a713f6fcc9', 5, CAST(N'2023-11-14T18:02:36.5090000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (126, N'60031ecb-fde0-44cc-a44e-a6e38537a230', 5, CAST(N'2023-11-14T18:02:37.2950000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (127, N'19f9ab13-fd33-4f6d-8585-c3f419ab6308', 5, CAST(N'2023-11-14T18:02:38.0270000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (128, N'01547cde-7d15-4adc-ae06-4e843c41e822', 5, CAST(N'2023-11-14T18:02:38.9570000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (129, N'4cb2d069-31a8-4a7f-94b2-cd624a4b02d5', 5, CAST(N'2023-11-14T18:02:39.7830000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (130, N'23b00a0a-6267-4e02-818f-73b2917d5fb2', 5, CAST(N'2023-11-14T18:02:41.0460000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (131, N'b621be83-9d21-4fa0-8160-cd8b50f82948', 5, CAST(N'2023-11-14T18:02:41.8970000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (132, N'426ce6f4-5332-4c8a-aad1-c377117dd400', 5, CAST(N'2023-11-14T18:02:42.5840000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (133, N'2cd5a2f9-7323-448c-8717-aa33a94a37b5', 5, CAST(N'2023-11-14T18:02:43.3930000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (134, N'1dc66f49-066e-4acc-8b89-f1f1f49204dd', 5, CAST(N'2023-11-14T18:02:44.1080000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (135, N'17b16587-0fe1-4b72-a867-7591b57ae6ad', 5, CAST(N'2023-11-14T18:02:44.7650000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (136, N'98e8c711-d2b9-4556-bc51-3fc1a1ef0272', 5, CAST(N'2023-11-14T17:51:58.1030000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (137, N'bf738340-d654-4be0-b945-754a108ad896', 5, CAST(N'2023-11-14T17:52:07.5290000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (138, N'9fce07b2-d4b7-4456-9f14-dea4f6e66931', 5, CAST(N'2023-11-14T17:52:09.1730000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (139, N'0ec411dc-3903-4ed9-b936-fa841d86e09a', 5, CAST(N'2023-11-14T17:52:10.2210000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (140, N'78e8a23c-8763-4bfc-9d6e-11dffe91a12b', 5, CAST(N'2023-11-14T17:52:11.2510000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (141, N'4dbcc627-ac9f-41c5-8e54-0571c67c11a6', 5, CAST(N'2023-11-14T17:52:12.1930000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (142, N'd70738f2-d359-4463-90de-b98765b9d558', 5, CAST(N'2023-11-14T17:53:10.3080000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (143, N'1362cd81-7136-4c6c-8fe1-14a0bda98faa', 5, CAST(N'2023-11-14T17:53:11.3300000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (144, N'fb12dce2-2ebf-4f72-aa1e-f1268cca205b', 5, CAST(N'2023-11-14T17:53:12.3240000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (145, N'6e371817-a4c3-46bb-8390-af296218292a', 5, CAST(N'2023-11-14T17:53:18.4770000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (146, N'e3c2689a-2fea-4a90-851e-cdd4eb2a746d', 5, CAST(N'2023-11-14T17:54:57.9740000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (147, N'18619cc3-9241-4b15-87ef-0c417d969fcb', 5, CAST(N'2023-11-14T17:55:00.4140000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (148, N'0a391310-7a66-4773-8c50-64a545e92910', 5, CAST(N'2023-11-14T17:55:01.4170000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (149, N'8005d665-ee13-49ae-b6b4-df326ba671e8', 5, CAST(N'2023-11-14T17:55:59.1400000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (150, N'e960e3eb-a30e-4783-ae7c-51f7ed047bb3', 5, CAST(N'2023-11-14T17:56:00.2980000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (151, N'def291e3-d0da-4e82-9053-38b0ad8ffc8c', 5, CAST(N'2023-11-14T17:56:01.3580000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (152, N'dc52db64-96e6-46af-acab-53681d929bc5', 5, CAST(N'2023-11-14T17:56:02.4010000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (153, N'8cf924c1-5bf9-41f4-9155-07775a17dba5', 5, CAST(N'2023-11-14T17:56:03.3530000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (154, N'7e71ac07-b027-4304-a048-7831163d7ffe', 5, CAST(N'2023-11-14T17:56:04.3370000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (155, N'1d68a82f-f910-4e6f-921d-8c8ca94bc592', 5, CAST(N'2023-11-14T17:57:36.4510000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (156, N'1a35b581-cebd-4136-9934-2b9e482e1822', 5, CAST(N'2023-11-14T17:57:37.7460000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (157, N'ba244b03-3935-40c9-9d76-205ef849dda6', 5, CAST(N'2023-11-14T17:57:38.7000000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (158, N'8c2d0322-94be-4ee1-a815-00fe6bca4589', 5, CAST(N'2023-11-14T17:57:39.5730000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (161, N'332b7910-99e0-4d95-a324-1269bf4d6511', 5, CAST(N'2023-11-14T17:58:12.8100000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (162, N'ea16b329-ea45-4b9d-8506-ec8e66209adc', 5, CAST(N'2023-11-14T17:58:16.9430000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (163, N'ac1dfb0a-4626-4a11-b86e-1e501818ef22', 5, CAST(N'2023-11-14T17:58:17.9400000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (164, N'65ec04f0-6f59-4949-a08a-42d74c689ee5', 5, CAST(N'2023-11-14T17:58:18.8850000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (165, N'671edc99-b92c-42b6-a1ca-980b0994d658', 5, CAST(N'2023-11-14T17:58:19.8150000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (166, N'4b0fad8d-98e8-4965-a221-b0435aa6967b', 5, CAST(N'2023-11-14T17:58:20.6140000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (167, N'cd188d7b-7ae4-494c-9d52-ae706cd16f87', 5, CAST(N'2023-11-14T17:58:21.3980000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (168, N'7e73a92e-9b1e-4694-824c-5ee440d214ef', 5, CAST(N'2023-11-14T17:58:22.1540000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (169, N'e2bf800c-9ac4-451d-9ec5-b58ea9758df5', 5, CAST(N'2023-11-14T17:58:22.9120000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (170, N'e86f0a04-7594-42e7-986a-cee398c9d961', 5, CAST(N'2023-11-14T17:58:23.5800000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (171, N'2c86edba-89f0-4460-b270-36bcbe8ee312', 5, CAST(N'2023-11-14T17:58:26.9030000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (172, N'6040ed1e-c0a8-4bf7-b93b-3948b96e9e53', 5, CAST(N'2023-11-14T17:58:28.9830000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (173, N'056ad09d-c080-4992-b2f0-26b6837b2055', 5, CAST(N'2023-11-14T17:58:29.5350000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (174, N'bfd49872-263d-40e4-89dc-aaf587d4db0b', 5, CAST(N'2023-11-14T17:58:31.0030000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (175, N'fd2b1319-adc3-4cd7-b4ad-589fa0fa49af', 5, CAST(N'2023-11-14T17:58:32.4330000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (176, N'fe7b223e-548d-4189-89a6-3160666b211f', 5, CAST(N'2023-11-14T17:58:33.3820000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (177, N'e04cd099-24f3-4576-8453-f9696996f25c', 5, CAST(N'2023-11-14T17:58:34.3680000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (178, N'9f6b4232-2bce-4bdb-a22c-6747cc1d5f7d', 5, CAST(N'2023-11-14T17:58:35.2640000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (179, N'6d4e7909-cb7c-4d4b-8f78-a386741a45b0', 5, CAST(N'2023-11-14T17:58:36.3050000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (180, N'9623c23a-e578-4b0a-aba3-692a167595bb', 5, CAST(N'2023-11-14T17:58:37.5270000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (181, N'a7c4ec5a-87c1-479c-b40f-10cd9d22fe0c', 5, CAST(N'2023-11-14T17:58:38.4590000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (182, N'00c540e4-1683-47c7-a9dc-ec8d8d936946', 5, CAST(N'2023-11-14T17:58:39.5610000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (183, N'211450b8-abc0-4f19-a3bb-ea121aa617c5', 5, CAST(N'2023-11-14T17:58:40.5460000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (184, N'c9b8f89f-a838-4b3a-ab85-aa70cbbb2987', 5, CAST(N'2023-11-14T17:58:41.0930000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (185, N'c7748a71-9c72-4a99-9ff0-1a09c8c57201', 5, CAST(N'2023-11-14T17:58:44.5440000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (186, N'a7e13bf3-d0bc-4551-bac1-c7717a2e2094', 5, CAST(N'2023-11-14T17:58:45.5200000' AS DateTime2), NULL, 1)
INSERT [dbo].[tblUser_Role] ([id], [userid], [roleid], [datestart], [dateend], [isactive]) VALUES (187, N'b4266eb6-61c6-4fd9-8d9b-3d08810c73dc', 5, CAST(N'2023-11-14T17:58:46.1660000' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[tblUser_Role] OFF
GO
ALTER TABLE [dbo].[Pet_Item]  WITH CHECK ADD  CONSTRAINT [FKrxt9tcd4e2b3424ajjj24j7nf] FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[Pet_Item] CHECK CONSTRAINT [FKrxt9tcd4e2b3424ajjj24j7nf]
GO
ALTER TABLE [dbo].[tblBookmark]  WITH CHECK ADD  CONSTRAINT [FK__tblBookma__posti__4F7CD00D] FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblBookmark] CHECK CONSTRAINT [FK__tblBookma__posti__4F7CD00D]
GO
ALTER TABLE [dbo].[tblBookmark]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK__tblCommen__posti__5165187F] FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK__tblCommen__posti__5165187F]
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblPet]  WITH CHECK ADD  CONSTRAINT [FK__tblPet__postid__534D60F1] FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblPet] CHECK CONSTRAINT [FK__tblPet__postid__534D60F1]
GO
ALTER TABLE [dbo].[tblPost]  WITH CHECK ADD  CONSTRAINT [FK__tblPost__categor__5441852A] FOREIGN KEY([categoryid])
REFERENCES [dbo].[tblCategory] ([id])
GO
ALTER TABLE [dbo].[tblPost] CHECK CONSTRAINT [FK__tblPost__categor__5441852A]
GO
ALTER TABLE [dbo].[tblPost]  WITH CHECK ADD  CONSTRAINT [FK__tblPost__pet_Bre__5535A963] FOREIGN KEY([pet_Breedid])
REFERENCES [dbo].[Pet_Breed] ([id])
GO
ALTER TABLE [dbo].[tblPost] CHECK CONSTRAINT [FK__tblPost__pet_Bre__5535A963]
GO
ALTER TABLE [dbo].[tblPost]  WITH CHECK ADD  CONSTRAINT [FK__tblPost__userid__5629CD9C] FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblPost] CHECK CONSTRAINT [FK__tblPost__userid__5629CD9C]
GO
ALTER TABLE [dbo].[tblPostimg]  WITH CHECK ADD  CONSTRAINT [FK__tblPostim__posti__571DF1D5] FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblPostimg] CHECK CONSTRAINT [FK__tblPostim__posti__571DF1D5]
GO
ALTER TABLE [dbo].[tblReact]  WITH CHECK ADD FOREIGN KEY([commentid])
REFERENCES [dbo].[tblComment] ([id])
GO
ALTER TABLE [dbo].[tblReact]  WITH CHECK ADD  CONSTRAINT [FK__tblReact__postid__59063A47] FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblReact] CHECK CONSTRAINT [FK__tblReact__postid__59063A47]
GO
ALTER TABLE [dbo].[tblReact]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD FOREIGN KEY([commentid])
REFERENCES [dbo].[tblComment] ([id])
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD  CONSTRAINT [FK__tblReport__posti__5BE2A6F2] FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblReport] CHECK CONSTRAINT [FK__tblReport__posti__5BE2A6F2]
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblUser_Role]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[tblRole] ([id])
GO
ALTER TABLE [dbo].[tblUser_Role]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
USE [master]
GO
ALTER DATABASE [DoCav1_4] SET  READ_WRITE 
GO
