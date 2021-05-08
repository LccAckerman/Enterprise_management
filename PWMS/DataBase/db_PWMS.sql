/****** Object:  Database [db_PWMS]    Script Date: 2019/2/26 17:27:06 ******/
CREATE DATABASE [db_PWMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_PWMS', FILENAME = N'D:\db_PWMS.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_PWMS_log', FILENAME = N'D:\db_PWMS_log.ldf' , SIZE = 6912KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

USE [db_PWMS]
GO
CREATE TABLE [dbo].[tb_AddressBook](
	[ID] [varchar](5) NOT NULL,
	[Name] [varchar](20) NULL,
	[Sex] [varchar](4) NULL,
	[Phone] [varchar](13) NULL,
	[QQ] [varchar](15) NULL,
	[WordPhone] [varchar](13) NULL,
	[E_Mail] [varchar](32) NULL,
	[Handset] [varchar](11) NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Branch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](20) NULL,
 CONSTRAINT [PK_tb_Branch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Business](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [varchar](20) NULL,
 CONSTRAINT [PK_tb_Business] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BeAware] [varchar](30) NULL,
	[City] [varchar](30) NULL,
 CONSTRAINT [PK_tb_city] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Clew](
	[ID] [int] NOT NULL,
	[Fate] [int] NOT NULL,
	[Kind] [int] NOT NULL,
	[Unlock] [int] NOT NULL,
 CONSTRAINT [PK_tb_Clew] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_DayWordPad](
	[ID] [varchar](5) NOT NULL,
	[BlotterDate] [datetime] NULL,
	[BlotterSort] [varchar](20) NULL,
	[Motif] [varchar](20) NULL,
	[Wordpad] [text] NULL,
 CONSTRAINT [PK_tb_DayWordPad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Duthcall](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DuthcallName] [varchar](20) NULL,
 CONSTRAINT [PK_tb_Duthcall] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_EmployeeGenre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](20) NULL,
 CONSTRAINT [PK_tb_EmployeeGenre] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Family](
	[ID] [varchar](5) NOT NULL,
	[Stu_ID] [varchar](5) NULL,
	[LeaguerName] [varchar](20) NULL,
	[Nexus] [varchar](10) NULL,
	[BirthDate] [datetime] NULL,
	[WordUnit] [varchar](24) NULL,
	[Business] [varchar](10) NULL,
	[Visage] [varchar](10) NULL,
	[phone] [varchar](14) NULL,
 CONSTRAINT [PK_tb_Family] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Folk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FolkName] [varchar](30) NULL,
 CONSTRAINT [PK_tb_Folk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Individual](
	[ID] [varchar](5) NOT NULL,
	[Memo] [text] NULL,
 CONSTRAINT [PK_tb_Individual] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Kultur](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KulturName] [varchar](20) NULL,
 CONSTRAINT [PK_tb_Kultur] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Laborage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LaborageName] [varchar](50) NULL,
 CONSTRAINT [PK_tb_Laborage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Login](
	[ID] [varchar](5) NOT NULL,
	[Name] [varchar](20) NULL,
	[Pass] [varchar](20) NULL,
 CONSTRAINT [PK_tb_Logon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_PopeModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PopeName] [varchar](50) NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_RANDP](
	[ID] [varchar](5) NOT NULL,
	[Stu_ID] [varchar](5) NULL,
	[RPKind] [varchar](20) NULL,
	[RPDate] [datetime] NULL,
	[SealMan] [varchar](10) NULL,
	[QuashDate] [datetime] NULL,
	[QuashWhys] [varchar](50) NULL,
 CONSTRAINT [PK_tb_RANDP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_RPKind](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RPKind] [varchar](20) NULL,
 CONSTRAINT [PK_tb_RPKind] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Stuffbasic](
	[ID] [varchar](5) NOT NULL,
	[StuffName] [varchar](20) NULL,
	[Folk] [varchar](20) NULL,
	[Birthday] [datetime] NULL,
	[Age] [int] NULL,
	[Kultur] [varchar](14) NULL,
	[Marriage] [varchar](4) NULL,
	[Sex] [varchar](4) NULL,
	[Visage] [varchar](14) NULL,
	[IDCard] [varchar](20) NULL,
	[workdate] [datetime] NULL,
	[WorkLength] [int] NULL,
	[Employee] [varchar](20) NULL,
	[Business] [varchar](10) NULL,
	[Laborage] [varchar](10) NULL,
	[Branch] [varchar](14) NULL,
	[Duthcall] [varchar](14) NULL,
	[Phone] [varchar](14) NULL,
	[Handset] [varchar](11) NULL,
	[School] [varchar](24) NULL,
	[Speciality] [varchar](20) NULL,
	[GraduateDate] [datetime] NULL,
	[Address] [varchar](50) NULL,
	[Photo] [image] NULL,
	[BeAware] [varchar](30) NULL,
	[City] [varchar](30) NULL,
	[M_Pay] [float] NULL,
	[Bank] [varchar](20) NULL,
	[Pact_B] [datetime] NULL,
	[Pact_E] [datetime] NULL,
	[Pact_Y] [float] NULL,
 CONSTRAINT [PK_tb_Stuffbusic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_TrainNote](
	[ID] [varchar](10) NOT NULL,
	[Stu_ID] [varchar](5) NULL,
	[TrainFashion] [varchar](20) NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Speciality] [varchar](20) NULL,
	[TrainUnit] [varchar](30) NULL,
	[KulturMemo] [varchar](50) NULL,
	[Charge] [float] NULL,
	[Effect] [varchar](20) NULL,
 CONSTRAINT [PK_tb_TrainNote] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_UserPope](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](5) NULL,
	[PopeName] [varchar](50) NULL,
	[Pope] [int] NULL,
 CONSTRAINT [PK_tb_UserPope] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_Visage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VisageName] [varchar](20) NULL,
 CONSTRAINT [PK_tb_Visage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_WordPad](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WORDPAD] [varchar](20) NULL,
 CONSTRAINT [PK_tb_WORDPAD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[tb_WordResume](
	[ID] [varchar](5) NOT NULL,
	[Stu_ID] [varchar](5) NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[WordUnit] [varchar](24) NULL,
	[Branch] [varchar](14) NULL,
	[Business] [varchar](14) NULL,
 CONSTRAINT [PK_tb_WordResume] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[tb_AddressBook] ([ID], [Name], [Sex], [Phone], [QQ], [WordPhone], [E_Mail], [Handset]) VALUES (N'0001', N'小冬', N'男', N'55558', N'522', N'897*****', N'88@4.com', N'1355555')
INSERT [dbo].[tb_AddressBook] ([ID], [Name], [Sex], [Phone], [QQ], [WordPhone], [E_Mail], [Handset]) VALUES (N'0002', N'小华', N'女', N'8585', N'5548', N'9828', N'88@*.com', N'131828')
SET IDENTITY_INSERT [dbo].[tb_Branch] ON 

INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (3, N'ASP.NET部门')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (4, N'VB部门')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (5, N'C#部门')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (6, N'VC部门')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (7, N'JSP部门')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (8, N'Java Web部门')
SET IDENTITY_INSERT [dbo].[tb_Branch] OFF
SET IDENTITY_INSERT [dbo].[tb_Business] ON 

INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (5, N'经理')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (6, N'副经理')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (7, N'部门经理')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (8, N'测试员')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (9, N'程序员')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (10, N'普通员工')
SET IDENTITY_INSERT [dbo].[tb_Business] OFF
SET IDENTITY_INSERT [dbo].[tb_City] ON 

INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1, N'安徽省', N'合肥市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2, N'安徽省', N'安庆市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (3, N'安徽省', N'蚌埠市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (4, N'安徽省', N'亳州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (5, N'安徽省', N'长丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (6, N'安徽省', N'巢湖市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (7, N'安徽省', N'滁州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (8, N'安徽省', N'枞阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (9, N'安徽省', N'当涂县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (10, N'安徽省', N'砀山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (11, N'安徽省', N'定远县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (12, N'安徽省', N'东至县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (13, N'安徽省', N'繁昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (14, N'安徽省', N'肥东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (15, N'安徽省', N'肥西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (16, N'安徽省', N'凤台县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (17, N'安徽省', N'凤阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (18, N'安徽省', N'阜南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (19, N'安徽省', N'阜阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (20, N'安徽省', N'固镇县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (21, N'安徽省', N'广德县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (22, N'安徽省', N'贵池市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (23, N'安徽省', N'含山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (24, N'安徽省', N'和县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (25, N'安徽省', N'怀宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (26, N'安徽省', N'怀远县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (27, N'安徽省', N'淮北市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (28, N'安徽省', N'淮南市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (29, N'安徽省', N'黄山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (30, N'安徽省', N'霍邱县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (31, N'安徽省', N'霍山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (32, N'安徽省', N'绩溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (33, N'安徽省', N'嘉山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (34, N'安徽省', N'界首市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (35, N'安徽省', N'金寨县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (36, N'安徽省', N'泾县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (37, N'安徽省', N'旌德县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (38, N'安徽省', N'来安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (39, N'安徽省', N'郎溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (40, N'安徽省', N'利辛县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (41, N'安徽省', N'临泉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (42, N'安徽省', N'灵璧县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (43, N'安徽省', N'六安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (44, N'安徽省', N'庐江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (45, N'安徽省', N'马鞍山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (46, N'安徽省', N'蒙城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (47, N'安徽省', N'南陵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (48, N'安徽省', N'宁国县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (49, N'安徽省', N'祁门县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (50, N'安徽省', N'潜山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (51, N'安徽省', N'青阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (52, N'安徽省', N'全椒县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (53, N'安徽省', N'石台县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (54, N'安徽省', N'寿县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (55, N'安徽省', N'舒城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (56, N'安徽省', N'泗县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (57, N'安徽省', N'宿松县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (58, N'安徽省', N'宿州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (59, N'安徽省', N'濉溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (60, N'安徽省', N'太和县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (61, N'安徽省', N'太湖县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (62, N'安徽省', N'天长县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (63, N'安徽省', N'桐城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (64, N'安徽省', N'铜陵市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (65, N'安徽省', N'铜陵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (66, N'安徽省', N'望江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (67, N'安徽省', N'涡阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (68, N'安徽省', N'无为县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (69, N'安徽省', N'芜湖市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (70, N'安徽省', N'芜湖县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (71, N'安徽省', N'五河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (72, N'安徽省', N'歙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (73, N'安徽省', N'萧县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (74, N'安徽省', N'休宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (75, N'安徽省', N'宣州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (76, N'安徽省', N'黟县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (77, N'安徽省', N'颍上县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (78, N'安徽省', N'岳西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (79, N'北京市', N'昌平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (80, N'北京市', N'大兴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (81, N'北京市', N'房山区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (82, N'北京市', N'怀柔县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (83, N'北京市', N'门头沟区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (84, N'北京市', N'密云县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (85, N'北京市', N'平谷县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (86, N'北京市', N'顺义县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (87, N'北京市', N'通州区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (88, N'北京市', N'延庆县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (89, N'福建省', N'福州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (90, N'福建省', N'安溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (91, N'福建省', N'长乐县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (92, N'福建省', N'长泰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (93, N'福建省', N'长汀县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (94, N'福建省', N'大田县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (95, N'福建省', N'德化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (96, N'福建省', N'东山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (97, N'福建省', N'福安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (98, N'福建省', N'福鼎县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (99, N'福建省', N'福清市')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (100, N'福建省', N'古田县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (101, N'福建省', N'光泽县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (102, N'福建省', N'华安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (103, N'福建省', N'惠安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (104, N'福建省', N'建宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (105, N'福建省', N'建瓯市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (106, N'福建省', N'建阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (107, N'福建省', N'将乐县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (108, N'福建省', N'晋江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (109, N'福建省', N'连城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (110, N'福建省', N'连江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (111, N'福建省', N'龙海县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (112, N'福建省', N'龙岩市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (113, N'福建省', N'罗源县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (114, N'福建省', N'闽侯县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (115, N'福建省', N'闽清县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (116, N'福建省', N'明溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (117, N'福建省', N'南安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (118, N'福建省', N'南靖县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (119, N'福建省', N'南平市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (120, N'福建省', N'宁德县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (121, N'福建省', N'宁化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (122, N'福建省', N'平和县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (123, N'福建省', N'平潭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (124, N'福建省', N'屏南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (125, N'福建省', N'莆田市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (126, N'福建省', N'莆田县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (127, N'福建省', N'浦城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (128, N'福建省', N'清流县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (129, N'福建省', N'泉州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (130, N'福建省', N'三明市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (131, N'福建省', N'沙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (132, N'福建省', N'上杭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (133, N'福建省', N'邵武市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (134, N'福建省', N'石狮市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (135, N'福建省', N'寿宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (136, N'福建省', N'顺昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (137, N'福建省', N'松溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (138, N'福建省', N'泰宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (139, N'福建省', N'同安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (140, N'福建省', N'武平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (141, N'福建省', N'武夷山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (142, N'福建省', N'霞浦县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (143, N'福建省', N'厦门市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (144, N'福建省', N'仙游县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (145, N'福建省', N'永安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (146, N'福建省', N'永春县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (147, N'福建省', N'永定县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (148, N'福建省', N'永泰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (149, N'福建省', N'尤溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (150, N'福建省', N'云霄县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (151, N'福建省', N'漳平市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (152, N'福建省', N'漳浦县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (153, N'福建省', N'漳州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (154, N'福建省', N'诏安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (155, N'福建省', N'柘荣县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (156, N'福建省', N'政和县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (157, N'福建省', N'周宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (158, N'甘肃省', N'兰州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (159, N'甘肃省', N'阿克塞县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (160, N'甘肃省', N'安西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (161, N'甘肃省', N'白银市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (162, N'甘肃省', N'成县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (163, N'甘肃省', N'崇信县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (164, N'甘肃省', N'宕昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (165, N'甘肃省', N'迭部县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (166, N'甘肃省', N'定西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (167, N'甘肃省', N'东乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (168, N'甘肃省', N'敦煌市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (169, N'甘肃省', N'甘谷县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (170, N'甘肃省', N'皋兰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (171, N'甘肃省', N'高台县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (172, N'甘肃省', N'古浪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (173, N'甘肃省', N'广河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (174, N'甘肃省', N'合水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (175, N'甘肃省', N'和政县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (176, N'甘肃省', N'华池县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (177, N'甘肃省', N'华亭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (178, N'甘肃省', N'环县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (179, N'甘肃省', N'徽县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (180, N'甘肃省', N'会宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (181, N'甘肃省', N'积石山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (182, N'甘肃省', N'嘉峪关市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (183, N'甘肃省', N'金昌市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (184, N'甘肃省', N'金塔县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (185, N'甘肃省', N'泾川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (186, N'甘肃省', N'景泰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (187, N'甘肃省', N'靖远县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (188, N'甘肃省', N'静宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (189, N'甘肃省', N'酒泉市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (190, N'甘肃省', N'康乐县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (191, N'甘肃省', N'康县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (192, N'甘肃省', N'礼县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (193, N'甘肃省', N'两当县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (194, N'甘肃省', N'临潭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (195, N'甘肃省', N'临洮县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (196, N'甘肃省', N'临夏市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (197, N'甘肃省', N'临夏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (198, N'甘肃省', N'临泽县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (199, N'甘肃省', N'灵台县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (200, N'甘肃省', N'陇西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (201, N'甘肃省', N'碌曲县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (202, N'甘肃省', N'玛曲县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (203, N'甘肃省', N'民乐县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (204, N'甘肃省', N'民勤县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (205, N'甘肃省', N'岷县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (206, N'甘肃省', N'宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (207, N'甘肃省', N'平凉市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (208, N'甘肃省', N'秦安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (209, N'甘肃省', N'清水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (210, N'甘肃省', N'庆阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (211, N'甘肃省', N'山丹县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (212, N'甘肃省', N'肃北县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (213, N'甘肃省', N'肃南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (214, N'甘肃省', N'天水市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (215, N'甘肃省', N'天祝县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (216, N'甘肃省', N'通渭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (217, N'甘肃省', N'渭源县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (218, N'甘肃省', N'文县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (219, N'甘肃省', N'武都县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (220, N'甘肃省', N'武山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (221, N'甘肃省', N'武威市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (222, N'甘肃省', N'西峰市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (223, N'甘肃省', N'西和县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (224, N'甘肃省', N'夏河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (225, N'甘肃省', N'永昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (226, N'甘肃省', N'永登县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (227, N'甘肃省', N'永靖县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (228, N'甘肃省', N'榆中县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (229, N'甘肃省', N'玉门市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (230, N'甘肃省', N'张家川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (231, N'甘肃省', N'张掖市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (232, N'甘肃省', N'漳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (233, N'甘肃省', N'镇原县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (234, N'甘肃省', N'正宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (235, N'甘肃省', N'舟曲县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (236, N'甘肃省', N'庄浪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (237, N'甘肃省', N'卓尼县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (238, N'广东省', N'广州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (239, N'广东省', N'博罗县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (240, N'广东省', N'潮阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (241, N'广东省', N'潮州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (242, N'广东省', N'澄海县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (243, N'广东省', N'从化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (244, N'广东省', N'大埔县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (245, N'广东省', N'德庆县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (246, N'广东省', N'电白县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (247, N'广东省', N'东莞市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (248, N'广东省', N'斗门县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (249, N'广东省', N'恩平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (250, N'广东省', N'番禺市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (251, N'广东省', N'丰顺县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (252, N'广东省', N'封开县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (253, N'广东省', N'佛冈县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (254, N'广东省', N'佛山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (255, N'广东省', N'高明县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (256, N'广东省', N'高要县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (257, N'广东省', N'高州县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (258, N'广东省', N'广宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (259, N'广东省', N'海丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (260, N'广东省', N'海康县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (261, N'广东省', N'和平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (262, N'广东省', N'河源市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (263, N'广东省', N'鹤山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (264, N'广东省', N'花县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (265, N'广东省', N'化州县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (266, N'广东省', N'怀集县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (267, N'广东省', N'惠东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (268, N'广东省', N'惠来县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (269, N'广东省', N'惠阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (270, N'广东省', N'惠州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (271, N'广东省', N'江门市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (272, N'广东省', N'蕉岭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (273, N'广东省', N'揭西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (274, N'广东省', N'揭阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (275, N'广东省', N'开平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (276, N'广东省', N'乐昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (277, N'广东省', N'连南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (278, N'广东省', N'连平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (279, N'广东省', N'连山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (280, N'广东省', N'连县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (281, N'广东省', N'廉江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (282, N'广东省', N'龙川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (283, N'广东省', N'龙门县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (284, N'广东省', N'陆丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (285, N'广东省', N'陆河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (286, N'广东省', N'罗定县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (287, N'广东省', N'茂名市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (288, N'广东省', N'梅县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (289, N'广东省', N'梅州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (290, N'广东省', N'南澳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (291, N'广东省', N'南海市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (292, N'广东省', N'南雄县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (293, N'广东省', N'平远县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (294, N'广东省', N'普宁市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (295, N'广东省', N'清远市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (296, N'广东省', N'曲江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (297, N'广东省', N'饶平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (298, N'广东省', N'仁化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (299, N'广东省', N'乳源县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (300, N'广东省', N'三水市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (301, N'广东省', N'汕头市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (302, N'广东省', N'汕尾市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (303, N'广东省', N'韶关市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (304, N'广东省', N'深圳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (305, N'广东省', N'深圳市宝安区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (306, N'广东省', N'始兴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (307, N'广东省', N'顺德市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (308, N'广东省', N'四会县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (309, N'广东省', N'遂溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (310, N'广东省', N'台山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (311, N'广东省', N'翁源县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (312, N'广东省', N'吴川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (313, N'广东省', N'五华县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (314, N'广东省', N'新丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (315, N'广东省', N'新会市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (316, N'广东省', N'新兴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (317, N'广东省', N'信宜县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (318, N'广东省', N'兴宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (319, N'广东省', N'徐闻县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (320, N'广东省', N'阳春县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (321, N'广东省', N'阳江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (322, N'广东省', N'阳山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (323, N'广东省', N'阳西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (324, N'广东省', N'英德县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (325, N'广东省', N'郁南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (326, N'广东省', N'云浮市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (327, N'广东省', N'增城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (328, N'广东省', N'湛江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (329, N'广东省', N'肇庆市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (330, N'广东省', N'中山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (331, N'广东省', N'珠海市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (332, N'广东省', N'紫金县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (422, N'贵州省', N'贵阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (423, N'贵州省', N'安顺市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (424, N'贵州省', N'毕节县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (425, N'贵州省', N'岑巩县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (426, N'贵州省', N'赤水市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (427, N'贵州省', N'从江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (428, N'贵州省', N'大方县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (429, N'贵州省', N'丹寨县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (430, N'贵州省', N'道真县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (431, N'贵州省', N'德江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (432, N'贵州省', N'都匀县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (433, N'贵州省', N'独山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (434, N'贵州省', N'凤冈县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (435, N'贵州省', N'福泉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (436, N'贵州省', N'贵定县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (437, N'贵州省', N'赫章县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (438, N'贵州省', N'黄平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (439, N'贵州省', N'惠水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (440, N'贵州省', N'剑河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (441, N'贵州省', N'江口县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (442, N'贵州省', N'金沙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (443, N'贵州省', N'锦屏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (444, N'贵州省', N'开阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (445, N'贵州省', N'凯里市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (446, N'贵州省', N'雷山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (447, N'贵州省', N'黎平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (448, N'贵州省', N'六盘水市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (449, N'贵州省', N'龙里县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (450, N'贵州省', N'麻江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (451, N'贵州省', N'湄潭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (452, N'贵州省', N'纳雍县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (453, N'贵州省', N'盘县特区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (454, N'贵州省', N'平坝县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (455, N'贵州省', N'平塘县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (456, N'贵州省', N'普安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (457, N'贵州省', N'普定县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (458, N'贵州省', N'黔西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (459, N'贵州省', N'清镇市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (460, N'贵州省', N'晴隆县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (461, N'贵州省', N'仁怀县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (462, N'贵州省', N'榕江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (463, N'贵州省', N'三都县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (464, N'贵州省', N'三穗县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (465, N'贵州省', N'施秉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (466, N'贵州省', N'石阡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (467, N'贵州省', N'水城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (468, N'贵州省', N'思南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (469, N'贵州省', N'松桃县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (470, N'贵州省', N'绥阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (471, N'贵州省', N'台江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (472, N'贵州省', N'天柱县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (473, N'贵州省', N'桐梓县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (474, N'贵州省', N'铜仁市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (475, N'贵州省', N'万山特区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (476, N'贵州省', N'威宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (477, N'贵州省', N'瓮安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (478, N'贵州省', N'务川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (479, N'贵州省', N'息烽县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (480, N'贵州省', N'习水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (481, N'贵州省', N'兴义市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (482, N'贵州省', N'修文县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (483, N'贵州省', N'沿河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (484, N'贵州省', N'印江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (485, N'贵州省', N'余庆县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (486, N'贵州省', N'玉屏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (487, N'贵州省', N'镇宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (488, N'贵州省', N'镇远县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (489, N'贵州省', N'正安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (490, N'贵州省', N'织金县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (491, N'贵州省', N'紫云县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (492, N'贵州省', N'遵义市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (493, N'贵州省', N'遵义县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (494, N'海南省', N'海口市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (495, N'海南省', N'白沙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (496, N'海南省', N'保亭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (497, N'海南省', N'昌江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (498, N'海南省', N'澄迈县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (499, N'海南省', N'儋州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (500, N'海南省', N'定安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (501, N'海南省', N'东方县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (502, N'海南省', N'乐东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (503, N'海南省', N'临高县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (504, N'海南省', N'陵水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (505, N'海南省', N'琼海市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (506, N'海南省', N'琼山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (507, N'海南省', N'琼中县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (508, N'海南省', N'三亚市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (509, N'海南省', N'通什市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (510, N'海南省', N'屯昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (511, N'海南省', N'万宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (512, N'海南省', N'文昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (513, N'海南省', N'洋浦区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (514, N'河北省', N'石家庄市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (515, N'河北省', N'安国市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (516, N'河北省', N'安平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (517, N'河北省', N'安新县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (518, N'河北省', N'霸州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (519, N'河北省', N'柏乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (520, N'河北省', N'保定市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (521, N'河北省', N'泊头市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (522, N'河北省', N'博野县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (523, N'河北省', N'沧县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (524, N'河北省', N'沧州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (525, N'河北省', N'昌黎县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (526, N'河北省', N'成安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (527, N'河北省', N'承德市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (528, N'河北省', N'承德县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (529, N'河北省', N'赤城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (530, N'河北省', N'崇礼县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (531, N'河北省', N'磁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (532, N'河北省', N'大厂县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (533, N'河北省', N'大城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (534, N'河北省', N'大名县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (535, N'河北省', N'定兴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (536, N'河北省', N'定州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (537, N'河北省', N'东光县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (538, N'河北省', N'肥乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (539, N'河北省', N'丰南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (540, N'河北省', N'丰宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (541, N'河北省', N'丰润县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (542, N'河北省', N'抚宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (543, N'河北省', N'阜城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (544, N'河北省', N'阜平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (545, N'河北省', N'高阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (546, N'河北省', N'高邑县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (547, N'河北省', N'藁城市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (548, N'河北省', N'沽源县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (549, N'河北省', N'固安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (550, N'河北省', N'故城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (551, N'河北省', N'馆陶县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (552, N'河北省', N'广平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (553, N'河北省', N'广宗县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (554, N'河北省', N'海兴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (555, N'河北省', N'邯郸市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (556, N'河北省', N'邯郸县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (557, N'河北省', N'河间市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (558, N'河北省', N'衡水市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (559, N'河北省', N'怀安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (560, N'河北省', N'怀来县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (561, N'河北省', N'黄骅市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (562, N'河北省', N'获鹿县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (563, N'河北省', N'鸡泽县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (564, N'河北省', N'冀县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (565, N'河北省', N'晋州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (566, N'河北省', N'井陉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (567, N'河北省', N'景县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (568, N'河北省', N'巨鹿县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (569, N'河北省', N'康保县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (570, N'河北省', N'宽城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (571, N'河北省', N'涞水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (572, N'河北省', N'涞源县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (573, N'河北省', N'廊坊市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (574, N'河北省', N'乐亭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (575, N'河北省', N'蠡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (576, N'河北省', N'临城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (577, N'河北省', N'临西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (578, N'河北省', N'临漳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (579, N'河北省', N'灵寿县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (580, N'河北省', N'隆化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (581, N'河北省', N'隆尧县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (582, N'河北省', N'卢龙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (583, N'河北省', N'栾城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (584, N'河北省', N'滦南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (585, N'河北省', N'滦平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (586, N'河北省', N'滦县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (587, N'河北省', N'满城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (588, N'河北省', N'孟村县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (589, N'河北省', N'内丘县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (590, N'河北省', N'南宫市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (591, N'河北省', N'南和县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (592, N'河北省', N'南皮县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (593, N'河北省', N'宁晋县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (594, N'河北省', N'平泉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (595, N'河北省', N'平山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (596, N'河北省', N'平乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (597, N'河北省', N'迁安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (598, N'河北省', N'迁西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (599, N'河北省', N'秦皇岛市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (600, N'河北省', N'青龙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (601, N'河北省', N'青县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (602, N'河北省', N'清河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (603, N'河北省', N'清苑县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (604, N'河北省', N'丘县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (605, N'河北省', N'曲阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (606, N'河北省', N'曲周县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (607, N'河北省', N'饶阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (608, N'河北省', N'任丘市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (609, N'河北省', N'任县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (610, N'河北省', N'容城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (611, N'河北省', N'三河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (612, N'河北省', N'沙河市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (613, N'河北省', N'尚义县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (614, N'河北省', N'涉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (615, N'河北省', N'深县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (616, N'河北省', N'深泽县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (617, N'河北省', N'肃宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (618, N'河北省', N'唐海县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (619, N'河北省', N'唐山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (620, N'河北省', N'唐县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (621, N'河北省', N'完县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (622, N'河北省', N'万全县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (623, N'河北省', N'望都县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (624, N'河北省', N'威县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (625, N'河北省', N'围场县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (626, N'河北省', N'蔚县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (627, N'河北省', N'魏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (628, N'河北省', N'文安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (629, N'河北省', N'无极县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (630, N'河北省', N'吴桥县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (631, N'河北省', N'武安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (632, N'河北省', N'武强县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (633, N'河北省', N'武邑县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (634, N'河北省', N'献县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (635, N'河北省', N'香河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (636, N'河北省', N'辛集市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (637, N'河北省', N'新城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (638, N'河北省', N'新河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (639, N'河北省', N'新乐市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (640, N'河北省', N'兴隆县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (641, N'河北省', N'行唐县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (642, N'河北省', N'邢台市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (643, N'河北省', N'邢台县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (644, N'河北省', N'雄县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (645, N'河北省', N'徐水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (646, N'河北省', N'宣化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (647, N'河北省', N'盐山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (648, N'河北省', N'阳原县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (649, N'河北省', N'易县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (650, N'河北省', N'永年县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (651, N'河北省', N'永清县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (652, N'河北省', N'玉田县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (653, N'河北省', N'元氏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (654, N'河北省', N'赞皇县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (655, N'河北省', N'枣强县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (656, N'河北省', N'张北县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (657, N'河北省', N'张家口市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (658, N'河北省', N'赵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (659, N'河北省', N'正定县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (660, N'河北省', N'涿鹿县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (661, N'河北省', N'涿州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (662, N'河北省', N'遵化市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (663, N'河南省', N'郑州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (664, N'河南省', N'安阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (665, N'河南省', N'安阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (666, N'河南省', N'宝丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (667, N'河南省', N'博爱县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (668, N'河南省', N'长葛县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (669, N'河南省', N'长垣县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (670, N'河南省', N'郸城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (671, N'河南省', N'登封县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (672, N'河南省', N'邓州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (673, N'河南省', N'范县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (674, N'河南省', N'方城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (675, N'河南省', N'封丘县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (676, N'河南省', N'扶沟县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (677, N'河南省', N'巩义市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (678, N'河南省', N'固始县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (679, N'河南省', N'光山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (680, N'河南省', N'鹤壁市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (681, N'河南省', N'滑县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (682, N'河南省', N'淮滨县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (683, N'河南省', N'淮阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (684, N'河南省', N'潢川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (685, N'河南省', N'辉县市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (686, N'河南省', N'获嘉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (687, N'河南省', N'济源市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (688, N'河南省', N'郏县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (689, N'河南省', N'焦作市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (690, N'河南省', N'浚县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (691, N'河南省', N'开封市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (692, N'河南省', N'开封县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (693, N'河南省', N'兰考县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (694, N'河南省', N'林县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (695, N'河南省', N'临颍县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (696, N'河南省', N'灵宝市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (697, N'河南省', N'卢氏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (698, N'河南省', N'鲁山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (699, N'河南省', N'鹿邑县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (700, N'河南省', N'栾川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (701, N'河南省', N'罗山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (702, N'河南省', N'洛宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (703, N'河南省', N'洛阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (704, N'河南省', N'漯河市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (705, N'河南省', N'孟津县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (706, N'河南省', N'孟县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (707, N'河南省', N'泌阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (708, N'河南省', N'密县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (709, N'河南省', N'民权县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (710, N'河南省', N'内黄县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (711, N'河南省', N'内乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (712, N'河南省', N'南乐县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (713, N'河南省', N'南阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (714, N'河南省', N'南阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (715, N'河南省', N'南召县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (716, N'河南省', N'宁陵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (717, N'河南省', N'平顶山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (718, N'河南省', N'平舆县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (719, N'河南省', N'濮阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (720, N'河南省', N'濮阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (721, N'河南省', N'淇县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (722, N'河南省', N'杞县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (723, N'河南省', N'沁阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (724, N'河南省', N'清丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (725, N'河南省', N'确山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (726, N'河南省', N'汝南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (727, N'河南省', N'汝阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (728, N'河南省', N'汝州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (729, N'河南省', N'三门峡市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (730, N'河南省', N'商城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (731, N'河南省', N'商丘市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (732, N'河南省', N'商丘县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (733, N'河南省', N'商水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (734, N'河南省', N'上蔡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (735, N'河南省', N'社旗县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (736, N'河南省', N'沈丘县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (737, N'河南省', N'渑池县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (738, N'河南省', N'嵩县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (739, N'河南省', N'睢县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (740, N'河南省', N'遂平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (741, N'河南省', N'台前县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (742, N'河南省', N'太康县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (743, N'河南省', N'汤阴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (744, N'河南省', N'唐河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (745, N'河南省', N'通许县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (746, N'河南省', N'桐柏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (747, N'河南省', N'卫辉市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (748, N'河南省', N'尉氏县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (749, N'河南省', N'温县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (750, N'河南省', N'武陟县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (751, N'河南省', N'舞钢市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (752, N'河南省', N'舞阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (753, N'河南省', N'西华县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (754, N'河南省', N'西平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (755, N'河南省', N'西峡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (756, N'河南省', N'息县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (757, N'河南省', N'淅川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (758, N'河南省', N'夏邑县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (759, N'河南省', N'襄城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (760, N'河南省', N'项城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (761, N'河南省', N'新安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (762, N'河南省', N'新蔡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (763, N'河南省', N'新县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (764, N'河南省', N'新乡市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (765, N'河南省', N'新乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (766, N'河南省', N'新野县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (767, N'河南省', N'新郑县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (768, N'河南省', N'信阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (769, N'河南省', N'信阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (770, N'河南省', N'修武县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (771, N'河南省', N'许昌市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (772, N'河南省', N'许昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (773, N'河南省', N'鄢陵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (774, N'河南省', N'延津县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (775, N'河南省', N'郾城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (776, N'河南省', N'郾师县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (777, N'河南省', N'叶县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (778, N'河南省', N'伊川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (779, N'河南省', N'宜阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (780, N'河南省', N'义马市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (781, N'河南省', N'荥阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (782, N'河南省', N'永城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (783, N'河南省', N'虞城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (784, N'河南省', N'禹州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (785, N'河南省', N'原阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (786, N'河南省', N'柘城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (787, N'河南省', N'镇平县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (788, N'河南省', N'正阳县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (789, N'河南省', N'中牟县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (790, N'河南省', N'周口市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (791, N'河南省', N'驻马店市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (792, N'黑龙江省', N'哈尔滨市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (793, N'黑龙江省', N'阿城市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (794, N'黑龙江省', N'安达市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (795, N'黑龙江省', N'巴彦县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (796, N'黑龙江省', N'拜泉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (797, N'黑龙江省', N'宝清县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (798, N'黑龙江省', N'北安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (799, N'黑龙江省', N'宾县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (800, N'黑龙江省', N'勃利县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (801, N'黑龙江省', N'大庆市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (802, N'黑龙江省', N'德都县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (803, N'黑龙江省', N'东宁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (804, N'黑龙江省', N'杜尔柏特县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (805, N'黑龙江省', N'方正县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (806, N'黑龙江省', N'抚远县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (807, N'黑龙江省', N'富锦市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (808, N'黑龙江省', N'富裕县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (809, N'黑龙江省', N'甘南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (810, N'黑龙江省', N'海林市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (811, N'黑龙江省', N'海伦市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (812, N'黑龙江省', N'鹤岗市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (813, N'黑龙江省', N'黑河市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (814, N'黑龙江省', N'呼兰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (815, N'黑龙江省', N'呼玛县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (816, N'黑龙江省', N'虎林县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (817, N'黑龙江省', N'桦川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (818, N'黑龙江省', N'桦南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (819, N'黑龙江省', N'鸡东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (820, N'黑龙江省', N'鸡西市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (821, N'黑龙江省', N'集贤县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (822, N'黑龙江省', N'佳木斯市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (823, N'黑龙江省', N'嘉荫县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (824, N'黑龙江省', N'克东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (825, N'黑龙江省', N'克山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (826, N'黑龙江省', N'兰西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (827, N'黑龙江省', N'林甸县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (828, N'黑龙江省', N'林口县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (829, N'黑龙江省', N'龙江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (830, N'黑龙江省', N'萝北县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (831, N'黑龙江省', N'密山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (832, N'黑龙江省', N'明水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (833, N'黑龙江省', N'漠河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (834, N'黑龙江省', N'牡丹江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (835, N'黑龙江省', N'木兰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (836, N'黑龙江省', N'穆棱县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (837, N'黑龙江省', N'讷河市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (838, N'黑龙江省', N'嫩江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (839, N'黑龙江省', N'宁安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (840, N'黑龙江省', N'七台河市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (841, N'黑龙江省', N'齐齐哈尔市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (842, N'黑龙江省', N'青冈县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (843, N'黑龙江省', N'庆安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (844, N'黑龙江省', N'饶河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (845, N'黑龙江省', N'尚志市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (846, N'黑龙江省', N'双城市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (847, N'黑龙江省', N'双鸭山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (848, N'黑龙江省', N'绥滨县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (849, N'黑龙江省', N'绥芬河市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (850, N'黑龙江省', N'绥化市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (851, N'黑龙江省', N'绥棱县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (852, N'黑龙江省', N'孙吴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (853, N'黑龙江省', N'塔河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (854, N'黑龙江省', N'泰来县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (855, N'黑龙江省', N'汤原县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (856, N'黑龙江省', N'铁力市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (857, N'黑龙江省', N'通河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (858, N'黑龙江省', N'同江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (859, N'黑龙江省', N'望奎县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (860, N'黑龙江省', N'五常县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (861, N'黑龙江省', N'五大连池市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (862, N'黑龙江省', N'逊克县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (863, N'黑龙江省', N'延寿县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (864, N'黑龙江省', N'伊春市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (865, N'黑龙江省', N'依安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (866, N'黑龙江省', N'依兰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (867, N'黑龙江省', N'友谊县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (868, N'黑龙江省', N'肇东市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (869, N'黑龙江省', N'肇源县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (870, N'黑龙江省', N'肇州县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (871, N'湖北省', N'武汉市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (872, N'湖北省', N'安陆市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (873, N'湖北省', N'巴东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (874, N'湖北省', N'保康县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (875, N'湖北省', N'长阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (876, N'湖北省', N'崇阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (877, N'湖北省', N'大悟县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (878, N'湖北省', N'大冶县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (879, N'湖北省', N'丹江口市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (880, N'湖北省', N'当阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (881, N'湖北省', N'鄂州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (882, N'湖北省', N'恩施市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (883, N'湖北省', N'房县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (884, N'湖北省', N'公安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (885, N'湖北省', N'谷城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (886, N'湖北省', N'广水市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (887, N'湖北省', N'汉川县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (888, N'湖北省', N'鹤峰县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (889, N'湖北省', N'红安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (890, N'湖北省', N'洪湖市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (891, N'湖北省', N'黄陂县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (892, N'湖北省', N'黄梅县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (893, N'湖北省', N'黄石市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (894, N'湖北省', N'黄州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (895, N'湖北省', N'嘉鱼县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (896, N'湖北省', N'监利县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (897, N'湖北省', N'建始县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (898, N'湖北省', N'江陵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (899, N'湖北省', N'京山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (900, N'湖北省', N'荆门市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (901, N'湖北省', N'来凤县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (902, N'湖北省', N'老河口市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (903, N'湖北省', N'利川市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (904, N'湖北省', N'罗田县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (905, N'湖北省', N'麻城市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (906, N'湖北省', N'南漳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (907, N'湖北省', N'蒲圻市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (908, N'湖北省', N'蕲春县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (909, N'湖北省', N'潜江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (910, N'湖北省', N'沙市市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (911, N'湖北省', N'神农架林区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (912, N'湖北省', N'十堰市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (913, N'湖北省', N'石首市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (914, N'湖北省', N'松城市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (915, N'湖北省', N'松滋县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (916, N'湖北省', N'随州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (917, N'湖北省', N'天门市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (918, N'湖北省', N'通城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (919, N'湖北省', N'通山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (920, N'湖北省', N'五峰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (921, N'湖北省', N'武昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (922, N'湖北省', N'武汉市蔡甸区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (923, N'湖北省', N'武穴市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (924, N'湖北省', N'浠水县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (925, N'湖北省', N'仙桃市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (926, N'湖北省', N'咸丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (927, N'湖北省', N'咸宁市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (928, N'湖北省', N'襄樊市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (929, N'湖北省', N'襄阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (930, N'湖北省', N'孝感市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (931, N'湖北省', N'新洲县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (932, N'湖北省', N'兴山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (933, N'湖北省', N'宣恩县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (934, N'湖北省', N'阳新县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (935, N'湖北省', N'宜昌市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (936, N'湖北省', N'宜昌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (937, N'湖北省', N'宜城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (938, N'湖北省', N'应城市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (939, N'湖北省', N'英山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (940, N'湖北省', N'远安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (941, N'湖北省', N'云梦县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (942, N'湖北省', N'郧西县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (943, N'湖北省', N'郧县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (944, N'湖北省', N'枣阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (945, N'湖北省', N'枝江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (946, N'湖北省', N'钟祥市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (947, N'湖北省', N'竹山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (948, N'湖北省', N'竹溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (949, N'湖北省', N'秭归县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (950, N'湖南省', N'长沙市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (951, N'湖南省', N'安化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (952, N'湖南省', N'安仁县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (953, N'湖南省', N'安乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (954, N'湖南省', N'保靖县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (955, N'湖南省', N'茶陵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (956, N'湖南省', N'长沙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (957, N'湖南省', N'辰溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (958, N'湖南省', N'城步县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (959, N'湖南省', N'大庸市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (960, N'湖南省', N'东安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (961, N'湖南省', N'洞口县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (962, N'湖南省', N'凤凰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (963, N'湖南省', N'古丈县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (964, N'湖南省', N'汉寿县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (965, N'湖南省', N'洪江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (966, N'湖南省', N'花垣县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (967, N'湖南省', N'华容县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (968, N'湖南省', N'怀化市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (969, N'湖南省', N'会同县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (970, N'湖南省', N'吉首市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (971, N'湖南省', N'江华县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (972, N'湖南省', N'江永县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (973, N'湖南省', N'津市市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (974, N'湖南省', N'耒阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (975, N'湖南省', N'冷水江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (976, N'湖南省', N'冷水滩市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (977, N'湖南省', N'临澧县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (978, N'湖南省', N'临武县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (979, N'湖南省', N'临湘市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (980, N'湖南省', N'浏阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (981, N'湖南省', N'龙山县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (982, N'湖南省', N'娄底市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (983, N'湖南省', N'泸溪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (984, N'湖南省', N'汨罗市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (985, N'湖南省', N'南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (986, N'湖南省', N'宁乡县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (987, N'湖南省', N'宁远县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (988, N'湖南省', N'平江县')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (989, N'湖南省', N'祁东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (990, N'湖南省', N'祁阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (991, N'湖南省', N'汝城县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (992, N'湖南省', N'邵东县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (993, N'湖南省', N'邵阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (994, N'湖南省', N'邵阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (995, N'湖南省', N'石门县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (996, N'湖南省', N'双峰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (997, N'湖南省', N'双牌县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (998, N'湖南省', N'宜章县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (999, N'湖南省', N'益阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1000, N'湖南省', N'益阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1001, N'湖南省', N'永顺县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1002, N'湖南省', N'永兴县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1003, N'湖南省', N'永州市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1004, N'湖南省', N'攸县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1005, N'湖南省', N'沅江市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1006, N'湖南省', N'沅陵县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1007, N'湖南省', N'岳阳市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1008, N'湖南省', N'岳阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1009, N'湖南省', N'芷江县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1010, N'吉林省', N'长春市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1011, N'吉林省', N'安图县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1012, N'吉林省', N'白城市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1013, N'吉林省', N'长白县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1014, N'吉林省', N'长岭县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1015, N'吉林省', N'大安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1016, N'吉林省', N'德惠县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1017, N'吉林省', N'东丰县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1018, N'吉林省', N'敦化市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1019, N'吉林省', N'抚松县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1020, N'吉林省', N'公主岭市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1021, N'吉林省', N'和龙县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1022, N'吉林省', N'桦甸市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1023, N'吉林省', N'珲春市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1024, N'吉林省', N'辉南县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1025, N'吉林省', N'白山市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1026, N'吉林省', N'吉林市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1027, N'吉林省', N'集安市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1028, N'吉林省', N'蛟河市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1029, N'吉林省', N'靖宇县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1030, N'吉林省', N'九台市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1031, N'吉林省', N'梨树县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1032, N'吉林省', N'辽源市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1033, N'吉林省', N'柳河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1034, N'吉林省', N'龙井市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1035, N'吉林省', N'梅河口市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1036, N'吉林省', N'农安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1037, N'吉林省', N'磐石县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1038, N'吉林省', N'乾安县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1039, N'吉林省', N'舒兰市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1040, N'吉林省', N'双辽县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1041, N'吉林省', N'双阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1042, N'吉林省', N'四平市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1043, N'吉林省', N'松原市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1044, N'吉林省', N'洮南市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1045, N'吉林省', N'通化市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1046, N'吉林省', N'通化县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1047, N'吉林省', N'通榆县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1048, N'吉林省', N'图们市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1049, N'吉林省', N'汪清县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1050, N'吉林省', N'延吉市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1051, N'吉林省', N'伊通县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1052, N'吉林省', N'永吉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1053, N'吉林省', N'榆树市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1054, N'吉林省', N'镇赉县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1862, N'天津市', N'天津市区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1863, N'天津市', N'宝坻县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1864, N'天津市', N'北辰区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1865, N'天津市', N'大港区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1866, N'天津市', N'东丽区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1867, N'天津市', N'汉沽区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1868, N'天津市', N'蓟县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1869, N'天津市', N'津南区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1870, N'天津市', N'静海县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1871, N'天津市', N'宁河县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1872, N'天津市', N'塘沽区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1873, N'天津市', N'武清县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1874, N'天津市', N'西青区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2218, N'重庆市', N'云阳县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2219, N'重庆市', N'忠县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2220, N'安徽省', N'宣城')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2221, N'安徽省', N'池州')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2222, N'北京市', N'北京市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2223, N'重庆市', N'万州')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2224, N'重庆市', N'重庆')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2225, N'重庆市', N'秀山')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2226, N'重庆市', N'酉阳')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2228, N'甘肃省', N'灵台县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2229, N'甘肃省', N'庄浪县')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2230, N'甘肃省', N'武威')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2231, N'黑龙江省', N'大兴安岭地区')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2232, N'湖北省', N'黄冈')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2233, N'湖南省', N'株洲')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2234, N'湖南省', N'湘潭')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2235, N'湖南省', N'常德')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2236, N'湖南省', N'衡阳')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2237, N'湖南省', N'郴州')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2238, N'湖南省', N'张家界')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2239, N'辽宁省', N'葫芦岛')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2240, N'四川省', N'达川市')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2250, N'浙江省', N'台州')
SET IDENTITY_INSERT [dbo].[tb_City] OFF
INSERT [dbo].[tb_Clew] ([ID], [Fate], [Kind], [Unlock]) VALUES (1, 5, 1, 1)
INSERT [dbo].[tb_Clew] ([ID], [Fate], [Kind], [Unlock]) VALUES (2, 2, 2, 1)
INSERT [dbo].[tb_DayWordPad] ([ID], [BlotterDate], [BlotterSort], [Motif], [Wordpad]) VALUES (N'0002', CAST(N'2007-12-07T00:00:00.000' AS DateTime), N'人事部事务', N'关于人事调动', N'小李调整到VB部门
小刘调整到C#部门
小王调整到.net部门')
SET IDENTITY_INSERT [dbo].[tb_Duthcall] ON 

INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (4, N'专家')
INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (5, N'教授')
INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (6, N'科学家')
INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (7, N'工程师')
SET IDENTITY_INSERT [dbo].[tb_Duthcall] OFF
SET IDENTITY_INSERT [dbo].[tb_EmployeeGenre] ON 

INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (4, N'普通员工')
INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (5, N'正式员工')
INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (6, N'试用人员')
INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (7, N'实习人员')
SET IDENTITY_INSERT [dbo].[tb_EmployeeGenre] OFF
INSERT [dbo].[tb_Family] ([ID], [Stu_ID], [LeaguerName], [Nexus], [BirthDate], [WordUnit], [Business], [Visage], [phone]) VALUES (N'0001', N'0001', N'李先生', N'父亲', CAST(N'1959-08-08T00:00:00.000' AS DateTime), N'WX水利局', N'工程师', N'党员', N'25')
INSERT [dbo].[tb_Family] ([ID], [Stu_ID], [LeaguerName], [Nexus], [BirthDate], [WordUnit], [Business], [Visage], [phone]) VALUES (N'0002', N'0001', N'张女士', N'母亲', CAST(N'1960-09-09T00:00:00.000' AS DateTime), N'无', N'无业', N'无', N'5151')
SET IDENTITY_INSERT [dbo].[tb_Folk] ON 

INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (8, N'汉族')
INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (11, N'苗族')
INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (14, N'朝族')
INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (19, N'满族')
SET IDENTITY_INSERT [dbo].[tb_Folk] OFF
INSERT [dbo].[tb_Individual] ([ID], [Memo]) VALUES (N'0001', N'工作努力、认真')
SET IDENTITY_INSERT [dbo].[tb_Kultur] ON 

INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (4, N'大学')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (5, N'高中')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (6, N'大专')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (7, N'中专')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (8, N'专科')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (9, N'本科')
SET IDENTITY_INSERT [dbo].[tb_Kultur] OFF
SET IDENTITY_INSERT [dbo].[tb_Laborage] ON 

INSERT [dbo].[tb_Laborage] ([ID], [LaborageName]) VALUES (4, N'工龄工资')
INSERT [dbo].[tb_Laborage] ([ID], [LaborageName]) VALUES (5, N'固定工资')
INSERT [dbo].[tb_Laborage] ([ID], [LaborageName]) VALUES (6, N'浮动工资')
SET IDENTITY_INSERT [dbo].[tb_Laborage] OFF
INSERT [dbo].[tb_Login] ([ID], [Name], [Pass]) VALUES (N'0001', N'mr', N'mrsoft')
INSERT [dbo].[tb_Login] ([ID], [Name], [Pass]) VALUES (N'0002', N'111', N'111')
SET IDENTITY_INSERT [dbo].[tb_PopeModel] ON 

INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (1, N'Folk')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (2, N'EmployeeGenre')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (3, N'Kultur')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (4, N'Visage')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (5, N'Branch')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (6, N'Laborage')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (7, N'Business')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (8, N'Duthcall')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (9, N'RPKind')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (10, N'WordPad')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (11, N'ClewBirthday')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (12, N'ClewBargain')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (13, N'Stuffbusic')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (14, N'Stufind')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (15, N'Stusum')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (16, N'DayWordPad')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (17, N'AddressBook')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (18, N'Back')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (19, N'Clear')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (20, N'Counter')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (21, N'WordBook')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (22, N'NewLogon')
INSERT [dbo].[tb_PopeModel] ([ID], [PopeName]) VALUES (23, N'Setup')
SET IDENTITY_INSERT [dbo].[tb_PopeModel] OFF
INSERT [dbo].[tb_RANDP] ([ID], [Stu_ID], [RPKind], [RPDate], [SealMan], [QuashDate], [QuashWhys]) VALUES (N'0001', N'0001', N'现金', CAST(N'2007-12-07T00:00:00.000' AS DateTime), N'刘经理', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[tb_RPKind] ON 

INSERT [dbo].[tb_RPKind] ([ID], [RPKind]) VALUES (7, N'辞退')
INSERT [dbo].[tb_RPKind] ([ID], [RPKind]) VALUES (8, N'通报批评')
INSERT [dbo].[tb_RPKind] ([ID], [RPKind]) VALUES (9, N'现金')
SET IDENTITY_INSERT [dbo].[tb_RPKind] OFF
INSERT [dbo].[tb_Stuffbasic] ([ID], [StuffName], [Folk], [Birthday], [Age], [Kultur], [Marriage], [Sex], [Visage], [IDCard], [workdate], [WorkLength], [Employee], [Business], [Laborage], [Branch], [Duthcall], [Phone], [Handset], [School], [Speciality], [GraduateDate], [Address], [Photo], [BeAware], [City], [M_Pay], [Bank], [Pact_B], [Pact_E], [Pact_Y]) VALUES (N'0001', N'李小明', N'汉族', CAST(N'1980-08-09T00:00:00.000' AS DateTime), 28, N'专科', N'已', N'男', N'共产党员', N'6363***', CAST(N'2004-12-08T00:00:00.000' AS DateTime), 3, N'普通员工', N'副经理', N'固定工资', N'C#部门', N'专家', N'555****', N'1388***', N'XX大学', N'计算机', CAST(N'2003-05-05T00:00:00.000' AS DateTime), N'长春市', 0xFFD8FFE000104A46494600010201006000600000FFE10A9B4578696600004D4D002A000000080007011200030000000100010000011A00050000000100000062011B0005000000010000006A012800030000000100020000013100020000001B0000007201320002000000140000008D8769000400000001000000A4000000D00000006000000001000000600000000141646F62652050686F746F73686F702043532057696E646F777300323030373A30323A32382030383A34323A3039000000000003A001000300000001FFFF0000A00200040000000100000070A003000400000001000000660000000000000006010300030000000100060000011A0005000000010000011E011B0005000000010000012601280003000000010002000002010004000000010000012E0202000400000001000009650000000000000048000000010000004800000001FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080066007003012200021101031101FFDD00040007FFC4013F0000010501010101010100000000000000030001020405060708090A0B0100010501010101010100000000000000010002030405060708090A0B1000010401030204020507060805030C33010002110304211231054151611322718132061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204040304050607070605350100021103213112044151617122130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00EE884D014C8D528576DAA62C3684FB42784F095A384B1DA12DA13C25012B57095B684B684F013C256AE12C7684B685284A12B570963B425B429425095AB84B1DA12DA14A1284AD5C25FFD0EF884A1176A7DAAD713170A1DA96D28DB52DA9712B85AEF218D2E7180392878F6B6EA596B4821C391A89E1DFF4955FAC394CC6C470B0C54E69170EFE93BF476BEB3FBF4FA8DB166FD53EA2FBC64605F02DA1C6C64770F2464347FA4F4F2FD4F7D7FA3F4EFA5212D40EEB65F93D04A694FB52DA9CB2CAD2536AA509E11B56AC354FAA9425095AB563052829F70096E096AA7FFFD1F4CF4DA97A610BD64BD652F0C91612FA612F4C217AC97AC870C9561E47FC6266D38F56252D8379B37B41E401EC7133ED7D4FDDE9DAC583D06C762751A722B1BBD290411AFA6F1B2DAEC74FD2AF6FB3FE12AFF48B5FFC6661DD6E162750AEA1657836975EF6C9B1ACB00AF76D1F4E8DFF00CFFE7FF37FCB5CE744EA15B6DAC870F52A980E7435F07F9BB5F3B7D3DDF9FF00F6E7A6A1CD2944823A2E84632B05F4E6B9AE01CD32D2241F10525CE7D58FAC9466E765748B1D17D4F7BF1CC8735D5925CEAEAB6B73D96B6AFCCFF835D30680ADC2625107BB5E50A243184A14A1284EB470B18557A8E57D97072AE6B9A2CA28B2E68247E635C5AEDBFBBBD5C85E6BFE32FABBF13ACB71A9B63D4C115DA1A78DD63ECD8F1FCB635A81950488DBE8353C5D55773356DAD6BDA7C9C37053DA554FAA973B27EAD74CBDE36B9F8D588FEA8F4C7FD42D5DA121357B6FFFD2F402529500E84B72B54C5619CA52A3B92DC8D2AD93EB6D8C731E0398F05AE69E083A1695E3FF005ABA6B7A17567E210063583D6C679832C32361DC776EA9EEB1967F62D5EBE0AE6FEBF7411D67A1586A6CE5E14DF8E472607E9AAFFAE57FF827A6A2C90E21E2174654F9F9CDBDD6E1E7D7921B94E358A98C686B836AD2921823FA9FA4FE77FEBABD5BA3754FDA782DBDCDF4AF69D97D5A8DAF8DDDFF0035CD76E5E33D1F0F0F27DD7E4B719BB49173DA4B1AF8258C73C07FBDEEFCCFFC11775F517AC5D6F54B312EB7D4AB2690EC7DC4CCD5EEDAD040F6FA2F7FBFFE0EB50E1918CC47A499320E28DF50F752529296B3E49F45698115F91563516645EF15D3534BEC7BB401A395E0FF0059FAD3BAEF59C8EA45A58CB61B530EA431A3631BFF007E5D7FF8D6EBD7BF2EBE854B8B71EA6B6DC903F3DEEF756D3FC8A99FF822E13A7E0DDD43A863E150375B91636B68FEB1E7FB2A2C92B3C217C456AFB97D53DF57D58E96C7723199F88DCDFF00A2E5ABEA14115B296B6AADA1B5D6D0D63468035A36B5ADFEC84F2A6028058645FFD3EE77A5EA218288D0215E21802B7A8D79355AEB1B5BB71A5DB2C8ECEDADB36FF9963172F93D572BEACE1E4F4FCADD680CB1FD232E25A5A4C558B93F4B65B88FB18CDFFCD5B47A7FF16B6BEAF63538FD2686D770CA73C6FBB2410EF52D77F3D67A9F9FEFFD1B3FE0D9E9A8C4AE543A7CDE0B8C685FD8E98727DC865C02424F8A752D7C93AF7D5CC9C6EB999D2AB2CA7A7973B368B1ED86B5AE6B9FE936DDA36FB87A1E9EF4DF57BA83BA76774DBCD85831DE05D2435A58F76C7079FF00475B1DBDEBAFFF0018745ACC5C5CDA6A36383CE3DA409218F1B87B5D35FD3F6B3D9EA6FB5716F38151B31AD04BB6C9A87B5EDF6FB6DF57F48DF7D8EFE6AC7FF6151CA0C327FCE0D981E28D3ED1A7238F15C17D70FF001915E16FC1E885B6E4096D997CB19DBF41FE95FF00CAFA0B9CEA1FE307AC647441D16AACB2D60F4EECB065EFA5BA35BE981FA373ABD9EB3F7AE530F0B2BA866578788C36E45CE0D634773E7FF92539CB7A458842B74BBBA9757CE0D26CCDCDBDD0D925EF713F9BFEBEC62F54FA9BF5168E861B9F9DB6EEA84691AB299FA4DABF7ADFDEB7FEDB567EA9FD52C1FABB8E1EE8BBA958D8BB23B09E6AA3F759FF009F1741EA05263C55A9DD6CA7D0327729940D9AA6DEA6A596FF00FFD4E868EA61CE00F0B47ED4C811C2E599735A04728A339E3405699C765A51CB4357A27DD53E37B5AEDBA8900C14FF006B1E2B9CFB7D9D8A433EC3CA1ED27DE0DFFAC1894F56C17E2DAF735AE83B9861C08D5AE6FF002979CE474EFAE38B926BC7CCC87D6090C78BDE06D9D3735CEFDD5DABB31E7BA19BA4CA12E5C4B724792867A784CDC4FACA31DD91D46DBAD65643A1F739E5BAFD3AD9BCFB90BD2A2FB6B6634BC3EB1EDD665A3DEEB08F8FB976F9D8D4675068BDBBAB7723E1AA6E9F8587D3EB2CC7AC341E63BFC5413E48CA5A4B4A65873600D63AB47EACE4741E9F95996DDB3ED34D50DF50EB2DF73E1AEF6EF737FF0051AB1F53FED195F58B23ABB3A7B30F12FA9ECDFB1C24B8B6C63AA2EFDEFA2FB1BF4D59FB3601B8DEEC6A9F69FCF731AE3A7F587F255DFDA1778A6E1F8798643396432F0E89CBCE4671A10AF17A1DFE696F1E2B9DFB7DBE297DBECFDE573DBF16BFB81E8B70F14B70F15CF0CFB07E71FBD2FDA16FEF25ED9EE9F74767FFD58FBFC1297F82F2C496C398FAA4BFC1297F82F2B49243EA92FF0004BDEBCAD24828BEA9EE525E52924A0FAA3B77643FD2782F2F492082FA7936F8269BBC1798A48A9F4E26EF029A6FF02BCC92494FFFD9FFED116850686F746F73686F7020332E30003842494D0425000000000010000000000000000000000000000000003842494D03ED000000000010006000000001000200600000000100023842494D042600000000000E000000000000000000003F8000003842494D040D0000000000040000001E3842494D04190000000000040000001E3842494D03F3000000000009000000000000000001003842494D040A00000000000100003842494D271000000000000A000100000000000000023842494D03F5000000000048002F66660001006C66660006000000000001002F6666000100A1999A0006000000000001003200000001005A00000006000000000001003500000001002D000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0408000000000010000000010000024000000240000000003842494D041E000000000004000000003842494D041A00000000033D0000000600000000000000000000006600000070000000040066006A007400700000000100000000000000000000000000000000000000010000000000000000000000700000006600000000000000000000000000000000010000000000000000000000000000000000000010000000010000000000006E756C6C0000000200000006626F756E64734F626A6300000001000000000000526374310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000006600000000526768746C6F6E670000007000000006736C69636573566C4C73000000014F626A6300000001000000000005736C6963650000001200000007736C69636549446C6F6E67000000000000000767726F757049446C6F6E6700000000000000066F726967696E656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E6572617465640000000054797065656E756D0000000A45536C6963655479706500000000496D672000000006626F756E64734F626A6300000001000000000000526374310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000006600000000526768746C6F6E67000000700000000375726C54455854000000010000000000006E756C6C54455854000000010000000000004D7367655445585400000001000000000006616C74546167544558540000000100000000000E63656C6C54657874497348544D4C626F6F6C010000000863656C6C546578745445585400000001000000000009686F727A416C69676E656E756D0000000F45536C696365486F727A416C69676E0000000764656661756C740000000976657274416C69676E656E756D0000000F45536C69636556657274416C69676E0000000764656661756C740000000B6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F6E6700000000003842494D042800000000000C000000013FF00000000000003842494D041100000000000101003842494D0414000000000004000000023842494D040C00000000098100000001000000700000006600000150000085E00000096500180001FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080066007003012200021101031101FFDD00040007FFC4013F0000010501010101010100000000000000030001020405060708090A0B0100010501010101010100000000000000010002030405060708090A0B1000010401030204020507060805030C33010002110304211231054151611322718132061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204040304050607070605350100021103213112044151617122130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00EE884D014C8D528576DAA62C3684FB42784F095A384B1DA12DA13C25012B57095B684B684F013C256AE12C7684B685284A12B570963B425B429425095AB84B1DA12DA14A1284AD5C25FFD0EF884A1176A7DAAD713170A1DA96D28DB52DA9712B85AEF218D2E7180392878F6B6EA596B4821C391A89E1DFF4955FAC394CC6C470B0C54E69170EFE93BF476BEB3FBF4FA8DB166FD53EA2FBC64605F02DA1C6C64770F2464347FA4F4F2FD4F7D7FA3F4EFA5212D40EEB65F93D04A694FB52DA9CB2CAD2536AA509E11B56AC354FAA9425095AB563052829F70096E096AA7FFFD1F4CF4DA97A610BD64BD652F0C91612FA612F4C217AC97AC870C9561E47FC6266D38F56252D8379B37B41E401EC7133ED7D4FDDE9DAC583D06C762751A722B1BBD290411AFA6F1B2DAEC74FD2AF6FB3FE12AFF48B5FFC6661DD6E162750AEA1657836975EF6C9B1ACB00AF76D1F4E8DFF00CFFE7FF37FCB5CE744EA15B6DAC870F52A980E7435F07F9BB5F3B7D3DDF9FF00F6E7A6A1CD2944823A2E84632B05F4E6B9AE01CD32D2241F10525CE7D58FAC9466E765748B1D17D4F7BF1CC8735D5925CEAEAB6B73D96B6AFCCFF835D30680ADC2625107BB5E50A243184A14A1284EB470B18557A8E57D97072AE6B9A2CA28B2E68247E635C5AEDBFBBBD5C85E6BFE32FABBF13ACB71A9B63D4C115DA1A78DD63ECD8F1FCB635A81950488DBE8353C5D55773356DAD6BDA7C9C37053DA554FAA973B27EAD74CBDE36B9F8D588FEA8F4C7FD42D5DA121357B6FFFD2F402529500E84B72B54C5619CA52A3B92DC8D2AD93EB6D8C731E0398F05AE69E083A1695E3FF005ABA6B7A17567E210063583D6C679832C32361DC776EA9EEB1967F62D5EBE0AE6FEBF7411D67A1586A6CE5E14DF8E472607E9AAFFAE57FF827A6A2C90E21E2174654F9F9CDBDD6E1E7D7921B94E358A98C686B836AD2921823FA9FA4FE77FEBABD5BA3754FDA782DBDCDF4AF69D97D5A8DAF8DDDFF0035CD76E5E33D1F0F0F27DD7E4B719BB49173DA4B1AF8258C73C07FBDEEFCCFFC11775F517AC5D6F54B312EB7D4AB2690EC7DC4CCD5EEDAD040F6FA2F7FBFFE0EB50E1918CC47A499320E28DF50F752529296B3E49F45698115F91563516645EF15D3534BEC7BB401A395E0FF0059FAD3BAEF59C8EA45A58CB61B530EA431A3631BFF007E5D7FF8D6EBD7BF2EBE854B8B71EA6B6DC903F3DEEF756D3FC8A99FF822E13A7E0DDD43A863E150375B91636B68FEB1E7FB2A2C92B3C217C456AFB97D53DF57D58E96C7723199F88DCDFF00A2E5ABEA14115B296B6AADA1B5D6D0D63468035A36B5ADFEC84F2A6028058645FFD3EE77A5EA218288D0215E21802B7A8D79355AEB1B5BB71A5DB2C8ECEDADB36FF9963172F93D572BEACE1E4F4FCADD680CB1FD232E25A5A4C558B93F4B65B88FB18CDFFCD5B47A7FF16B6BEAF63538FD2686D770CA73C6FBB2410EF52D77F3D67A9F9FEFFD1B3FE0D9E9A8C4AE543A7CDE0B8C685FD8E98727DC865C02424F8A752D7C93AF7D5CC9C6EB999D2AB2CA7A7973B368B1ED86B5AE6B9FE936DDA36FB87A1E9EF4DF57BA83BA76774DBCD85831DE05D2435A58F76C7079FF00475B1DBDEBAFFF0018745ACC5C5CDA6A36383CE3DA409218F1B87B5D35FD3F6B3D9EA6FB5716F38151B31AD04BB6C9A87B5EDF6FB6DF57F48DF7D8EFE6AC7FF6151CA0C327FCE0D981E28D3ED1A7238F15C17D70FF001915E16FC1E885B6E4096D997CB19DBF41FE95FF00CAFA0B9CEA1FE307AC647441D16AACB2D60F4EECB065EFA5BA35BE981FA373ABD9EB3F7AE530F0B2BA866578788C36E45CE0D634773E7FF92539CB7A458842B74BBBA9757CE0D26CCDCDBDD0D925EF713F9BFEBEC62F54FA9BF5168E861B9F9DB6EEA84691AB299FA4DABF7ADFDEB7FEDB567EA9FD52C1FABB8E1EE8BBA958D8BB23B09E6AA3F759FF009F1741EA05263C55A9DD6CA7D0327729940D9AA6DEA6A596FF00FFD4E868EA61CE00F0B47ED4C811C2E599735A04728A339E3405699C765A51CB4357A27DD53E37B5AEDBA8900C14FF006B1E2B9CFB7D9D8A433EC3CA1ED27DE0DFFAC1894F56C17E2DAF735AE83B9861C08D5AE6FF002979CE474EFAE38B926BC7CCC87D6090C78BDE06D9D3735CEFDD5DABB31E7BA19BA4CA12E5C4B724792867A784CDC4FACA31DD91D46DBAD65643A1F739E5BAFD3AD9BCFB90BD2A2FB6B6634BC3EB1EDD665A3DEEB08F8FB976F9D8D4675068BDBBAB7723E1AA6E9F8587D3EB2CC7AC341E63BFC5413E48CA5A4B4A65873600D63AB47EACE4741E9F95996DDB3ED34D50DF50EB2DF73E1AEF6EF737FF0051AB1F53FED195F58B23ABB3A7B30F12FA9ECDFB1C24B8B6C63AA2EFDEFA2FB1BF4D59FB3601B8DEEC6A9F69FCF731AE3A7F587F255DFDA1778A6E1F8798643396432F0E89CBCE4671A10AF17A1DFE696F1E2B9DFB7DBE297DBECFDE573DBF16BFB81E8B70F14B70F15CF0CFB07E71FBD2FDA16FEF25ED9EE9F74767FFD58FBFC1297F82F2C496C398FAA4BFC1297F82F2B49243EA92FF0004BDEBCAD24828BEA9EE525E52924A0FAA3B77643FD2782F2F492082FA7936F8269BBC1798A48A9F4E26EF029A6FF02BCC92494FFFD9003842494D042100000000005300000001010000000F00410064006F00620065002000500068006F0074006F00730068006F00700000001200410064006F00620065002000500068006F0074006F00730068006F007000200043005300000001003842494D04010000000002220006000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000012000100010000000000000000000000000000000000000001FFFE2A3600D4266BFFFE2A3600D4266BFFFE2A3600D4266B0001002689DE00C80A05002689DE00C80A05002689DE00C80A050001000D4DFE00D8BE6F000D4DFE00D8BE6F000D4DFE00D8BE6F0001002C0B0200CD0CF2002C0B0200CD0CF2002C0B0200CD0CF20001001EBD0400DA6A13001EBD0400DA6A13001EBD0400DA6A1300010037833600D13A0C0037833600D13A0C0037833600D13A0C0001002ECBB200DBAACE002ECBB200DBAACE002ECBB200DBAACE0001003FC54600D4FC3D003FC54600D4FC3D003FC54600D4FC3D0001003B2ECB00DA6A13003B2ECB00DA6A13003B2ECB00DA6A1300010050496700D2E5B00050496700D2E5B00050496700D2E5B00001004E739C00D99441004E739C00D99441004E739C00D994410001007CC9DD00BD2E5B007CC9DD00BD2E5B007CC9DD00BD2E5B0001009C7F9500AFC20400B1903500A855D700BBD15600A4B8D6000100C3E64E00A41FBD00C3E64E00A41FBD00C3E64E00A41FBD000100C73E3200AB344100C6DD7400B4D5EC00C6590000C205DB000100C2108400D2E5B000C2108400D2E5B000C2108400D2E5B0000100BB2ECB00E6F16200BB2ECB00E6F16200BB2ECB00E6F16200010004967A00F8E6860004967A00F8E6860004967A00F8E6863842494D04060000000000070008000000010100FFE11803687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B633964273F3E0A3C783A786D706D65746120786D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786D70746B3D27584D5020746F6F6C6B697420332E302D32382C206672616D65776F726B20312E36273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A657869663D27687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F273E0A20203C657869663A436F6C6F7253706163653E343239343936373239353C2F657869663A436F6C6F7253706163653E0A20203C657869663A506978656C5844696D656E73696F6E3E3131323C2F657869663A506978656C5844696D656E73696F6E3E0A20203C657869663A506978656C5944696D656E73696F6E3E3130323C2F657869663A506978656C5944696D656E73696F6E3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A7064663D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E332F273E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A70686F746F73686F703D27687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F273E0A20203C70686F746F73686F703A486973746F72793E3C2F70686F746F73686F703A486973746F72793E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A746966663D27687474703A2F2F6E732E61646F62652E636F6D2F746966662F312E302F273E0A20203C746966663A4F7269656E746174696F6E3E313C2F746966663A4F7269656E746174696F6E3E0A20203C746966663A585265736F6C7574696F6E3E39362F313C2F746966663A585265736F6C7574696F6E3E0A20203C746966663A595265736F6C7574696F6E3E39362F313C2F746966663A595265736F6C7574696F6E3E0A20203C746966663A5265736F6C7574696F6E556E69743E323C2F746966663A5265736F6C7574696F6E556E69743E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A7861703D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F273E0A20203C7861703A437265617465446174653E323030372D30322D32375431363A34303A33302B30383A30303C2F7861703A437265617465446174653E0A20203C7861703A4D6F64696679446174653E323030372D30322D32385430383A34323A30392B30383A30303C2F7861703A4D6F64696679446174653E0A20203C7861703A4D65746164617461446174653E323030372D30322D32385430383A34323A30392B30383A30303C2F7861703A4D65746164617461446174653E0A20203C7861703A43726561746F72546F6F6C3E41646F62652050686F746F73686F702043532057696E646F77733C2F7861703A43726561746F72546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449443E61646F62653A646F6369643A70686F746F73686F703A37646136336130352D633663322D313164622D623464322D6533303033393765366261333C2F7861704D4D3A446F63756D656E7449443E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A64633D27687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F273E0A20203C64633A666F726D61743E696D6167652F6A7065673C2F64633A666F726D61743E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A786D706D6574613E0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A3C3F787061636B657420656E643D2777273F3EFFEE000E41646F626500644000000001FFDB008400010101010101010101010101010101010101010101010101010101010101010101010101010101010101010202020202020202020202030303030303030303030101010101010101010101020201020203030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303FFC00011080066007003011100021101031101FFDD0004000EFFC401A20000000602030100000000000000000000070806050409030A0201000B0100000603010101000000000000000000060504030702080109000A0B1000020103040103030203030302060975010203041105120621071322000831144132231509514216612433175271811862912543A1B1F02634720A19C1D13527E1533682F192A24454734546374763285556571AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA110002010302040403050404040606056D010203110421120531060022134151073261147108428123911552A162163309B124C1D14372F017E18234259253186344F1A2B226351954364564270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00DAE2AE8FFC7FA71FEF5CFBCABF17FA3D6384B6E715F3FF0057AF51CD2417E6FF00F1BE6FF8F7BF13E5D213091C47FABF6F5D8A483F173FEC3FE35EFDAFE5D7847F3FF57EDEBBFB387FA37FB6FF008D7BF6BF975BF0FF00A5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF8D7BF6BF975EF0FFA5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF008D7BF6BF975EF0FF00A5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF8D7BF6BF975EF0FFA5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF008D7BF6BF975EF0FF00A5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF8D7BF6BF975EF0FFA5D7FFFD0DB4AA60265FA9E0FF87BC9AD5D422D6D5C53A8ED4C09B9FF005BEBFD3FD88F771230C749DF6F06983D742954FF004FF6E7FE2BEFC653D546D95E07AEFED57FA8FF006EDFF11EF5E3375BFDD47F8BF97FB3D7BED53FA8FF0093FDEFC56EBDFBA8FF0017FABF6F5D1A68C7E41FF5B51F7EF15BE5D36DB7AAE0B1FD9FECF5E14C87F23FD8EA1EFDE2B75B1B706E0C7F67FB3D77F6A9FD47FB73FF0015F7AF19BD3ABFEEBFE97FABF6F5EFB55FEA3FDB9FF8AFBF78CDE9D7BF75FF004FFD5FB7AF7DAAFF0051FEDCFF00C57DFBC66F4EBDFBAFFA7FEAFDBD7BED57FA8FF6E7FE2BEFDE337A75EFDD7FD3FF0057EDEBDF6ABFD47FB73FF15F7BF19BD3AF7EEBFE97FABF6F5EFB55FEA3FDB9FF008AFBF78CDE9D7BF75FF4BFD5FB7AF7DAA7F51FEDCFFC57DEBC66F4EBDFBAFF00A5FEAFDBD7FFD1DB9E5A472C4E9FF5B8FF007AF791C2E540E3D45AD6EC7CBAE068DC81E93FEDBDEFEA569C7AF35BBFA75C7EC9FF0000FF00B63EFC2E14F9F5E5B761C475D8A193FA1FF6DEFC6E17D7AB8B73E9D40CACD4D86C755E5323325250D1C466A9A994E98A18F505F23B1FA2A96E7DF84EA4F1EB4F1684662300748DD87BAE837A6CEDBFBAF1F59475B499AC7A4FF738EA98EAA845753CD363F2F4B054464C728C765E927A6620F1244C0F23DAB04380C86ABFE5E83CB730D5DA570083D2A5E6FD209B6AFD24FF004FEBEF6118D68A7A4B3EE6BA690A51BD7AC4F29562A1B55BEB6E40FF005CFD2FEDF8A2A8AB0C7487F78DD57E335EB119A43702FF00EF5EDE30C60569D6FEBEEBCDFAC05AA6E4DCFD7FA7BBF87081C3AF7D7DD57E2C759035458726E7F1FF001BF74F0E13F675BFAEB9FE2EB906A8BD89B7BF18E1C53AD8BEBAFE2EB2886A1F90C47FB0F6D31894D00E9C1797278375DFDB54FF00AB3FEDBDD75C7E9D6FEAEEBF8FAFFFD2DCA4E3C1BFEDDFFA7A7F1EE6BFAA1FC63A091B71E431D7631C0FFBAFFD6E3FE35EF5F563F8FAD7D3FA0EBDFC307FC73B7FB0F7EFAB1FC5D6C5BD2B51D7BF8681FD81FF0024FBD7D58F5EADE00F4EABEBF983F69E23ABBA8F3147B9723F63B333584CC52F665340B0C19AA8EA1CED2BEC9DF9B8369D7D455534706E2EBD3BAE8B3234ACF278606B4320B8F6AD6EE18ED2E2E1B25788A804AE0369AFE200934F3A53EC0F6F2973AE2B7870AF8AFA1E22BF23C3A249FCA8FE45E5FB029BB8FE3AEFE971706F0EB0CFD5F60EDD8A92ADE7FBBC3EF2DC796A0EE1C5636AEA9E9A2DD98DD9BF2068F35551647134CF88A7C36E8C3D3FDCCD505F4DB9637232C7246D28320E0381A7AFA9FF003003D7A0C6ED63E198E40840228735EEFF00263EDCD7EC170ED442C2C496E016FA7FB604116B7B15FD436401D137827F87AE468C585873C5CDED7FEB7B1FCFBA99DF4D2B8EADE11F43D6434896E001F4FF007C7817F7A323900571D6FC23E9D736A64B58017B8FEBFEDFDD75BFCFADF847D3AE0B4D6724FD38B7FBDFBF1734A75A119F4C75C9A0526FF8FF0063EF5ADBADF867C8751FEF6084B47AB95254D87E4120FD7DBC2DA4701B4F1EB6081823AE5FC4E0FF007DFF0023F7EFA397D3ADEA5F43D7FFD3DE4DB05420B03A6F7FE9F4B1FC7F4F6251B94E4022B4E9A36918C75C86028CFD34816FE83DD5B739FE7D6FE9507963AF1DBD47CF2BFEF1EFC3749C7107AD7D221EBAFEEF51FF00AA4FF6E3DDBF7A4DE87AF7D2275ACCFF00C2883BAB6675D6D9F8FDB16825C357F64CDD8516F3C352553AC75784C2D152556DCCB64ABE9EB682BB0FB87626E05CE7F09CFE32A50C73D0D417678B409031BCEF53DBEC53369EE2D507CF0334FB6BD268F6C82E3718831C05A1FCFF00CD4FE67AA8FF00823B8ABFA7BE4275CF666DD82A3271ECB9AB69F23056D21A7CBD4755EFEA0AADBDBE3666EECAC1949E2C966369C3898E2C69AB6311CB6129269E35AF6897DC6FCBBEE04965BD583DCCA56D84A03D3F87CF81C8AD091E791E7D1E6F3C8D15EED376B6E3F5F4553FD30C8F2EB71AA3AEA2C952526431B53156E3F21494F5F8FAC8183C15943590A54D25542E09578AA29E4575238208F797F0CA9711453C4C1A3750C083504115041F4EB1E9ADA58E468E55A3A9208F30460F5292EE2E3E9FEFBFA5FDEE46D14CF5AF07E7D73F1BFF004FF791FF0013CFBA0947991D6BC13EBD77E37FF0FF006FEFDE37CF3D6FC134C9CF5C963214936B9B585FF07EA7DEBC6F5EBDE01E80AF917DA11F53747F7B6F9C6E6B0943BB3ADBA23B53B57154590ABA079E15D9DB3F3992C6E66AB1351511CD3E1533D450C2F232882494888B6A603DD64B80885811A87FA8FF002FF3F5B480B3A29F8491FE1E94DB572D4FBDB6A6D4DEB87715388DE7B5F6F6EEC554C5768EA319B970F479AC7D446C1798E6A4AE4653FD0FB318B7288C6841AE3A4E6C6524915A74FDFC3EABFD437FC927FE8DF6EFEF18FAD7D04DF3EBFFD4DD58EEE2CC4963725BEA7FC4FF00ADF8F7287F579514003007FABD7A40D7C01249EB90DE0CBC6AFF0079BFBAFF005795BCBAD7D7A7F175D9DE0C79D7FEC2FEF5FD5E518A75EFDE082943D786EE278D7F5FF6AF7A3CBEA0569D7BF78AF5ABE7FC2977A73796EEE99F8EFF0024B6EEC4A4DD1B67E33F6CE7B2FDA1B87051662B7B1F676CAECBC3E236A5365A931342F3D1EE3EAD1B8E2A76DD746B4E7291AC5433D2CB1C11D732907335839D9658A484FD2C649D438AD450FCA8715A8F21F9B7038FAF4B9493B88A11F9D41FCB3FB4F54C3F0A3E416DFC56ECDA934593A597756C7A8CEC5434D9EDC5494381DEA2832A9254ECEDF7B8A3C849824D9392C9FDB53C795AC75A4A425A4C89A0A9A6158F8A9BEEDB34C979158D4AB0E3E62A41C79752FED1B8A6985E5A691FE6E3D5FEFF002C5FE643B23BDBBBFBEFE18EE6CB187B0F61EF8DF7BC3A82B63C86DBDCBB577775B5666B259BCAED2D85BFB66EE1DC9B6B7BE27AF8492C98CAD8E48E5ACC3076769E4A79656CACF6AB9859B64B3DAAF2626EA250A01F418CFCC617ECD381427A8379CB6331EE7737F146441235491EA7E5F3FF003F578F1D0C712D84BAEFF9E0DBFD7E3F3EE5B791A422A294E81A2D53B86B38FB3AC9F6B1FF008FFBD7B6E87F88F57FA34FE33D7BEDA3FF001F7BA1FE23D7BE8D3F8DBAF7DAC7F83FF15F7ECFF11EAA6CD38073D690DFF0A5AF96F9AE98F98F86EB2D95BDCE3C6EEF82F8FD95BF71B87C9C4F3D1A6E4EE7DD9BC6A36DEEAC7032AA516EADAB87A197C13A113D3CD14814FEDB00C6F1BB0B3F1103293FF143C8FA823F6F46BB7ECB1DCA93233015C1007F2E3EBFE0EB6AAFE54DBBF21DA9FCB5FE0F7606731F1633239FF8DBD694D251BB3CAC906D5C245B26867324CEF2C8D5D43B6A3A866624B34A49FAFBF6DFB89BDB48A5552B414A7CE953FE1E8C06D11C124F1D0BA87C13C6941E98EAC03F8741FD29FF00DB0F6B7C67F56EADFBBA2FF7D75FFFD5DC024A82EC185F83F83F8FCFFB1B7BC80F08FA740210A8C839EBA799AFF9FF007DF9FC7BDF867C8757008E0DD6332BF1C9FF007DFEDFDEFC36EB79FE23D72499C329B9FAFBD346483D6C56BF175C33781C6EE5C3E5B0B9EA2A2CCE03398BAFC466F0F92863A9A0CAE2727492D0E4B195D4D2868AA28EBA8E778A58D815747208B1F686748E6825B59A10F1BA952A78107041F911D284560CB22C94A1EBE715FCD47E35E2FF0097BFCAEDC9D3D55438DA5EA7DCF4ADDAFD29B9B234B84C9CB9CEBDCB55E66821DAD5ED95CA439EA4CAEC8DC59BCCE332BE0A911E463145949A16337821C77E62D81797373FA6589E4B59CD54D09A2F9293EA2847CC007CFA196DBB934B0AA6AEE269F9FF009BA41CBDC9BDF2DBA3E36FC89DAFDD389C4773E5735D594DD7DB5B67EDFC36D9DDB8FDABD3EF4745D715B8FDB74098D8E6C9C14B4357413D4666A69DF389574C95934F064E58E4085A6E179B2EEBF5F11A408E3238126B8F9F0351E808E87AE969B8ECEF672A032B2F5F401F869F278FCABE91C4F6057E065D99D8588ABFEEBF6AEC59E96B291F6BEF6A7C7D065245A387211A54FF0006CDE27274D5D4AA5A634DE69291E59A5A69257CA7E56E62B6E65DB12FADE8194E9615E0C00A8FE60F13820D7341036EDB5CBB4DE496D28C11A94FA8CD3FC14FB7A351F7151C72DFA6E7816BFF004FEB73FD3D893A2DAFAFAF5EFB8A8FEADC8BFD07FC93FE2C7DFBAF57A4AEFBEC2DAFD61B2776764760EE0C7ED3D8BB176F65375EEEDCD98A9828F1983C0E1A964ACAFACABA89DD2305628F4C697D72CACB1A0677505B9254894BC868A3FD5FEAF967AF71FB7AF92DFF00338F9A790FE60DF32BB8BE51CF86A8DB781DF12E170BB1B6B646A60ABADC0F5EED1C5D16DBDAD87ADAD8922592BA2C6D0FDED5C88A5229A6645791143B429BCDE9BCBC94447B4B1CFAE49FB326A7A906CAD8436880FC4A3EDCF5F4C5FE53EF98DADFCB1FE05E032BFB55F43F18BADE7923911A365A6CBD14F9CC67A4F3CE2B2701BFF6BF5717B7B95F96B6B106D16C1857500DFB557FCB5E82D79B9A25D4E9424863D5817F78E7FF008E89FF00277B3FFA25FE1E937EF55FE13FEAFCFAFFD6DB7A2ADF0F027661F9F49F791DA57F87A8BFF78FCFFD5FB3AE4B91B700B5BFA7FBE03DFB4AFF000F5EFDE15C57FD5FB3AE7FC41BFC7FDF7FB1F7ED1F2EADF587AEBEF989BDBFDF7FB7F7BD1F2EB62EC923A7682A5A48EDAB8239E7DA5922A3D40E97452170093D526FF3ECF81D0FCE0F82DBB2B36AE33EE3BC7E368CA7767525552401F2F96A5C1E34CBD89D7B4B3232D47877B6D3A3668A14129932B8FA1611BBA2A90E7336D62FF6F7754FF188AAEB8F4191FED863EDA7A746BB6DE1B6BA8C93DA707FC9FCFF00CBD6885F10BA77A8FB3C4794EC1EEDC074F63FFBB195C8D3763EEADB19EACD89B73784782C8D66DADBB96DD3418BCFF87736E7C9412D2C9411D2524F4F1422A52BA0275FBC6E9C17B8BB899683208F5FF5571D48BB577CC24A62BD6D6DFC8B3E606EFDD1F2837B74DEF5EC01BAF6676F74ED266FA6972F91CAD4E71B29D4664CC8C4E3286B30F8D94E0A2EBBDC19422BE72E92D0E171C90308A485584FECA5CC7B45DEFDB2C8F437171E28078EA0A8941F338AE070F9745DEE4426E06DB7AA2A238F413FED89FF002F5B5B8495A52AC5443E45666B5DB40B1D0A3E9F8FCFBC8D60D9D34AF5140A62BD4A6487D56D4D760C09B0E05ACA458F02DEF4A24FC4457AD92BE5D68A9FF0AAEF9DFBDF33DB1B2FF97E6CCCA5561BAC7646DFDBBDA5DCD0D24B3533EFDEC2DC310C96CBC1645E294C790DADB176F3C75229D8056CD55C86642D474ECB1C7396E4C5E3B289885352DE580683F224547A8A7426D96D94466E5D7BC9A0F90FF3F5AA1F40F49EF0F929DFDD43D0DB0288E4F7776BF60ED8D8184A558DA55866DC1928696B32154B1ABCB15063283CB5555205709494F2B81A9006096D56AD777B0A0E04D3FCBFB00A93D1CDC4BE142EDF227FCDFEAF5EBEC194D82C36CDC6E13696DAC663F0DB6B6BE0B0FB6B6E617110AD2E270DB7F6F63E0C2617118BA64F4536371B8CA08A1823160912281F4F7905636A21B5862028AA001D46D7926BB877E3AB3E5D64FB86FE87FDBFB55E10E92EA1E87F975FFFD7DAAE3CB346FAD458DAD6FF006FFE1FE3EF2BA6B6207E7D4330CD4AE3ACFF00DE061C31E7F23FA8FF006DF9F689A32A69D2E53515EBB5CDA37E3EBFEB73FD7F1C7D3DD741FE1EB741E9D2736E7646D7DDB5FBC719B732F4F95AED81B9D765EEF869967030BB9DB6D6DCDDE71134D2431C153511EDFDDB8F9DDA069638DA7313309A396344B6F736B76D7496D32C8D04A639349AE970AAC54FCC065A8F2AD0E4101D92DE58444D2C4543AEA5A8A55492011F2241A1F3E97D4F913E3163627FDF7F5F7B688B36074D09DD4E91D4C190D243390DA7EA3EA0ADB91637BDC7B69A1C70E9E4BA756EE15EBE71DF3B3F975F647587CDDF923F0FF6D55ED4EBAF8BB59B8771FCC1EB0DDDBB76F438CDA3B7F6CE7366E7372C7B2717BF63C1E38E2A3A1CA63E7DAF49898323152C957F6DE749273F754B8C5EE0DBC3CB5BB493F82C629492A001C0938CD300D40391403E40CC3C9973FBC6CD9C351D7B4D7D47F97813F6F50BF97D77EE47E34777FC2BDFB59BBB2F83A4EA9DDF89C5F6343579DC560B0191EBFDE7B964DB194C7EE4C8D3BBBCBB4367ED9CB475F5EB2B53349511A53BACEA164F61CE55BA1B6734D8EE3338F0670385752863A5BE55E3E67E5D1CF3059B5D6C977071903547A1A0C71CF5F4A3D70BA79609525A7917CF15407531C94C57C91CE24074789E23AB55EDA79FA7BCB507018FA75047A8EB527FE6F9FF000A41DB9D0CFB8BE3F7C09C8E037CF6A41FC4F0FBBBE404DF6D97D8FB167800A3A88BAC29889F1DBE371D057F9A196BE7B63A8E686D1AD4338923096F3CCD6F69AE08D599A94A8A507F3CFF0083CB3D1D596D32485649C517D3FCFD6916727F247E68F796371D2D5F657C8BF901DA59CA6C4E223C8D7E5F7B6FADD394C956493D3E3295AA67A86A2A0A4358F22C41E9F198DA4D4FFB30A3858D27175B8DD86894C92C8D40324D4D4E7E43EDA0FB3A12F659C21A4655847E407FABF69EB7F5FE4DBFC8C3627C00A6C2FC85EFAFE09D8DF326BF1730A36A231E4763F41C398A57A6C9E2762CCE0AE777CCD413352D7EE06168D1A482842C44CF2CBFCB1C9FFBAD167BD60F76C3FDAAF9D07AFCCD3340380EE07EE3BD7D66A486AB6FF3E27E67D07A0FCF8F5B0357C9AA54E2F6880E6C7FDD921FF1E39F7204309D2720E7FCDD06DE60A407153F2FB4F50AFF00E03FDB0FF8A7B77C23F2EA9F509FC27AFFD0D9FE09AF7FF7AF798AE80629D4271F9F4A8A0A78BC22E2017B1FA137F6573F86AD46C9E8CE31DA3AA08EC8F959D9FF00CA9BA83BC3E3A76C8DC7BE6971FB4FB3373FF2F1F908F8D7CE602BF6964F234B8DD91D19DDF595632FFDD9DEFF001DB726F0C7D04592AAA7FE05B876A250347F6F58B350889799B9B23E46DB2F36FBCBAADE4C928DBD8D0B3B531190C48668350635ED68D41F50063B36C8DCC77F04B6F0136E854DC800D156B961A780700814C863F61EACE7F97D75BECFEB8F89DD558EDB5D958BEEBCB67F173EF0ECCEEEA1CC516E593B6FB7370543D47636EEA9DD549454936E3869B71C72E271F25519AAE8B118DA4A09657349C0BF94F6BB0D9F62B2B6B560EEE0C92C982659A43AA5919A80B16727273400138E89377BB96FB709E6954A8074AAD28111708A070000A60638D3A37D595D4F46423B485C8D4B1C31BCD2150402C1225672A0B017B7E7D88BF4C1AF45042EAC9CF52A14ABA84122455288413FBD04D11B7F8ABA061FEDBDD4A467CC57F2EB63493C7AD76BFE1431B137460BAAFA33BE36675F54EEDCC51EECC8F476F9AFC761D73798C6F5FEFAC6D76571D2D1E2F38721B56A6B23CFD0D550634BE3A4CB2E4B389F65510B960D0AFBCBB55B4BB35B6E094F1A372A4FAEA048E1E9423E7ABA1D723DFB5ADCDDDAD6A8E030F911838F9D47ECEB58FCD557446D0A8DD5D55BA683315F936DBF4D929F63D3D51DBBBCB6BBC7B4696AB13BF66DFCD2EEEC1D6CDBA775E524ACACC1E572957398695D5E8606AC6921C67782F1A4DBF718D14431B69F960EAA69AD683D7E74AE3A98EDA5867B1B9B67A9909AF0F2A538F0AE38711C7A187BFBFE1417F2F3B27E14E3BE096D0D9F90DB9BD303869F63F65FC88A3AFAAAADF7D8BD2B828EAE8F0986ABDA1438CAB8B68E5337B44E3D371E563CA57AD744922050B552CAD3B9E7AD1B0DAC32B059A8ABA9880294A01C477629535F3A0F31185E72C2C57B3DCA54C64D4281C09F3F9FAD3F9F5AFDF5074CF697C8DEDCD99D27D3FB5EB77BF677636E1A1DB9B5B0542A2296B723506761595B5552D0D363E8A828FC953555F3CA29E9E962696460A0B7B436C2E77AB986D6DD354AE68063F6FC8015A93C287A577D25B5A46D2BB511454FFABD7D3D7AFA4EFF0029FF00E531D1BFCB47AFE9B3B5E713D8DF2C376E0E2A7ECEEDE8E98CB8EC1A55AACB90D8DD5B155AAC984DAF0CC045555AAB1D6664C2AF308E11153453CF2DF268D9E1127861AF1946A63E5F200F01E9E7E67340B196EBBF2DEB140D4B70703FCA7D7FC03CBAB7B6DC34C0B7EA27F06E1473F4005CD87E3D8BC6DF2951DC29F3CF4426EE31E58E996A33A6493529005ADCB13F93F916E2DED7C367A12807FABF6F4926B90CC08A8C7AF583F8D37FAA1FEDCFFC57DBBF4DF2FF0057EDE9AF1FE67F6F5FFFD1B88D8BF272972790A586A1DBED09FAD8DBF1F5B7F8FBCE0DD76268E3635F2FF37F4BAC66E5EDED5DD7D2BFEAFC3D1D44ED2C39860929268561922565512060381C5F93707D84936C2C298A8E878FB82823E63A61CD6F3DA99D346D9BC561334D8DA8FBBC736531D43913415402FF0094D11AC82634D51E91EB4D2DC7D7DBA368634C034FB7A68EE319E23A9E7B628D7EB3A8FF005CA8F77FDD0DFC1FE1FF003F5A3B946389FF0057ECE8887CFEEA4D9DF317A2F727526EBCFE6B118DCBAD154C393DB1918F1B9FC364B155906471999C1D6491CF0D365F1B5B4EB242CE8F1B1051D5A37752DDCF2D1BF8248685588A02388F983F2E929DE62B79D27A2B50F03907EDEB4B7DFF00F1DBF9C5750F63E436CF5AFC94F91FB976AE3F295D4DB633F8DF939D898DA25C17DEFDAE365CB61333B928E9E9320D8775351141156C314EACD133058EF165FF0021FB8115D1167B8CCD054F095C0A790A1FF67A165BF34F2B4B07EB2469262BFA62B5F5047CFECC1A7400F727557F327A6EBCCB7657C9BDF7DD3BDB09B4B238BCEFDAEF5EFDDCDBCB21B726192A5A73B8F69E01F7964683F8AC523AA3CB140D253A32491A1264310079C797F9DECB6C9A5DEE02DB7A91DD24CA4024845EDD40E495181E7F6D45DCB3BCF295D5E2DB4332FD43569A633902A4E40F404E7D3A44A6DAD97BEF74ECDC3755A54EE1A2DCBB030E25C6F87212E5D6B36DD03C5B9737BAEBA823778E5ACAAAF596B6799151BEDFEDDC9D5191061B6DF7E927996D4ADBACAD555A5189008A0E3403850F038C0EA6189767827B74374A23295F971A64D38FAF57B3FCB377EFC0BF8E3D9DF22B786F75D8B1F6E75C7590A5C2CBBE730BFC4EA6AB6BFDC64F71D3D0E1339550E0EAB70E570F2414C9592D5C33D24F253C34318923995A04F712E79F77186DE0DAE2B88AD5D804D21684924507C46A4A1A815A79D09151CC1B3F2E5CC5ABC48F5533C7FCDF31D0C5FCA04EFEED8FE621DBBF34B0FF001076A7C7EE93ED0EB2DE9B563DC951B2B74616A2BABF3D96C2EECDBF9CEBDC866E929686B2AF3D4B4E94195CD504694994A559F59D77326787B05CB1CEDB6CD05E7325ACD2C0F15048EA005C020A3517503C781191435E18B7EE7EE3B0CBAED768B94F115F2AA7CC1A1D43343FE53D6D3A32B19325EA62B006D795355BFA0E7F1EF2C442C0FF006783D431AAAA06B15AF58065610843D55382E4800CABAAFF0082413F8FCFBF0864CD13AF3321D3DE31D715C8D291C5544D6E2EACAC3FAFD41FF1F7474954D294E9C408E2A58631D77FC429BFE5613FDB8FF8AFBA6997ABF869FC43FD5F975FFFD21B70BBB68B174B4FE18E31508A35CA7962D6FE8785F7D26B9DB92E4B348E73E55EB082D3764B35410C605074B583BBB2F4C82386A6408A2C06A36FF6DF4F6946C5654EE415E9549CD37869A5CD075DBF7BEE35E63A99187F4D414FFBC8B1F6F2EC7B70194A1E9A1CD17BE7257EDEBA8FBDB70CB7F34AF6005AF228FF005ED6F7B3B3D92FC03AB8E67BA6C31EA1D6F6FE5AB14A35538561C82FFF001463EDD8F6EB74C8415E93CBBE4D27173D226AB769A990CB23233937D4C013FEDCFB56B6F08FC03A40DB8C8C4D243D02DDDBD75B27BEF64647AFFB07194D9ADB395107DE504E648D5A4A5A88AB29278A58248A7A7AAA3AC8239A2963659239515948201F64BBF72D6D5CC168F65B85B2BDBB52A0FC8D41C64508047CFA30DAF986FB6AB85B8B5B865945723E7823EC2304798C1E9AFE3F74BF50FC70C154607AE76AE3709475AED2E405246227C8CAF6D53646604CD9198E91EB9DA46B002F603D97EDFC8FCBFB6DB0B5B6B2458BD29C6BC6BEBC071F41E9D19DDF3B6EF79378D35DB193FC14E007A53D074AE93AEBA1A6DE555D8392E96EABDC5BCAA929D0E7F71EC5DAD9DCAC4D492D14B495095397C6D5EBACA27C6D3FDB4EE1E6A4110103C60B86A43EDF72847B87EF37D8AD5EF74E90EF1AB102A0E2A08AD40A1A54528080483E939EF7F7B6168BBB4E9056A42BB2D7EDA7964E381F3AE3A326BF203760548FF88CFE34411AA3549D0A83E881470AA3F00587B131DBAD0FE11FB3A281BEDC035F18D7EDFF0063AE23BEB72872E72528240057CEC56DCF1CD8F37FEBEFDFBBAD7FDF63F67551BDDC024899BF6FFB1D637EF4CFB924E4A7F55AF69D85BFA81EA3C1BFBD8B0B61FE863F675A3BC4DFEFE6AFDBFEC75962EF8CFC4A55725520162C40AA900B90071661F81EDB936DB676D4507ECEBCBBCCEB50266FDBD733DFBB93F194A8FF0063552FFD7CF751B55AF9A7F21D6FF7D5C7FBF9BF6FFB1D7FFFD36777CC71E382423FC1D3FE8F1F8F7D31EEA758067ECEB2C72E6828FF002673FF004F221FEF727BF777CFAA922B91D671265CFF00CA338FFA791FFC439F7EEEF3EB58F21D7BC998FC53BFFAFE48FF00E8FF007AEEF2EB7F975E12666FCD3B9FF90E21FF0045FBBAD750AF0EAB21ED3419EB987CA1FF00390BA8BFFAA43FF42B13ED6911D3073D20EF2735EBB8FEF3573AC7F5FAFF00B1FF000F6C316F24C7E5D28455C6A7FF000F4E8A1F4FA9C83FEB37FC40F695DA6AF6C78FB474A82C5E727F23D31E4BEFD6FF006FADCF3C0E2E7F1FA88F6EC26427BD283F2E93CEA80763D4FE7D258C9B9357A29E62B7FF00571FF87FB5FB5A7C3C7AF483F5ABE7D46A99775DBF6E9AA2DF92248FFDE8CBFD7DEFF4FD7A6CF8FE87A85E4DDBFF001C2A7E9FEAE3FF00A3EDEFDFA5EA3AF7EB7A1EB0492EF00A74535513C7FBB13FA8FEB20F7B022F51D597C5AF9F51BCDBD7FE54EA8FFD3C8BFE266F7BFD3F51D5BF57E7D7FFD9, N'黑龙江省', N'哈尔滨市', 5000, N'22202', CAST(N'2011-08-01T00:00:00.000' AS DateTime), CAST(N'2014-08-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tb_TrainNote] ([ID], [Stu_ID], [TrainFashion], [BeginDate], [EndDate], [Speciality], [TrainUnit], [KulturMemo], [Charge], [Effect]) VALUES (N'0001', N'0001', N'全天培训', CAST(N'2007-12-20T00:00:00.000' AS DateTime), CAST(N'2007-12-25T00:00:00.000' AS DateTime), N'排版', N'本公司', N'关于写作排版', 1000, N'很好')
SET IDENTITY_INSERT [dbo].[tb_UserPope] ON 

INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (118, N'0001', N'Folk', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (119, N'0001', N'EmployeeGenre', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (120, N'0001', N'Kultur', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (121, N'0001', N'Visage', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (122, N'0001', N'Branch', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (123, N'0001', N'Laborage', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (124, N'0001', N'Business', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (125, N'0001', N'Duthcall', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (126, N'0001', N'RPKind', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (127, N'0001', N'WordPad', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (128, N'0001', N'ClewBirthday', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (129, N'0001', N'ClewBargain', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (130, N'0001', N'Stuffbusic', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (131, N'0001', N'Stufind', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (132, N'0001', N'Stusum', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (133, N'0001', N'DayWordPad', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (134, N'0001', N'AddressBook', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (135, N'0001', N'Back', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (136, N'0001', N'Clear', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (137, N'0001', N'Counter', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (138, N'0001', N'WordBook', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (139, N'0001', N'NewLogon', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (140, N'0001', N'Setup', 1)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (187, N'0002', N'Folk', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (188, N'0002', N'EmployeeGenre', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (189, N'0002', N'Kultur', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (190, N'0002', N'Visage', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (191, N'0002', N'Branch', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (192, N'0002', N'Laborage', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (193, N'0002', N'Business', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (194, N'0002', N'Duthcall', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (195, N'0002', N'RPKind', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (196, N'0002', N'WordPad', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (197, N'0002', N'ClewBirthday', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (198, N'0002', N'ClewBargain', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (199, N'0002', N'Stuffbusic', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (200, N'0002', N'Stufind', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (201, N'0002', N'Stusum', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (202, N'0002', N'DayWordPad', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (203, N'0002', N'AddressBook', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (204, N'0002', N'Back', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (205, N'0002', N'Clear', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (206, N'0002', N'Counter', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (207, N'0002', N'WordBook', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (208, N'0002', N'NewLogon', 0)
INSERT [dbo].[tb_UserPope] ([AutoID], [ID], [PopeName], [Pope]) VALUES (209, N'0002', N'Setup', 0)
SET IDENTITY_INSERT [dbo].[tb_UserPope] OFF
SET IDENTITY_INSERT [dbo].[tb_Visage] ON 

INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (5, N'党员')
INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (6, N'团员')
INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (7, N'共产党员')
INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (8, N'普通人')
SET IDENTITY_INSERT [dbo].[tb_Visage] OFF
SET IDENTITY_INSERT [dbo].[tb_WordPad] ON 

INSERT [dbo].[tb_WordPad] ([ID], [WORDPAD]) VALUES (9, N'公司事务')
INSERT [dbo].[tb_WordPad] ([ID], [WORDPAD]) VALUES (10, N'人事部事务')
INSERT [dbo].[tb_WordPad] ([ID], [WORDPAD]) VALUES (11, N'技术部事务')
SET IDENTITY_INSERT [dbo].[tb_WordPad] OFF
INSERT [dbo].[tb_WordResume] ([ID], [Stu_ID], [BeginDate], [EndDate], [WordUnit], [Branch], [Business]) VALUES (N'0001', N'0001', CAST(N'2007-08-09T00:00:00.000' AS DateTime), CAST(N'2007-12-07T00:00:00.000' AS DateTime), N'普通程序员', N'长春', N'C#部门')
ALTER TABLE [dbo].[tb_Clew] ADD  CONSTRAINT [DF_tb_Clew_Fate]  DEFAULT ((0)) FOR [Fate]
GO
ALTER TABLE [dbo].[tb_Clew] ADD  CONSTRAINT [DF_tb_Clew_Kind]  DEFAULT ((2)) FOR [Kind]
GO
ALTER TABLE [dbo].[tb_Clew] ADD  CONSTRAINT [DF_tb_Clew_Unlock]  DEFAULT ((0)) FOR [Unlock]
GO