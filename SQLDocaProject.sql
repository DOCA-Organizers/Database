create database DoCav1_3


use DoCav1_3
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

CREATE TABLE [dbo].[tblPost](
	[id] [nvarchar](50) primary key,
	[content] [nvarchar](500) NOT NULL,
	title [nvarchar] (500) not null,
	isactive bit NOT NULL,
	[createtime] datetime2(6) NULL,
	issold bit not null,
	isexchange bit not null,
	[userid] [nvarchar](50) not NULL foreign key references tblUser(id),
	categoryid int not null foreign key references tblCategory(id)
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
	item_type nvarchar(50),
	pet_type nvarchar(50),
	img nvarchar(MAX) not null,
	[description] nvarchar(50),
	price nvarchar(50) not null,
	postid nvarchar(50) not null foreign key references tblPost(id),
)

create table Pet_Breed(
	id nvarchar(50) primary key,
	breedname nvarchar(50),
	[postid] [nvarchar](50) not NULL foreign key references tblPost(id),
	pet_type nvarchar(50) not null,
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

insert tblUser values('1','user1','123456','User1',null,'12/9/2003',1,1,0,1),
	('2','user2','123456','User2',null,'12/9/2001',1,1,0,1),
	('3','user3','123456','User3',null,'12/9/2004',1,1,0,1)
insert tblUser_Role values('1',3,'10/9/2023',null,1),('2',3,'10/9/2023',null,1),('3',3,'10/9/2023',null,1)

insert tblPost values ('1','First','First',1,'7/10/2023',1,1,1,2),
 ('2','Second','Second',1,'8/10/2023',1,1,1,1),
  ('3','Third','Third',1,'9/10/2023',1,1,1,3)
insert tblBookmark values ('1','2','12/9/2023',1),('2','2','12/9/2023',1),('3','2','12/9/2023',1),
('1','3','12/9/2023',1)
insert tblComment values ('1','Good',1,0,'12/9/2023','1','1'),('2','Nice',1,0,'12/9/2023','2','1'),
('3','Good',1,0,'12/9/2023','3','1')
insert tblReact ([isactive],[createtime],[postid],[userid],[commentid]) values (1,'12/9/2003','1','1',null) ,(1,'12/9/2003',null,'2','1')

insert tblReport values('1','Error1',1,1,1,null),('2','Error2',1,1,1,null),('3','Error3',1,1,2,null)
,('4','Error4',1,1,3,null)

insert [dbo].[Pet_Breed] values ('1','Chihuahua','2','Dog'),('2','Black','1','Cat')

