USE [master]
GO
/****** Object:  Database [DoCav1_4]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[Pet_Breed]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[Pet_Item]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblBookmark]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblCategory]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblComment]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblPet]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblPost]    Script Date: 11/13/2023 4:04:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPost](
	[id] [nvarchar](50) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[content] [nvarchar](500) NOT NULL,
	[isactive] [bit] NOT NULL,
	[createtime] [datetime2](6) NULL,
	[issold] [bit] NOT NULL,
	[isexchange] [bit] NOT NULL,
	[userid] [nvarchar](50) NOT NULL,
	[categoryid] [int] NOT NULL,
	[pet_Breedid] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPostimg]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblReact]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblReport]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblRole]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblUser]    Script Date: 11/13/2023 4:04:06 PM ******/
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
/****** Object:  Table [dbo].[tblUser_Role]    Script Date: 11/13/2023 4:04:06 PM ******/
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
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'0bc4dab0-8f4f-426e-a9fc-3a95d8019b6b', N'British Shorthair', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'16281755-79dc-4b5e-b2da-249ae9c034da', N'Scottish Fold', N'Cat')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12', N'Bulldog', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237', N'Labrador Retriever', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'3a13a300-b1b9-405b-859b-b0d216352f42', N'Boxer', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'4cafc305-6058-4eeb-816b-2aefabb7b9fb', N'German Shepherd', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'4dada948-86d9-444e-a9f9-86b486cb1ed7', N'Dachshund', N'Dog')
INSERT [dbo].[Pet_Breed] ([id], [breedname], [pet_type]) VALUES (N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3', N'Siamese', N'Cat')
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
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'02db2bc1-84f1-4234-84f8-df99cd082286', N'Bulldog Lovers Unite', N'Discuss the charming and easygoing nature of Bulldogs. Share tips on Bulldog care and training methods.', 1, CAST(N'2023-11-12T10:30:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 1, N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1', N'Scottish Fold Feline Friends', N'Join the discussion about Scottish Fold cats and their unique folded ears. Share your stories and tips on taking care of Scottish Fold cats.', 1, CAST(N'2023-11-11T15:45:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 6, N'16281755-79dc-4b5e-b2da-249ae9c034da')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'081b6a9b-5e80-4817-ad3f-9ce608964898', N'Labrador Retriever Show Extravaganza', N'Don''t miss the upcoming Labrador Retriever show! Join us for a day of fun and excitement, showcasing the beauty and talents of Labradors.', 1, CAST(N'2023-11-10T08:20:00.0000000' AS DateTime2), 0, 0, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 4, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'136dc94a-8004-416f-ba49-e05aafa0bc81', N'Pet Exchange: Labrador for Golden Retriever', N'Looking to exchange our lovable Labrador Retriever, Max, for a Golden Retriever. Max is friendly, well-trained, and loves playing fetch.', 1, CAST(N'2023-11-09T17:10:00.0000000' AS DateTime2), 0, 1, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 5, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'1597e988-f31e-464b-bbc9-60c0460ce985', N'Poodle Posh Show Extravaganza', N'The Poodle Posh Show is coming soon! Enjoy the grace and elegance of Poodles as they participate in this prestigious event for dog lovers.', 1, CAST(N'2023-11-08T14:55:00.0000000' AS DateTime2), 0, 0, N'b84f2db4-1634-42f8-9775-76e83e114c6f', 4, N'd885c9c1-de86-47a9-bd23-ab339beae959')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'18b31590-c425-458b-86b4-0da67453be26', N'Shih Tzu Specialty Services', N'Shih Tzus are known for their beautiful coats and playful demeanor. Discover specialized pet services, including grooming and socialization, for your Shih Tzu friend.', 1, CAST(N'2023-11-07T12:40:00.0000000' AS DateTime2), 0, 0, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 3, N'ba24432d-677b-4632-accd-dd100ff88b1f')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'1edfe45f-8a0b-425d-a7bc-c5bb54f071d6', N'Ragdoll Royalty Showtime', N'The Ragdoll Royalty Show is just around the corner! Get ready to be mesmerized by the grace and elegance of Ragdoll cats at this royal feline event.', 1, CAST(N'2023-11-06T09:25:00.0000000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 9, N'b1b66766-716d-4a09-86a2-c173e52c0d3e')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'2023b6de-3333-409a-bd7c-8d4c8e400514', N'Pet Exchange: Golden Retriever & Persian Cat', N'We have a Golden Retriever named Max, and a Persian cat named Luna. We''re looking to exchange Max for a Labrador Retriever and Luna for a Siamese cat.', 1, CAST(N'2023-11-05T18:15:00.0000000' AS DateTime2), 0, 1, N'65b6b2ae-250a-4698-b5cf-f530bf139491', 10, N'd6a64ce2-8d0c-48b7-8633-571cffcdba79')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'22af3732-af50-4511-b573-a651323ade54', N'Ragdoll Cat Enthusiasts', N'Join the discussion about Ragdoll cats, known for their docile nature. Share experiences and tips for raising a Ragdoll cat.', 1, CAST(N'2023-11-04T13:05:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 6, N'b1b66766-716d-4a09-86a2-c173e52c0d3e')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'31f4064a-97fe-4602-8d0a-67b2f6e192b6', N'Dachshund Delights', N'Let''s talk about the charming Dachshunds and their unique features. Share your experiences and advice on caring for Dachshund pups.', 1, CAST(N'2023-11-03T16:50:00.0000000' AS DateTime2), 0, 0, N'9ee37dd0-c43a-43a5-be02-27402c50ed12', 1, N'4dada948-86d9-444e-a9f9-86b486cb1ed7')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'40c248af-625d-41da-be89-219771d7c902', N'Scottish Fold Cat Services Hub', N'Scottish Fold cats are known for their distinctive ears and friendly nature. Explore premium pet services, including grooming and interactive toys, for your Scottish Fold feline.', 1, CAST(N'2023-11-02T11:30:00.0000000' AS DateTime2), 0, 0, N'8ae8d470-00d3-4088-a6f1-a525692821cf', 3, N'16281755-79dc-4b5e-b2da-249ae9c034da')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'4457ae11-8ac6-44f2-8ce1-56f7ab882975', N'Dachshund Delight Showtime', N'The Dachshund Delight Show is here! Witness the quirky charm and playful spirit of Dachshunds in this fun dog show event for all dog lovers.', 1, CAST(N'2023-11-01T19:00:00.0000000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 4, N'4dada948-86d9-444e-a9f9-86b486cb1ed7')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'48f10310-935c-4f04-a5ce-ae640cb5cae2', N'Maine Coon Cat Enthusiasts', N'Let''s discuss the unique characteristics of Maine Coon cats. Share your experiences and tips for Maine Coon owners.', 1, CAST(N'2023-10-31T10:15:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 6, N'eacb2884-43f6-434f-9779-8d3d697c9580')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'4d4134a3-dc54-47ac-84f4-a57df630c991', N'Persian Cat Enthusiasts', N'Join the discussion about Persian cats and their luxurious fur. Share grooming tips and your favorite Persian cat stories.', 1, CAST(N'2023-10-30T12:35:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 1, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'59e89239-677a-41c3-b302-e105177099ca', N'Guide to Raising a Happy Labrador', N'Labrador Retrievers are known for their friendly and outgoing nature. Learn how to care for and train your Labrador.', 1, CAST(N'2023-10-29T14:25:00.0000000' AS DateTime2), 0, 0, N'f02079fb-c290-4ed9-8bea-a978799801e8', 2, N'94cec921-909a-428b-bd0a-eb2d3136f252')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'5acf7dc6-5a41-4e70-8442-328c6f9e8e8b', N'Pet Exchange: Persian Cat for Ragdoll Cat', N'Looking to exchange our Persian cat, Whiskers, for a Ragdoll cat. Whiskers is calm, elegant, and loves lounging on soft pillows.', 1, CAST(N'2023-10-28T07:40:00.0000000' AS DateTime2), 1, 1, N'00299536-a753-42c8-bd07-50091bc2f789', 10, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'607ad137-0272-4ea4-8693-cfd3f51a8a54', N'Pet Exchange: Labrador Retriever for Beagle', N'Looking to exchange our friendly Labrador Retriever, Buddy, for a Beagle. Buddy is playful, obedient, and loves outdoor activities.', 1, CAST(N'2023-10-27T20:05:00.0000000' AS DateTime2), 0, 1, N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', 5, N'309bbe3a-e0e6-4db5-9c06-c0be24bf6237')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'60cdcc9a-87f1-4d20-8591-37231d0b42fa', N'The Golden Guide: Raising a Happy Retriever', N'Discover the joyful and friendly world of Golden Retrievers. Tips on training and grooming.', 1, CAST(N'2023-10-26T09:55:00.0000000' AS DateTime2), 0, 0, N'987984c2-a8c7-48e8-9429-564a046664d4', 2, N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076')
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
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'92b2651a-507e-4741-9c0b-38930d4cbd40', N'Bulldog Pet Services Oasis', N'Bulldogs are known for their laid-back nature. Explore premium pet services, including spa days and home boarding, for your Bulldog companion.', 1, CAST(N'2023-10-12T11:00:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 3, N'2148e0e0-dde3-4d8d-84b4-182b7cfb6c12')
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
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'cbbbc95b-d189-4ed6-bdcc-682b3da3b51f', N'Persian Cat Showtime Extravaganza', N'Get ready for the Persian Cat Showcase! Marvel at the luxurious coats and elegance of Persian cats at this grand feline show event.', 1, CAST(N'2023-10-01T08:05:00.0000000' AS DateTime2), 0, 0, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 9, N'cb9e3f26-3939-4407-b75a-2bd1eb05fe31')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ce74052a-4287-4e7d-a88b-dcfd617ea243', N'Dachshund Delights - Pet Services', N'Dachshunds are known for their unique shape and spirited personality. Explore specialized pet services, including agility training and custom attire for your Dachshund.', 1, CAST(N'2023-09-30T17:20:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 3, N'4dada948-86d9-444e-a9f9-86b486cb1ed7')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'd1652fbc-b05f-440f-b75f-49e3fbec6690', N'Golden Retriever Gala Showtime', N'The Golden Retriever Gala is coming soon! Be part of the joy and playfulness of Golden Retrievers at this exciting dog show event for dog lovers of all ages.', 1, CAST(N'2023-09-29T19:25:00.0000000' AS DateTime2), 0, 0, N'cecbf4de-242f-4bc6-8963-12fa286e634f', 4, N'd8fc2a6c-2371-4203-8ec3-f9bb4fd03076')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'd87ac06d-3b8b-4520-84de-4376e3c6b3e5', N'Labrador Pet Services Directory', N'Looking for reliable pet services for your Labrador? Explore dog walking, grooming, and pet-sitting options for Labradors in your area.', 1, CAST(N'2023-09-28T13:50:00.0000000' AS DateTime2), 0, 0, N'e772ed19-6d87-4a9c-8c56-d84766589db4', 3, N'94cec921-909a-428b-bd0a-eb2d3136f252')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'e3cec6ef-7bf5-43e6-b3c5-ea971cf1d7f1', N'Siamese Cat Care Services', N'Siamese cats require special care. Explore top pet services, including nutritional advice and grooming, designed for your Siamese feline friend.', 1, CAST(N'2023-09-27T12:55:00.0000000' AS DateTime2), 0, 0, N'a5ea2028-44db-4791-8d1a-a29b04c7e771', 8, N'4fa7e4a1-9b4e-4026-84c9-b34703470cd3')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'e5b28f45-c02e-4d9c-a542-0a8df174c25a', N'Pet Exchange: Shih Tzu & Bengal Cat', N'We have a Shih Tzu named Daisy and a Bengal cat named Leo. We''re looking to exchange Daisy for a Dachshund and Leo for a Siamese cat.', 1, CAST(N'2023-09-26T14:45:00.0000000' AS DateTime2), 0, 1, N'65b6b2ae-250a-4698-b5cf-f530bf139491', 10, N'd6a64ce2-8d0c-48b7-8633-571cffcdba79')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ec3c42e1-3109-4389-85d1-f66282c535a6', N'Bengal Cat Services Center', N'Bengal cats are known for their energetic nature. Explore specialized pet services, including agility training and interactive toys, for your Bengal feline.', 1, CAST(N'2023-09-25T16:00:00.0000000' AS DateTime2), 0, 0, N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', 8, N'78838ccd-bcb6-442d-9076-cdfb11a1a09b')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'eda11cbb-a04d-4e5d-9fb4-2e11cac7429a', N'Beagle Owners'' Forum', N'Join our discussion about Beagles and their playful nature. Share your Beagle stories and training tips!', 1, CAST(N'2023-09-24T11:05:00.0000000' AS DateTime2), 0, 0, N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', 1, N'9b5281f3-7ed7-42b9-a232-b2b7d1f1fc55')
INSERT [dbo].[tblPost] ([id], [title], [content], [isactive], [createtime], [issold], [isexchange], [userid], [categoryid], [pet_Breedid]) VALUES (N'ee4d7692-89a2-45c0-9cd5-7f57aae972b8', N'Shih Tzu Showtime Spectacle', N'The Shih Tzu Show Extravaganza is here! Witness the beauty and charm of Shih Tzus in this delightful dog show event for all dog lovers.', 1, CAST(N'2023-11-13T15:27:18.2570000' AS DateTime2), 0, 0, N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', 4, N'ba24432d-677b-4632-accd-dd100ff88b1f')
GO
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'013632c2-a7dc-44ac-8ca6-f582f2ee4485', N'siamese-cat-image1.jpg', N'Adorable Siamese kitten.', N'9eb86d9e-c0d8-4e4a-9de6-8bf64cb32f13')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'0151ce80-bbf5-49fe-91e1-b7a05e3366cb', N'siamese-cat-image2.jpg', N'Siamese cat enjoying a sunbeam.', N'9eb86d9e-c0d8-4e4a-9de6-8bf64cb32f13')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'0b6a2d94-045d-4ad9-9a6c-2c82a1d2a2e0', N'husky-image1.jpg', N'A cute Husky puppy.', N'98b2461b-f769-4fcb-bf14-f26278f2f6d3')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'0cd3501b-5b55-4dbe-9e79-5749da3047f8', N'scottish-fold-image2.jpg', N'Scottish Fold cat enjoying a sunny spot.', N'03d5b48c-d850-4d4f-9e0b-b5e68185b3a1')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'13a62b0c-41d9-437a-ba8f-60fdffde3901', N'golden-retriever-service-image2.jpg', N'Happy Golden Retriever during obedience training.', N'7032774e-1dad-4b46-a7bd-8328ecba4514')
INSERT [dbo].[tblPostimg] ([id], [img], [description], [postid]) VALUES (N'192ed7d6-841f-489c-8103-b1a52ec67163', N'bengal-service-image1.jpg', N'Energetic Bengal cat during agility training.', N'ec3c42e1-3109-4389-85d1-f66282c535a6')
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
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (1, N'AD', N'All')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (2, N'Staff', N'Cat')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (3, N'Staff', N'Dog')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (4, N'Staff', N'All')
INSERT [dbo].[tblRole] ([id], [name], [type]) VALUES (5, N'User', N'All')
SET IDENTITY_INSERT [dbo].[tblRole] OFF
GO
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'00299536-a753-42c8-bd07-50091bc2f789', N'iamsuperman', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Super Man', N'iamsuperman@example.com', CAST(N'2003-11-13T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'02b48493-8eb8-4215-8638-c92257e8b375', N'coolUser123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'So Cool', N'coolUser123@example.com', CAST(N'1991-05-18T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'168126aa-9f15-4a70-832a-285276ae39ea', N'techNinja45', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Ninja Naruto', N'techNinja45@example.com', CAST(N'2005-12-07T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'1cfbf661-f9dc-42a7-8299-61909766f9de', N'starGazer789', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Stardust Dragon', N'starGazer789@example.com', CAST(N'2002-09-30T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'213a9390-19c8-4596-8a64-b3d0beb32635', N'wonderLust22', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'I Wonder How', N'wonderLust22@example.com', CAST(N'2007-07-22T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2721b07e-fde8-4037-855a-05cef3457381', N'codingGeek37', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Michael Smith', N'michael@example.com', CAST(N'1997-04-11T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'2a9ce096-5163-4324-bbc8-9192e6d4fc0b', N'businessuser', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Sophia Business', N'sophia@example.com', CAST(N'2001-08-19T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'309f160c-b5c9-400e-a70b-cd14bb0d92fd', N'sunnyDays88', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Eva', N'sunnyDays88@example.com', CAST(N'2003-10-05T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'31a7db28-5fbc-4de2-a83c-9ed94ab53712', N'moonWalker16', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'James Bond', N'moonWalker16@example.com', CAST(N'1998-02-14T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'328fcefc-cd61-41ca-ba21-c48f70feaf76', N'marketing_user', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Mark Marketing', N'mark@example.com', CAST(N'2008-11-27T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'3947e1ad-e407-4a28-9a36-42c8bc095537', N'coffeeLover42', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Love Coffee', N'coffeeLover42@example.com', CAST(N'1993-06-03T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'3e83675a-ee99-4e2a-93fe-a73da2852641', N'musicMaestro11', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Micheal Sackjon', N'musicMaestro11@example.com', CAST(N'2009-01-25T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'3ee492f6-c6f9-4e53-a6db-c2d77f2a6144', N'jane_smith', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Jane Smith', N'jane.smith@example.com', CAST(N'1996-12-28T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'432d5b0d-2758-48a3-92ee-7bc7b39499f7', N'travelBug55', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Coder Lord', N'travelBug55@example.com', CAST(N'2004-03-14T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'4363228b-a67a-415c-bc2d-247b303b3555', N'artExplorer73', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Artist', N'artExplorer73@example.com', CAST(N'1992-09-17T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'5422582b-35a5-40ee-9288-601e7e7c3a23', N'giabao123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Gia Bao', N'baogia@gmail.com', CAST(N'2003-03-19T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'55347702-a256-4256-9efa-abef44ad7364', N'designer456', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Ella Designer', N'ella@example.com', CAST(N'2006-04-08T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'65b6b2ae-250a-4698-b5cf-f530bf139491', N'bookWorm99', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Worm Hole', N'bookWorm99@example.com', CAST(N'1995-11-09T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6a9759d1-a6dc-4f94-999d-f5e92b85a5b6', N'adventureSeeker27', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Linda Johnson', N'linda@example.com', CAST(N'1999-10-02T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'6f295afa-5c46-4b52-a292-3fb97ed4544a', N'fitnessFreak68', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Adam Johnson', N'fitnessFreak68@example.com', CAST(N'2000-08-26T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7214ad25-6539-4a2f-a883-fabf7608f5d1', N'foodieDelight12', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Gold Gold', N'foodieDelight12@example.com', CAST(N'2003-01-13T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'74c5b4ed-1509-43ea-b7b1-b9cdade2bd5b', N'natureLover21', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Linda Smith', N'natureLover21@example.com', CAST(N'1996-04-29T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7da30436-8701-48c5-8e30-e9a413a38566', N'adminuser', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Admin User', N'admin@example.com', CAST(N'1992-12-15T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'7ee02806-3473-452b-a49c-7d09f475687d', N'gamingWizard77', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Alice Johnson', N'alice@example.com', CAST(N'2008-06-20T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'80c24f09-5f25-4feb-b4bf-3559ce0bc863', N'movieBuff44', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Peter Parker', N'movieBuff44@example.com', CAST(N'2009-07-10T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'83016dc4-2323-4ccc-a18c-8d2506e61621', N'fashionista61', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'David Brown', N'david.brown@example.com', CAST(N'2004-02-27T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'838f3f86-2a2b-46b3-a278-0667fb822c36', N'john_doe', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'John Doe', N'john.doe@example.com', CAST(N'1994-11-21T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'8ae8d470-00d3-4088-a6f1-a525692821cf', N'scienceWhiz19', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Harry Potter', N'scienceWhiz19@example.com', CAST(N'2002-05-05T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'90436f24-0003-44f2-90b9-dae7af07a2e6', N'artlover', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Ava Art', N'ava@example.com', CAST(N'1993-03-01T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'96b9a5ff-5f44-4879-a9b7-c278418f9437', N'techguy123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Tony Tech', N'tony@example.com', CAST(N'1995-08-24T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'987984c2-a8c7-48e8-9429-564a046664d4', N'happyFeet13', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'John Wick', N'happyFeet13@example.com', CAST(N'2005-09-12T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9905c0d4-4154-4692-a47a-6bef7bacf395', N'wanderlustRover', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Wanderer', N'wanderlustRover@example.com', CAST(N'2001-10-30T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9a5f710b-78e9-4baa-bce8-0089701f0f80', N'susan_smith', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Susan Smith', N'susan@example.com', CAST(N'1997-06-16T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9e4de293-f088-4383-936a-f567a6bc2b52', N'foodie456', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Olivia Foodie', N'olivia@example.com', CAST(N'1998-07-26T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'9ee37dd0-c43a-43a5-be02-27402c50ed12', N'sportsFanatic8', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Kamisato Ayaka', N'sportsFanatic8@example.com', CAST(N'2000-01-07T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a4f631ee-d7d6-47ec-ae82-13580380d3d2', N'beachBum26', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Raiden Shogun', N'beachBum26@example.com', CAST(N'2007-03-03T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'a5ea2028-44db-4791-8d1a-a29b04c7e771', N'techSavvy91', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Furina', N'techSavvy91@example.com', CAST(N'2006-12-23T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b6f51357-0dad-4515-b3ea-ca3812e04fb9', N'selfieKing55', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Lyney', N'selfieKing55@example.com', CAST(N'2009-09-28T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'b84f2db4-1634-42f8-9775-76e83e114c6f', N'catLover77', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Love Cat So Much', N'catLover77@example.com', CAST(N'1992-08-31T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'bafdd9e5-dbcb-4f2b-99e6-0a64e619e3ac', N'gamer123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Daniel Gamer', N'daniel@example.com', CAST(N'1999-04-06T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'c22df346-3c0b-49c8-8fe3-5d30ec39a3f3', N'developer123', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Chris Developer', N'chris@example.com', CAST(N'2003-02-11T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'cd612c0d-fd4b-46da-8965-05750108e835', N'test_user', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Test User', N'test.user@example.com', CAST(N'2008-05-15T00:00:00.0000000' AS DateTime2), 1, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'cecbf4de-242f-4bc6-8963-12fa286e634f', N'dogWhisperer3', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Cannot Hate Dog', N'dogWhisperer3@example.com', CAST(N'1996-11-08T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd5185b15-bd62-4e51-91ab-b4bf5d5a70ae', N'mountainHiker40', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Itto', N'mountainHiker40@example.com', CAST(N'2004-08-02T00:00:00.0000000' AS DateTime2), 0, 1, 1, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'd9b2cadc-41ae-43b2-bfb6-1643729c3558', N'fitnessuser', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Emily Fitness', N'emily@example.com', CAST(N'1994-01-04T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e041c012-b97b-42b3-b13a-52570f9b5be8', N'roadTripper7', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Gorou', N'roadTripper7@example.com', CAST(N'2005-07-19T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e317bc0e-9b36-4480-b65f-3f395c3f70fd', N'traveler789', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'William Traveler', N'william@example.com', CAST(N'2002-03-22T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'e772ed19-6d87-4a9c-8c56-d84766589db4', N'adventureTime12', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Kaedehara Kazuha', N'adventureTime12@example.com', CAST(N'1993-12-26T00:00:00.0000000' AS DateTime2), 0, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'ee6ba21a-bfb9-41c2-8eda-144a0a149ffa', N'nightOwl88', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Jean', N'nightOwl88@example.com', CAST(N'1995-02-10T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'f02079fb-c290-4ed9-8bea-a978799801e8', N'codeJunkie47', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'Eren Yeager', N'codeJunkie47@example.com', CAST(N'2001-04-18T00:00:00.0000000' AS DateTime2), 1, 1, 0, NULL)
INSERT [dbo].[tblUser] ([id], [username], [password], [fullname], [email], [dob], [gender], [isactive], [isban], [avt]) VALUES (N'f4d3b03b-4ac3-4ea7-b66c-4a7934783177', N'user1244', N'$2a$10$oqaSWACqKr6zv2SEg640JuojQ1RC5IyoW5alTMkto5AmmN8naAoPK', N'User 3669', N'user290@example.com', NULL, 0, 1, 0, NULL)
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
SET IDENTITY_INSERT [dbo].[tblUser_Role] OFF
GO
ALTER TABLE [dbo].[Pet_Item]  WITH CHECK ADD FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblBookmark]  WITH CHECK ADD FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblBookmark]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblPet]  WITH CHECK ADD FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblPost]  WITH CHECK ADD FOREIGN KEY([categoryid])
REFERENCES [dbo].[tblCategory] ([id])
GO
ALTER TABLE [dbo].[tblPost]  WITH CHECK ADD FOREIGN KEY([pet_Breedid])
REFERENCES [dbo].[Pet_Breed] ([id])
GO
ALTER TABLE [dbo].[tblPost]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblPostimg]  WITH CHECK ADD FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblReact]  WITH CHECK ADD FOREIGN KEY([commentid])
REFERENCES [dbo].[tblComment] ([id])
GO
ALTER TABLE [dbo].[tblReact]  WITH CHECK ADD FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
GO
ALTER TABLE [dbo].[tblReact]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[tblUser] ([id])
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD FOREIGN KEY([commentid])
REFERENCES [dbo].[tblComment] ([id])
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD FOREIGN KEY([postid])
REFERENCES [dbo].[tblPost] ([id])
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
