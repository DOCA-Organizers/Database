create database DoCav1_4



use DoCav1_4
create table tblUser(
	id nvarchar(50) primary key, 
	username nvarchar(50) not null,
	[password] nvarchar(100) not null,
	fullname nvarchar(50) not null,
	email nvarchar(50),
	dob date,
	gender bit not null,
	isactive bit not null,
	isban bit not null,
	avt nvarchar(MAX) null,

	)

CREATE TABLE [dbo].[tblRole](
	[id] [int]IDENTITY(1,1) primary key,
	[name] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) not NULL,
)

CREATE TABLE [dbo].[tblUser_Role](
	id int IDENTITY(1,1) primary key,
	[userid] [nvarchar](50) NOT NULL foreign key references tblUser(id),
	[roleid] [int] NOT NULL foreign key references tblRole(id),
	[datestart] [date] NOT NULL,
	[dateend] [date] NULL,
	isactive [bit] not NULL
)

Create table tblCategory(
	id int primary key,
	[name] nvarchar(50)
)

create table Pet_Breed(
	id nvarchar(50) primary key,
	breedname nvarchar(50),
	pet_type nvarchar(50) not null,
)

CREATE TABLE [dbo].[tblPost](
	[id] [nvarchar](50) primary key,
	[content] [nvarchar](500) NOT NULL,
	isactive bit NOT NULL,
	[createtime] datetime2(6) NULL,
	issold bit not null,
	isexchange bit not null,
	[userid] [nvarchar](50) not NULL foreign key references tblUser(id),
	categoryid int not null foreign key references tblCategory(id),
	pet_Breedid [nvarchar](50) not NULL foreign key references Pet_Breed(id)
)

create table tblBookmark(
	postid nvarchar(50)not NULL foreign key references tblPost(id),
	userid nvarchar(50)not null foreign key references tblUser(id),
	id int  IDENTITY(1,1) primary key,
	createtime datetime2(6) null,
	isactive bit not null,
)




create table tblComment(
	id nvarchar(50) primary key,
	content nvarchar(500) not null,
	isactive bit not null,
	isprivate bit not null,
	[createtime] datetime2(6) NULL,
	postid nvarchar(50) not null foreign key references tblPost(id),
	userid nvarchar(50) not null foreign key references tblUser(id),
)

	CREATE TABLE [dbo].[tblReact](
	[id] int IDENTITY(1,1) primary key,
	isactive bit not null,
	[createtime] datetime2(6) NULL,
	[postid] [nvarchar](50)  NULL foreign key references tblPost(id),
	[userid] [nvarchar](50) not NULL foreign key references tblUser(id),
	[commentid] [nvarchar](50) NULL foreign key references tblComment(id)
)




CREATE TABLE [dbo].[tblReport](
	[id] [nvarchar](50) primary key,
	[message] [nvarchar](200) NULL,
	isactive [bit] not NULL,
	[postid] [nvarchar](50) null foreign key references tblPost(id) ,
	[userid] [nvarchar](50)  not null foreign key references tblUser(id),
	commentid [nvarchar](50)   null foreign key references tblComment(id),
)

create table Pet_Item (
	id nvarchar(50) primary key,
	pet_item varchar(50),
	pet_type nvarchar(50),
	img nvarchar(MAX) not null,
	[description] nvarchar(50),
	price nvarchar(50) not null,
	postid nvarchar(50) not null foreign key references tblPost(id),
	)

create table tblPet(
	id nvarchar(50) primary key,
	[type] nvarchar(20) not null,
	[name] nvarchar(20) not null,
	gender bit not null,
	age int null,
	img nvarchar(MAX) not null,
	price nvarchar(50) not null,
	[description] nvarchar(50),
	[postid] [nvarchar](50) not NULL foreign key references tblPost(id)

)
create table tblPostimg(
	id nvarchar(50) primary key,
	img nvarchar(MAX) null,
	[description] nvarchar(50),
	[postid] [nvarchar](50) not NULL foreign key references tblPost(id)
)

insert tblRole values('AD','All'),('Staff','Cat'),('Staff','Dog'),('Staff','All'),('User','All')
insert tblCategory values(1,'Dog food'),(2,'Cat food'),(3,'Dog toy'),(4,'Cat toy')
