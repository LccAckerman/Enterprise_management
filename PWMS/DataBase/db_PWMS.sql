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

INSERT [dbo].[tb_AddressBook] ([ID], [Name], [Sex], [Phone], [QQ], [WordPhone], [E_Mail], [Handset]) VALUES (N'0001', N'С��', N'��', N'55558', N'522', N'897*****', N'88@4.com', N'1355555')
INSERT [dbo].[tb_AddressBook] ([ID], [Name], [Sex], [Phone], [QQ], [WordPhone], [E_Mail], [Handset]) VALUES (N'0002', N'С��', N'Ů', N'8585', N'5548', N'9828', N'88@*.com', N'131828')
SET IDENTITY_INSERT [dbo].[tb_Branch] ON 

INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (3, N'ASP.NET����')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (4, N'VB����')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (5, N'C#����')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (6, N'VC����')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (7, N'JSP����')
INSERT [dbo].[tb_Branch] ([ID], [BranchName]) VALUES (8, N'Java Web����')
SET IDENTITY_INSERT [dbo].[tb_Branch] OFF
SET IDENTITY_INSERT [dbo].[tb_Business] ON 

INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (5, N'����')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (6, N'������')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (7, N'���ž���')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (8, N'����Ա')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (9, N'����Ա')
INSERT [dbo].[tb_Business] ([ID], [BusinessName]) VALUES (10, N'��ͨԱ��')
SET IDENTITY_INSERT [dbo].[tb_Business] OFF
SET IDENTITY_INSERT [dbo].[tb_City] ON 

INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1, N'����ʡ', N'�Ϸ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (3, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (4, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (5, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (6, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (7, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (8, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (9, N'����ʡ', N'��Ϳ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (10, N'����ʡ', N'�ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (11, N'����ʡ', N'��Զ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (12, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (13, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (14, N'����ʡ', N'�ʶ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (15, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (16, N'����ʡ', N'��̨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (17, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (18, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (19, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (20, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (21, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (22, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (23, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (24, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (25, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (26, N'����ʡ', N'��Զ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (27, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (28, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (29, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (30, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (31, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (32, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (33, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (34, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (35, N'����ʡ', N'��կ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (36, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (37, N'����ʡ', N'캵���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (38, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (39, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (40, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (41, N'����ʡ', N'��Ȫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (42, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (43, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (44, N'����ʡ', N'®����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (45, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (46, N'����ʡ', N'�ɳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (47, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (48, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (49, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (50, N'����ʡ', N'Ǳɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (51, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (52, N'����ʡ', N'ȫ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (53, N'����ʡ', N'ʯ̨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (54, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (55, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (56, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (57, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (58, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (59, N'����ʡ', N'�Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (60, N'����ʡ', N'̫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (61, N'����ʡ', N'̫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (62, N'����ʡ', N'�쳤��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (63, N'����ʡ', N'ͩ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (64, N'����ʡ', N'ͭ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (65, N'����ʡ', N'ͭ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (66, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (67, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (68, N'����ʡ', N'��Ϊ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (69, N'����ʡ', N'�ߺ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (70, N'����ʡ', N'�ߺ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (71, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (72, N'����ʡ', N'���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (73, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (74, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (75, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (76, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (77, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (78, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (79, N'������', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (80, N'������', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (81, N'������', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (82, N'������', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (83, N'������', N'��ͷ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (84, N'������', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (85, N'������', N'ƽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (86, N'������', N'˳����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (87, N'������', N'ͨ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (88, N'������', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (89, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (90, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (91, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (92, N'����ʡ', N'��̩��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (93, N'����ʡ', N'��͡��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (94, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (95, N'����ʡ', N'�»���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (96, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (97, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (98, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (99, N'����ʡ', N'������')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (100, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (101, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (102, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (103, N'����ʡ', N'�ݰ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (104, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (105, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (106, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (107, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (108, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (109, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (110, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (111, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (112, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (113, N'����ʡ', N'��Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (114, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (115, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (116, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (117, N'����ʡ', N'�ϰ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (118, N'����ʡ', N'�Ͼ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (119, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (120, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (121, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (122, N'����ʡ', N'ƽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (123, N'����ʡ', N'ƽ̶��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (124, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (125, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (126, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (127, N'����ʡ', N'�ֳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (128, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (129, N'����ʡ', N'Ȫ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (130, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (131, N'����ʡ', N'ɳ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (132, N'����ʡ', N'�Ϻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (133, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (134, N'����ʡ', N'ʯʨ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (135, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (136, N'����ʡ', N'˳����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (137, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (138, N'����ʡ', N'̩����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (139, N'����ʡ', N'ͬ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (140, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (141, N'����ʡ', N'����ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (142, N'����ʡ', N'ϼ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (143, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (144, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (145, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (146, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (147, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (148, N'����ʡ', N'��̩��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (149, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (150, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (151, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (152, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (153, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (154, N'����ʡ', N'گ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (155, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (156, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (157, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (158, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (159, N'����ʡ', N'��������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (160, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (161, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (162, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (163, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (164, N'����ʡ', N'崲���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (165, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (166, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (167, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (168, N'����ʡ', N'�ػ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (169, N'����ʡ', N'�ʹ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (170, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (171, N'����ʡ', N'��̨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (172, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (173, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (174, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (175, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (176, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (177, N'����ʡ', N'��ͤ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (178, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (179, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (180, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (181, N'����ʡ', N'��ʯɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (182, N'����ʡ', N'��������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (183, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (184, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (185, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (186, N'����ʡ', N'��̩��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (187, N'����ʡ', N'��Զ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (188, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (189, N'����ʡ', N'��Ȫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (190, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (191, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (192, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (193, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (194, N'����ʡ', N'��̶��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (195, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (196, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (197, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (198, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (199, N'����ʡ', N'��̨��')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (200, N'����ʡ', N'¤����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (201, N'����ʡ', N'µ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (202, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (203, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (204, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (205, N'����ʡ', N'���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (206, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (207, N'����ʡ', N'ƽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (208, N'����ʡ', N'�ذ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (209, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (210, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (211, N'����ʡ', N'ɽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (212, N'����ʡ', N'�౱��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (213, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (214, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (215, N'����ʡ', N'��ף��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (216, N'����ʡ', N'ͨμ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (217, N'����ʡ', N'μԴ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (218, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (219, N'����ʡ', N'�䶼��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (220, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (221, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (222, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (223, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (224, N'����ʡ', N'�ĺ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (225, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (226, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (227, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (228, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (229, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (230, N'����ʡ', N'�żҴ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (231, N'����ʡ', N'��Ҵ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (232, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (233, N'����ʡ', N'��ԭ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (234, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (235, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (236, N'����ʡ', N'ׯ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (237, N'����ʡ', N'׿����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (238, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (239, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (240, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (241, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (242, N'�㶫ʡ', N'�κ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (243, N'�㶫ʡ', N'�ӻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (244, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (245, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (246, N'�㶫ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (247, N'�㶫ʡ', N'��ݸ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (248, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (249, N'�㶫ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (250, N'�㶫ʡ', N'��خ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (251, N'�㶫ʡ', N'��˳��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (252, N'�㶫ʡ', N'�⿪��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (253, N'�㶫ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (254, N'�㶫ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (255, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (256, N'�㶫ʡ', N'��Ҫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (257, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (258, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (259, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (260, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (261, N'�㶫ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (262, N'�㶫ʡ', N'��Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (263, N'�㶫ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (264, N'�㶫ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (265, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (266, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (267, N'�㶫ʡ', N'�ݶ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (268, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (269, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (270, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (271, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (272, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (273, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (274, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (275, N'�㶫ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (276, N'�㶫ʡ', N'�ֲ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (277, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (278, N'�㶫ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (279, N'�㶫ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (280, N'�㶫ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (281, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (282, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (283, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (284, N'�㶫ʡ', N'½����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (285, N'�㶫ʡ', N'½����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (286, N'�㶫ʡ', N'�޶���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (287, N'�㶫ʡ', N'ï����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (288, N'�㶫ʡ', N'÷��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (289, N'�㶫ʡ', N'÷����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (290, N'�㶫ʡ', N'�ϰ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (291, N'�㶫ʡ', N'�Ϻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (292, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (293, N'�㶫ʡ', N'ƽԶ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (294, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (295, N'�㶫ʡ', N'��Զ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (296, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (297, N'�㶫ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (298, N'�㶫ʡ', N'�ʻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (299, N'�㶫ʡ', N'��Դ��')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (300, N'�㶫ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (301, N'�㶫ʡ', N'��ͷ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (302, N'�㶫ʡ', N'��β��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (303, N'�㶫ʡ', N'�ع���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (304, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (305, N'�㶫ʡ', N'�����б�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (306, N'�㶫ʡ', N'ʼ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (307, N'�㶫ʡ', N'˳����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (308, N'�㶫ʡ', N'�Ļ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (309, N'�㶫ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (310, N'�㶫ʡ', N'̨ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (311, N'�㶫ʡ', N'��Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (312, N'�㶫ʡ', N'�⴨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (313, N'�㶫ʡ', N'�廪��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (314, N'�㶫ʡ', N'�·���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (315, N'�㶫ʡ', N'�»���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (316, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (317, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (318, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (319, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (320, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (321, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (322, N'�㶫ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (323, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (324, N'�㶫ʡ', N'Ӣ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (325, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (326, N'�㶫ʡ', N'�Ƹ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (327, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (328, N'�㶫ʡ', N'տ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (329, N'�㶫ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (330, N'�㶫ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (331, N'�㶫ʡ', N'�麣��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (332, N'�㶫ʡ', N'�Ͻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (422, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (423, N'����ʡ', N'��˳��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (424, N'����ʡ', N'�Ͻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (425, N'����ʡ', N'᯹���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (426, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (427, N'����ʡ', N'�ӽ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (428, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (429, N'����ʡ', N'��կ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (430, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (431, N'����ʡ', N'�½���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (432, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (433, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (434, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (435, N'����ʡ', N'��Ȫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (436, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (437, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (438, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (439, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (440, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (441, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (442, N'����ʡ', N'��ɳ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (443, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (444, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (445, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (446, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (447, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (448, N'����ʡ', N'����ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (449, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (450, N'����ʡ', N'�齭��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (451, N'����ʡ', N'��̶��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (452, N'����ʡ', N'��Ӻ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (453, N'����ʡ', N'��������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (454, N'����ʡ', N'ƽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (455, N'����ʡ', N'ƽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (456, N'����ʡ', N'�հ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (457, N'����ʡ', N'�ն���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (458, N'����ʡ', N'ǭ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (459, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (460, N'����ʡ', N'��¡��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (461, N'����ʡ', N'�ʻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (462, N'����ʡ', N'�Ž���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (463, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (464, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (465, N'����ʡ', N'ʩ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (466, N'����ʡ', N'ʯ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (467, N'����ʡ', N'ˮ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (468, N'����ʡ', N'˼����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (469, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (470, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (471, N'����ʡ', N'̨����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (472, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (473, N'����ʡ', N'ͩ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (474, N'����ʡ', N'ͭ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (475, N'����ʡ', N'��ɽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (476, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (477, N'����ʡ', N'�Ͱ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (478, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (479, N'����ʡ', N'Ϣ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (480, N'����ʡ', N'ϰˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (481, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (482, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (483, N'����ʡ', N'�غ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (484, N'����ʡ', N'ӡ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (485, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (486, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (487, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (488, N'����ʡ', N'��Զ��')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (489, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (490, N'����ʡ', N'֯����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (491, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (492, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (493, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (494, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (495, N'����ʡ', N'��ɳ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (496, N'����ʡ', N'��ͤ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (497, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (498, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (499, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (500, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (501, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (502, N'����ʡ', N'�ֶ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (503, N'����ʡ', N'�ٸ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (504, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (505, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (506, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (507, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (508, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (509, N'����ʡ', N'ͨʲ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (510, N'����ʡ', N'�Ͳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (511, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (512, N'����ʡ', N'�Ĳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (513, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (514, N'�ӱ�ʡ', N'ʯ��ׯ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (515, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (516, N'�ӱ�ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (517, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (518, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (519, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (520, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (521, N'�ӱ�ʡ', N'��ͷ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (522, N'�ӱ�ʡ', N'��Ұ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (523, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (524, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (525, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (526, N'�ӱ�ʡ', N'�ɰ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (527, N'�ӱ�ʡ', N'�е���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (528, N'�ӱ�ʡ', N'�е���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (529, N'�ӱ�ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (530, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (531, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (532, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (533, N'�ӱ�ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (534, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (535, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (536, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (537, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (538, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (539, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (540, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (541, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (542, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (543, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (544, N'�ӱ�ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (545, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (546, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (547, N'�ӱ�ʡ', N'޻����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (548, N'�ӱ�ʡ', N'��Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (549, N'�ӱ�ʡ', N'�̰���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (550, N'�ӱ�ʡ', N'�ʳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (551, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (552, N'�ӱ�ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (553, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (554, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (555, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (556, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (557, N'�ӱ�ʡ', N'�Ӽ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (558, N'�ӱ�ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (559, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (560, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (561, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (562, N'�ӱ�ʡ', N'��¹��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (563, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (564, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (565, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (566, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (567, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (568, N'�ӱ�ʡ', N'��¹��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (569, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (570, N'�ӱ�ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (571, N'�ӱ�ʡ', N'�ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (572, N'�ӱ�ʡ', N'�Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (573, N'�ӱ�ʡ', N'�ȷ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (574, N'�ӱ�ʡ', N'��ͤ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (575, N'�ӱ�ʡ', N'���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (576, N'�ӱ�ʡ', N'�ٳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (577, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (578, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (579, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (580, N'�ӱ�ʡ', N'¡����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (581, N'�ӱ�ʡ', N'¡Ң��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (582, N'�ӱ�ʡ', N'¬����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (583, N'�ӱ�ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (584, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (585, N'�ӱ�ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (586, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (587, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (588, N'�ӱ�ʡ', N'�ϴ���')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (589, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (590, N'�ӱ�ʡ', N'�Ϲ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (591, N'�ӱ�ʡ', N'�Ϻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (592, N'�ӱ�ʡ', N'��Ƥ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (593, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (594, N'�ӱ�ʡ', N'ƽȪ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (595, N'�ӱ�ʡ', N'ƽɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (596, N'�ӱ�ʡ', N'ƽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (597, N'�ӱ�ʡ', N'Ǩ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (598, N'�ӱ�ʡ', N'Ǩ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (599, N'�ӱ�ʡ', N'�ػʵ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (600, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (601, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (602, N'�ӱ�ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (603, N'�ӱ�ʡ', N'��Է��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (604, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (605, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (606, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (607, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (608, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (609, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (610, N'�ӱ�ʡ', N'�ݳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (611, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (612, N'�ӱ�ʡ', N'ɳ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (613, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (614, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (615, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (616, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (617, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (618, N'�ӱ�ʡ', N'�ƺ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (619, N'�ӱ�ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (620, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (621, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (622, N'�ӱ�ʡ', N'��ȫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (623, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (624, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (625, N'�ӱ�ʡ', N'Χ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (626, N'�ӱ�ʡ', N'ε��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (627, N'�ӱ�ʡ', N'κ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (628, N'�ӱ�ʡ', N'�İ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (629, N'�ӱ�ʡ', N'�޼���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (630, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (631, N'�ӱ�ʡ', N'�䰲��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (632, N'�ӱ�ʡ', N'��ǿ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (633, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (634, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (635, N'�ӱ�ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (636, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (637, N'�ӱ�ʡ', N'�³���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (638, N'�ӱ�ʡ', N'�º���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (639, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (640, N'�ӱ�ʡ', N'��¡��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (641, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (642, N'�ӱ�ʡ', N'��̨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (643, N'�ӱ�ʡ', N'��̨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (644, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (645, N'�ӱ�ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (646, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (647, N'�ӱ�ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (648, N'�ӱ�ʡ', N'��ԭ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (649, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (650, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (651, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (652, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (653, N'�ӱ�ʡ', N'Ԫ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (654, N'�ӱ�ʡ', N'�޻���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (655, N'�ӱ�ʡ', N'��ǿ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (656, N'�ӱ�ʡ', N'�ű���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (657, N'�ӱ�ʡ', N'�żҿ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (658, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (659, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (660, N'�ӱ�ʡ', N'��¹��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (661, N'�ӱ�ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (662, N'�ӱ�ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (663, N'����ʡ', N'֣����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (664, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (665, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (666, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (667, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (668, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (669, N'����ʡ', N'��ԫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (670, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (671, N'����ʡ', N'�Ƿ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (672, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (673, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (674, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (675, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (676, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (677, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (678, N'����ʡ', N'��ʼ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (679, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (680, N'����ʡ', N'�ױ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (681, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (682, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (683, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (684, N'����ʡ', N'�괨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (685, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (686, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (687, N'����ʡ', N'��Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (688, N'����ʡ', N'ۣ��')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (689, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (690, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (691, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (692, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (693, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (694, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (695, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (696, N'����ʡ', N'�鱦��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (697, N'����ʡ', N'¬����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (698, N'����ʡ', N'³ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (699, N'����ʡ', N'¹����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (700, N'����ʡ', N'�ﴨ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (701, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (702, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (703, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (704, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (705, N'����ʡ', N'�Ͻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (706, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (707, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (708, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (709, N'����ʡ', N'��Ȩ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (710, N'����ʡ', N'�ڻ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (711, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (712, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (713, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (714, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (715, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (716, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (717, N'����ʡ', N'ƽ��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (718, N'����ʡ', N'ƽ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (719, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (720, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (721, N'����ʡ', N'���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (722, N'����ʡ', N'���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (723, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (724, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (725, N'����ʡ', N'ȷɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (726, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (727, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (728, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (729, N'����ʡ', N'����Ͽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (730, N'����ʡ', N'�̳���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (731, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (732, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (733, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (734, N'����ʡ', N'�ϲ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (735, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (736, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (737, N'����ʡ', N'�ų���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (738, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (739, N'����ʡ', N'���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (740, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (741, N'����ʡ', N'̨ǰ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (742, N'����ʡ', N'̫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (743, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (744, N'����ʡ', N'�ƺ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (745, N'����ʡ', N'ͨ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (746, N'����ʡ', N'ͩ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (747, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (748, N'����ʡ', N'ξ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (749, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (750, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (751, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (752, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (753, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (754, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (755, N'����ʡ', N'��Ͽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (756, N'����ʡ', N'Ϣ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (757, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (758, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (759, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (760, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (761, N'����ʡ', N'�°���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (762, N'����ʡ', N'�²���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (763, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (764, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (765, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (766, N'����ʡ', N'��Ұ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (767, N'����ʡ', N'��֣��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (768, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (769, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (770, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (771, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (772, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (773, N'����ʡ', N'۳����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (774, N'����ʡ', N'�ӽ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (775, N'����ʡ', N'۱����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (776, N'����ʡ', N'۱ʦ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (777, N'����ʡ', N'Ҷ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (778, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (779, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (780, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (781, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (782, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (783, N'����ʡ', N'�ݳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (784, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (785, N'����ʡ', N'ԭ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (786, N'����ʡ', N'�ϳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (787, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (788, N'����ʡ', N'������')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (789, N'����ʡ', N'��Ĳ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (790, N'����ʡ', N'�ܿ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (791, N'����ʡ', N'פ�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (792, N'������ʡ', N'��������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (793, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (794, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (795, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (796, N'������ʡ', N'��Ȫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (797, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (798, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (799, N'������ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (800, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (801, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (802, N'������ʡ', N'�¶���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (803, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (804, N'������ʡ', N'�Ŷ�������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (805, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (806, N'������ʡ', N'��Զ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (807, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (808, N'������ʡ', N'��ԣ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (809, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (810, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (811, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (812, N'������ʡ', N'�׸���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (813, N'������ʡ', N'�ں���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (814, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (815, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (816, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (817, N'������ʡ', N'�봨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (818, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (819, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (820, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (821, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (822, N'������ʡ', N'��ľ˹��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (823, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (824, N'������ʡ', N'�˶���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (825, N'������ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (826, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (827, N'������ʡ', N'�ֵ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (828, N'������ʡ', N'�ֿ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (829, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (830, N'������ʡ', N'�ܱ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (831, N'������ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (832, N'������ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (833, N'������ʡ', N'Į����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (834, N'������ʡ', N'ĵ������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (835, N'������ʡ', N'ľ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (836, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (837, N'������ʡ', N'ګ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (838, N'������ʡ', N'�۽���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (839, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (840, N'������ʡ', N'��̨����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (841, N'������ʡ', N'���������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (842, N'������ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (843, N'������ʡ', N'�찲��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (844, N'������ʡ', N'�ĺ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (845, N'������ʡ', N'��־��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (846, N'������ʡ', N'˫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (847, N'������ʡ', N'˫Ѽɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (848, N'������ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (849, N'������ʡ', N'��Һ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (850, N'������ʡ', N'�绯��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (851, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (852, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (853, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (854, N'������ʡ', N'̩����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (855, N'������ʡ', N'��ԭ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (856, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (857, N'������ʡ', N'ͨ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (858, N'������ʡ', N'ͬ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (859, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (860, N'������ʡ', N'�峣��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (861, N'������ʡ', N'���������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (862, N'������ʡ', N'ѷ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (863, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (864, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (865, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (866, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (867, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (868, N'������ʡ', N'�ض���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (869, N'������ʡ', N'��Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (870, N'������ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (871, N'����ʡ', N'�人��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (872, N'����ʡ', N'��½��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (873, N'����ʡ', N'�Ͷ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (874, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (875, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (876, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (877, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (878, N'����ʡ', N'��ұ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (879, N'����ʡ', N'��������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (880, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (881, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (882, N'����ʡ', N'��ʩ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (883, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (884, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (885, N'����ʡ', N'�ȳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (886, N'����ʡ', N'��ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (887, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (888, N'����ʡ', N'�׷���')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (889, N'����ʡ', N'�찲��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (890, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (891, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (892, N'����ʡ', N'��÷��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (893, N'����ʡ', N'��ʯ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (894, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (895, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (896, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (897, N'����ʡ', N'��ʼ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (898, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (899, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (900, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (901, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (902, N'����ʡ', N'�Ϻӿ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (903, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (904, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (905, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (906, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (907, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (908, N'����ʡ', N'ޭ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (909, N'����ʡ', N'Ǳ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (910, N'����ʡ', N'ɳ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (911, N'����ʡ', N'��ũ������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (912, N'����ʡ', N'ʮ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (913, N'����ʡ', N'ʯ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (914, N'����ʡ', N'�ɳ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (915, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (916, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (917, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (918, N'����ʡ', N'ͨ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (919, N'����ʡ', N'ͨɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (920, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (921, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (922, N'����ʡ', N'�人�в̵���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (923, N'����ʡ', N'��Ѩ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (924, N'����ʡ', N'�ˮ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (925, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (926, N'����ʡ', N'�̷���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (927, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (928, N'����ʡ', N'�差��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (929, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (930, N'����ʡ', N'Т����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (931, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (932, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (933, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (934, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (935, N'����ʡ', N'�˲���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (936, N'����ʡ', N'�˲���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (937, N'����ʡ', N'�˳���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (938, N'����ʡ', N'Ӧ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (939, N'����ʡ', N'Ӣɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (940, N'����ʡ', N'Զ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (941, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (942, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (943, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (944, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (945, N'����ʡ', N'֦����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (946, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (947, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (948, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (949, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (950, N'����ʡ', N'��ɳ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (951, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (952, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (953, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (954, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (955, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (956, N'����ʡ', N'��ɳ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (957, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (958, N'����ʡ', N'�ǲ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (959, N'����ʡ', N'��ӹ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (960, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (961, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (962, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (963, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (964, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (965, N'����ʡ', N'�齭��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (966, N'����ʡ', N'��ԫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (967, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (968, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (969, N'����ʡ', N'��ͬ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (970, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (971, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (972, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (973, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (974, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (975, N'����ʡ', N'��ˮ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (976, N'����ʡ', N'��ˮ̲��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (977, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (978, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (979, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (980, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (981, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (982, N'����ʡ', N'¦����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (983, N'����ʡ', N'��Ϫ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (984, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (985, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (986, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (987, N'����ʡ', N'��Զ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (988, N'����ʡ', N'ƽ����')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (989, N'����ʡ', N'���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (990, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (991, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (992, N'����ʡ', N'�۶���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (993, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (994, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (995, N'����ʡ', N'ʯ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (996, N'����ʡ', N'˫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (997, N'����ʡ', N'˫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (998, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (999, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1000, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1001, N'����ʡ', N'��˳��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1002, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1003, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1004, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1005, N'����ʡ', N'�佭��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1006, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1007, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1008, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1009, N'����ʡ', N'�ƽ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1010, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1011, N'����ʡ', N'��ͼ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1012, N'����ʡ', N'�׳���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1013, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1014, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1015, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1016, N'����ʡ', N'�»���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1017, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1018, N'����ʡ', N'�ػ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1019, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1020, N'����ʡ', N'��������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1021, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1022, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1023, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1024, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1025, N'����ʡ', N'��ɽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1026, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1027, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1028, N'����ʡ', N'�Ժ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1029, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1030, N'����ʡ', N'��̨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1031, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1032, N'����ʡ', N'��Դ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1033, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1034, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1035, N'����ʡ', N'÷�ӿ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1036, N'����ʡ', N'ũ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1037, N'����ʡ', N'��ʯ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1038, N'����ʡ', N'Ǭ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1039, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1040, N'����ʡ', N'˫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1041, N'����ʡ', N'˫����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1042, N'����ʡ', N'��ƽ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1043, N'����ʡ', N'��ԭ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1044, N'����ʡ', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1045, N'����ʡ', N'ͨ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1046, N'����ʡ', N'ͨ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1047, N'����ʡ', N'ͨ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1048, N'����ʡ', N'ͼ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1049, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1050, N'����ʡ', N'�Ӽ���')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1051, N'����ʡ', N'��ͨ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1052, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1053, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1054, N'����ʡ', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1862, N'�����', N'�������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1863, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1864, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1865, N'�����', N'�����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1866, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1867, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1868, N'�����', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1869, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1870, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1871, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1872, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1873, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (1874, N'�����', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2218, N'������', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2219, N'������', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2220, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2221, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2222, N'������', N'������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2223, N'������', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2224, N'������', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2225, N'������', N'��ɽ')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2226, N'������', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2228, N'����ʡ', N'��̨��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2229, N'����ʡ', N'ׯ����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2230, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2231, N'������ʡ', N'���˰������')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2232, N'����ʡ', N'�Ƹ�')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2233, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2234, N'����ʡ', N'��̶')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2235, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2236, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2237, N'����ʡ', N'����')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2238, N'����ʡ', N'�żҽ�')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2239, N'����ʡ', N'��«��')
GO
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2240, N'�Ĵ�ʡ', N'�ﴨ��')
INSERT [dbo].[tb_City] ([ID], [BeAware], [City]) VALUES (2250, N'�㽭ʡ', N'̨��')
SET IDENTITY_INSERT [dbo].[tb_City] OFF
INSERT [dbo].[tb_Clew] ([ID], [Fate], [Kind], [Unlock]) VALUES (1, 5, 1, 1)
INSERT [dbo].[tb_Clew] ([ID], [Fate], [Kind], [Unlock]) VALUES (2, 2, 2, 1)
INSERT [dbo].[tb_DayWordPad] ([ID], [BlotterDate], [BlotterSort], [Motif], [Wordpad]) VALUES (N'0002', CAST(N'2007-12-07T00:00:00.000' AS DateTime), N'���²�����', N'�������µ���', N'С�������VB����
С��������C#����
С��������.net����')
SET IDENTITY_INSERT [dbo].[tb_Duthcall] ON 

INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (4, N'ר��')
INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (5, N'����')
INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (6, N'��ѧ��')
INSERT [dbo].[tb_Duthcall] ([ID], [DuthcallName]) VALUES (7, N'����ʦ')
SET IDENTITY_INSERT [dbo].[tb_Duthcall] OFF
SET IDENTITY_INSERT [dbo].[tb_EmployeeGenre] ON 

INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (4, N'��ͨԱ��')
INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (5, N'��ʽԱ��')
INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (6, N'������Ա')
INSERT [dbo].[tb_EmployeeGenre] ([ID], [EmployeeName]) VALUES (7, N'ʵϰ��Ա')
SET IDENTITY_INSERT [dbo].[tb_EmployeeGenre] OFF
INSERT [dbo].[tb_Family] ([ID], [Stu_ID], [LeaguerName], [Nexus], [BirthDate], [WordUnit], [Business], [Visage], [phone]) VALUES (N'0001', N'0001', N'������', N'����', CAST(N'1959-08-08T00:00:00.000' AS DateTime), N'WXˮ����', N'����ʦ', N'��Ա', N'25')
INSERT [dbo].[tb_Family] ([ID], [Stu_ID], [LeaguerName], [Nexus], [BirthDate], [WordUnit], [Business], [Visage], [phone]) VALUES (N'0002', N'0001', N'��Ůʿ', N'ĸ��', CAST(N'1960-09-09T00:00:00.000' AS DateTime), N'��', N'��ҵ', N'��', N'5151')
SET IDENTITY_INSERT [dbo].[tb_Folk] ON 

INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (8, N'����')
INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (11, N'����')
INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (14, N'����')
INSERT [dbo].[tb_Folk] ([ID], [FolkName]) VALUES (19, N'����')
SET IDENTITY_INSERT [dbo].[tb_Folk] OFF
INSERT [dbo].[tb_Individual] ([ID], [Memo]) VALUES (N'0001', N'����Ŭ��������')
SET IDENTITY_INSERT [dbo].[tb_Kultur] ON 

INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (4, N'��ѧ')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (5, N'����')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (6, N'��ר')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (7, N'��ר')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (8, N'ר��')
INSERT [dbo].[tb_Kultur] ([ID], [KulturName]) VALUES (9, N'����')
SET IDENTITY_INSERT [dbo].[tb_Kultur] OFF
SET IDENTITY_INSERT [dbo].[tb_Laborage] ON 

INSERT [dbo].[tb_Laborage] ([ID], [LaborageName]) VALUES (4, N'���乤��')
INSERT [dbo].[tb_Laborage] ([ID], [LaborageName]) VALUES (5, N'�̶�����')
INSERT [dbo].[tb_Laborage] ([ID], [LaborageName]) VALUES (6, N'��������')
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
INSERT [dbo].[tb_RANDP] ([ID], [Stu_ID], [RPKind], [RPDate], [SealMan], [QuashDate], [QuashWhys]) VALUES (N'0001', N'0001', N'�ֽ�', CAST(N'2007-12-07T00:00:00.000' AS DateTime), N'������', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[tb_RPKind] ON 

INSERT [dbo].[tb_RPKind] ([ID], [RPKind]) VALUES (7, N'����')
INSERT [dbo].[tb_RPKind] ([ID], [RPKind]) VALUES (8, N'ͨ������')
INSERT [dbo].[tb_RPKind] ([ID], [RPKind]) VALUES (9, N'�ֽ�')
SET IDENTITY_INSERT [dbo].[tb_RPKind] OFF
INSERT [dbo].[tb_Stuffbasic] ([ID], [StuffName], [Folk], [Birthday], [Age], [Kultur], [Marriage], [Sex], [Visage], [IDCard], [workdate], [WorkLength], [Employee], [Business], [Laborage], [Branch], [Duthcall], [Phone], [Handset], [School], [Speciality], [GraduateDate], [Address], [Photo], [BeAware], [City], [M_Pay], [Bank], [Pact_B], [Pact_E], [Pact_Y]) VALUES (N'0001', N'��С��', N'����', CAST(N'1980-08-09T00:00:00.000' AS DateTime), 28, N'ר��', N'��', N'��', N'������Ա', N'6363***', CAST(N'2004-12-08T00:00:00.000' AS DateTime), 3, N'��ͨԱ��', N'������', N'�̶�����', N'C#����', N'ר��', N'555****', N'1388***', N'XX��ѧ', N'�����', CAST(N'2003-05-05T00:00:00.000' AS DateTime), N'������', 0xFFD8FFE000104A46494600010201006000600000FFE10A9B4578696600004D4D002A000000080007011200030000000100010000011A00050000000100000062011B0005000000010000006A012800030000000100020000013100020000001B0000007201320002000000140000008D8769000400000001000000A4000000D00000006000000001000000600000000141646F62652050686F746F73686F702043532057696E646F777300323030373A30323A32382030383A34323A3039000000000003A001000300000001FFFF0000A00200040000000100000070A003000400000001000000660000000000000006010300030000000100060000011A0005000000010000011E011B0005000000010000012601280003000000010002000002010004000000010000012E0202000400000001000009650000000000000048000000010000004800000001FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080066007003012200021101031101FFDD00040007FFC4013F0000010501010101010100000000000000030001020405060708090A0B0100010501010101010100000000000000010002030405060708090A0B1000010401030204020507060805030C33010002110304211231054151611322718132061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204040304050607070605350100021103213112044151617122130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00EE884D014C8D528576DAA62C3684FB42784F095A384B1DA12DA13C25012B57095B684B684F013C256AE12C7684B685284A12B570963B425B429425095AB84B1DA12DA14A1284AD5C25FFD0EF884A1176A7DAAD713170A1DA96D28DB52DA9712B85AEF218D2E7180392878F6B6EA596B4821C391A89E1DFF4955FAC394CC6C470B0C54E69170EFE93BF476BEB3FBF4FA8DB166FD53EA2FBC64605F02DA1C6C64770F2464347FA4F4F2FD4F7D7FA3F4EFA5212D40EEB65F93D04A694FB52DA9CB2CAD2536AA509E11B56AC354FAA9425095AB563052829F70096E096AA7FFFD1F4CF4DA97A610BD64BD652F0C91612FA612F4C217AC97AC870C9561E47FC6266D38F56252D8379B37B41E401EC7133ED7D4FDDE9DAC583D06C762751A722B1BBD290411AFA6F1B2DAEC74FD2AF6FB3FE12AFF48B5FFC6661DD6E162750AEA1657836975EF6C9B1ACB00AF76D1F4E8DFF00CFFE7FF37FCB5CE744EA15B6DAC870F52A980E7435F07F9BB5F3B7D3DDF9FF00F6E7A6A1CD2944823A2E84632B05F4E6B9AE01CD32D2241F10525CE7D58FAC9466E765748B1D17D4F7BF1CC8735D5925CEAEAB6B73D96B6AFCCFF835D30680ADC2625107BB5E50A243184A14A1284EB470B18557A8E57D97072AE6B9A2CA28B2E68247E635C5AEDBFBBBD5C85E6BFE32FABBF13ACB71A9B63D4C115DA1A78DD63ECD8F1FCB635A81950488DBE8353C5D55773356DAD6BDA7C9C37053DA554FAA973B27EAD74CBDE36B9F8D588FEA8F4C7FD42D5DA121357B6FFFD2F402529500E84B72B54C5619CA52A3B92DC8D2AD93EB6D8C731E0398F05AE69E083A1695E3FF005ABA6B7A17567E210063583D6C679832C32361DC776EA9EEB1967F62D5EBE0AE6FEBF7411D67A1586A6CE5E14DF8E472607E9AAFFAE57FF827A6A2C90E21E2174654F9F9CDBDD6E1E7D7921B94E358A98C686B836AD2921823FA9FA4FE77FEBABD5BA3754FDA782DBDCDF4AF69D97D5A8DAF8DDDFF0035CD76E5E33D1F0F0F27DD7E4B719BB49173DA4B1AF8258C73C07FBDEEFCCFFC11775F517AC5D6F54B312EB7D4AB2690EC7DC4CCD5EEDAD040F6FA2F7FBFFE0EB50E1918CC47A499320E28DF50F752529296B3E49F45698115F91563516645EF15D3534BEC7BB401A395E0FF0059FAD3BAEF59C8EA45A58CB61B530EA431A3631BFF007E5D7FF8D6EBD7BF2EBE854B8B71EA6B6DC903F3DEEF756D3FC8A99FF822E13A7E0DDD43A863E150375B91636B68FEB1E7FB2A2C92B3C217C456AFB97D53DF57D58E96C7723199F88DCDFF00A2E5ABEA14115B296B6AADA1B5D6D0D63468035A36B5ADFEC84F2A6028058645FFD3EE77A5EA218288D0215E21802B7A8D79355AEB1B5BB71A5DB2C8ECEDADB36FF9963172F93D572BEACE1E4F4FCADD680CB1FD232E25A5A4C558B93F4B65B88FB18CDFFCD5B47A7FF16B6BEAF63538FD2686D770CA73C6FBB2410EF52D77F3D67A9F9FEFFD1B3FE0D9E9A8C4AE543A7CDE0B8C685FD8E98727DC865C02424F8A752D7C93AF7D5CC9C6EB999D2AB2CA7A7973B368B1ED86B5AE6B9FE936DDA36FB87A1E9EF4DF57BA83BA76774DBCD85831DE05D2435A58F76C7079FF00475B1DBDEBAFFF0018745ACC5C5CDA6A36383CE3DA409218F1B87B5D35FD3F6B3D9EA6FB5716F38151B31AD04BB6C9A87B5EDF6FB6DF57F48DF7D8EFE6AC7FF6151CA0C327FCE0D981E28D3ED1A7238F15C17D70FF001915E16FC1E885B6E4096D997CB19DBF41FE95FF00CAFA0B9CEA1FE307AC647441D16AACB2D60F4EECB065EFA5BA35BE981FA373ABD9EB3F7AE530F0B2BA866578788C36E45CE0D634773E7FF92539CB7A458842B74BBBA9757CE0D26CCDCDBDD0D925EF713F9BFEBEC62F54FA9BF5168E861B9F9DB6EEA84691AB299FA4DABF7ADFDEB7FEDB567EA9FD52C1FABB8E1EE8BBA958D8BB23B09E6AA3F759FF009F1741EA05263C55A9DD6CA7D0327729940D9AA6DEA6A596FF00FFD4E868EA61CE00F0B47ED4C811C2E599735A04728A339E3405699C765A51CB4357A27DD53E37B5AEDBA8900C14FF006B1E2B9CFB7D9D8A433EC3CA1ED27DE0DFFAC1894F56C17E2DAF735AE83B9861C08D5AE6FF002979CE474EFAE38B926BC7CCC87D6090C78BDE06D9D3735CEFDD5DABB31E7BA19BA4CA12E5C4B724792867A784CDC4FACA31DD91D46DBAD65643A1F739E5BAFD3AD9BCFB90BD2A2FB6B6634BC3EB1EDD665A3DEEB08F8FB976F9D8D4675068BDBBAB7723E1AA6E9F8587D3EB2CC7AC341E63BFC5413E48CA5A4B4A65873600D63AB47EACE4741E9F95996DDB3ED34D50DF50EB2DF73E1AEF6EF737FF0051AB1F53FED195F58B23ABB3A7B30F12FA9ECDFB1C24B8B6C63AA2EFDEFA2FB1BF4D59FB3601B8DEEC6A9F69FCF731AE3A7F587F255DFDA1778A6E1F8798643396432F0E89CBCE4671A10AF17A1DFE696F1E2B9DFB7DBE297DBECFDE573DBF16BFB81E8B70F14B70F15CF0CFB07E71FBD2FDA16FEF25ED9EE9F74767FFD58FBFC1297F82F2C496C398FAA4BFC1297F82F2B49243EA92FF0004BDEBCAD24828BEA9EE525E52924A0FAA3B77643FD2782F2F492082FA7936F8269BBC1798A48A9F4E26EF029A6FF02BCC92494FFFD9FFED116850686F746F73686F7020332E30003842494D0425000000000010000000000000000000000000000000003842494D03ED000000000010006000000001000200600000000100023842494D042600000000000E000000000000000000003F8000003842494D040D0000000000040000001E3842494D04190000000000040000001E3842494D03F3000000000009000000000000000001003842494D040A00000000000100003842494D271000000000000A000100000000000000023842494D03F5000000000048002F66660001006C66660006000000000001002F6666000100A1999A0006000000000001003200000001005A00000006000000000001003500000001002D000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0408000000000010000000010000024000000240000000003842494D041E000000000004000000003842494D041A00000000033D0000000600000000000000000000006600000070000000040066006A007400700000000100000000000000000000000000000000000000010000000000000000000000700000006600000000000000000000000000000000010000000000000000000000000000000000000010000000010000000000006E756C6C0000000200000006626F756E64734F626A6300000001000000000000526374310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000006600000000526768746C6F6E670000007000000006736C69636573566C4C73000000014F626A6300000001000000000005736C6963650000001200000007736C69636549446C6F6E67000000000000000767726F757049446C6F6E6700000000000000066F726967696E656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E6572617465640000000054797065656E756D0000000A45536C6963655479706500000000496D672000000006626F756E64734F626A6300000001000000000000526374310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000006600000000526768746C6F6E67000000700000000375726C54455854000000010000000000006E756C6C54455854000000010000000000004D7367655445585400000001000000000006616C74546167544558540000000100000000000E63656C6C54657874497348544D4C626F6F6C010000000863656C6C546578745445585400000001000000000009686F727A416C69676E656E756D0000000F45536C696365486F727A416C69676E0000000764656661756C740000000976657274416C69676E656E756D0000000F45536C69636556657274416C69676E0000000764656661756C740000000B6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F6E6700000000003842494D042800000000000C000000013FF00000000000003842494D041100000000000101003842494D0414000000000004000000023842494D040C00000000098100000001000000700000006600000150000085E00000096500180001FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080066007003012200021101031101FFDD00040007FFC4013F0000010501010101010100000000000000030001020405060708090A0B0100010501010101010100000000000000010002030405060708090A0B1000010401030204020507060805030C33010002110304211231054151611322718132061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204040304050607070605350100021103213112044151617122130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00EE884D014C8D528576DAA62C3684FB42784F095A384B1DA12DA13C25012B57095B684B684F013C256AE12C7684B685284A12B570963B425B429425095AB84B1DA12DA14A1284AD5C25FFD0EF884A1176A7DAAD713170A1DA96D28DB52DA9712B85AEF218D2E7180392878F6B6EA596B4821C391A89E1DFF4955FAC394CC6C470B0C54E69170EFE93BF476BEB3FBF4FA8DB166FD53EA2FBC64605F02DA1C6C64770F2464347FA4F4F2FD4F7D7FA3F4EFA5212D40EEB65F93D04A694FB52DA9CB2CAD2536AA509E11B56AC354FAA9425095AB563052829F70096E096AA7FFFD1F4CF4DA97A610BD64BD652F0C91612FA612F4C217AC97AC870C9561E47FC6266D38F56252D8379B37B41E401EC7133ED7D4FDDE9DAC583D06C762751A722B1BBD290411AFA6F1B2DAEC74FD2AF6FB3FE12AFF48B5FFC6661DD6E162750AEA1657836975EF6C9B1ACB00AF76D1F4E8DFF00CFFE7FF37FCB5CE744EA15B6DAC870F52A980E7435F07F9BB5F3B7D3DDF9FF00F6E7A6A1CD2944823A2E84632B05F4E6B9AE01CD32D2241F10525CE7D58FAC9466E765748B1D17D4F7BF1CC8735D5925CEAEAB6B73D96B6AFCCFF835D30680ADC2625107BB5E50A243184A14A1284EB470B18557A8E57D97072AE6B9A2CA28B2E68247E635C5AEDBFBBBD5C85E6BFE32FABBF13ACB71A9B63D4C115DA1A78DD63ECD8F1FCB635A81950488DBE8353C5D55773356DAD6BDA7C9C37053DA554FAA973B27EAD74CBDE36B9F8D588FEA8F4C7FD42D5DA121357B6FFFD2F402529500E84B72B54C5619CA52A3B92DC8D2AD93EB6D8C731E0398F05AE69E083A1695E3FF005ABA6B7A17567E210063583D6C679832C32361DC776EA9EEB1967F62D5EBE0AE6FEBF7411D67A1586A6CE5E14DF8E472607E9AAFFAE57FF827A6A2C90E21E2174654F9F9CDBDD6E1E7D7921B94E358A98C686B836AD2921823FA9FA4FE77FEBABD5BA3754FDA782DBDCDF4AF69D97D5A8DAF8DDDFF0035CD76E5E33D1F0F0F27DD7E4B719BB49173DA4B1AF8258C73C07FBDEEFCCFFC11775F517AC5D6F54B312EB7D4AB2690EC7DC4CCD5EEDAD040F6FA2F7FBFFE0EB50E1918CC47A499320E28DF50F752529296B3E49F45698115F91563516645EF15D3534BEC7BB401A395E0FF0059FAD3BAEF59C8EA45A58CB61B530EA431A3631BFF007E5D7FF8D6EBD7BF2EBE854B8B71EA6B6DC903F3DEEF756D3FC8A99FF822E13A7E0DDD43A863E150375B91636B68FEB1E7FB2A2C92B3C217C456AFB97D53DF57D58E96C7723199F88DCDFF00A2E5ABEA14115B296B6AADA1B5D6D0D63468035A36B5ADFEC84F2A6028058645FFD3EE77A5EA218288D0215E21802B7A8D79355AEB1B5BB71A5DB2C8ECEDADB36FF9963172F93D572BEACE1E4F4FCADD680CB1FD232E25A5A4C558B93F4B65B88FB18CDFFCD5B47A7FF16B6BEAF63538FD2686D770CA73C6FBB2410EF52D77F3D67A9F9FEFFD1B3FE0D9E9A8C4AE543A7CDE0B8C685FD8E98727DC865C02424F8A752D7C93AF7D5CC9C6EB999D2AB2CA7A7973B368B1ED86B5AE6B9FE936DDA36FB87A1E9EF4DF57BA83BA76774DBCD85831DE05D2435A58F76C7079FF00475B1DBDEBAFFF0018745ACC5C5CDA6A36383CE3DA409218F1B87B5D35FD3F6B3D9EA6FB5716F38151B31AD04BB6C9A87B5EDF6FB6DF57F48DF7D8EFE6AC7FF6151CA0C327FCE0D981E28D3ED1A7238F15C17D70FF001915E16FC1E885B6E4096D997CB19DBF41FE95FF00CAFA0B9CEA1FE307AC647441D16AACB2D60F4EECB065EFA5BA35BE981FA373ABD9EB3F7AE530F0B2BA866578788C36E45CE0D634773E7FF92539CB7A458842B74BBBA9757CE0D26CCDCDBDD0D925EF713F9BFEBEC62F54FA9BF5168E861B9F9DB6EEA84691AB299FA4DABF7ADFDEB7FEDB567EA9FD52C1FABB8E1EE8BBA958D8BB23B09E6AA3F759FF009F1741EA05263C55A9DD6CA7D0327729940D9AA6DEA6A596FF00FFD4E868EA61CE00F0B47ED4C811C2E599735A04728A339E3405699C765A51CB4357A27DD53E37B5AEDBA8900C14FF006B1E2B9CFB7D9D8A433EC3CA1ED27DE0DFFAC1894F56C17E2DAF735AE83B9861C08D5AE6FF002979CE474EFAE38B926BC7CCC87D6090C78BDE06D9D3735CEFDD5DABB31E7BA19BA4CA12E5C4B724792867A784CDC4FACA31DD91D46DBAD65643A1F739E5BAFD3AD9BCFB90BD2A2FB6B6634BC3EB1EDD665A3DEEB08F8FB976F9D8D4675068BDBBAB7723E1AA6E9F8587D3EB2CC7AC341E63BFC5413E48CA5A4B4A65873600D63AB47EACE4741E9F95996DDB3ED34D50DF50EB2DF73E1AEF6EF737FF0051AB1F53FED195F58B23ABB3A7B30F12FA9ECDFB1C24B8B6C63AA2EFDEFA2FB1BF4D59FB3601B8DEEC6A9F69FCF731AE3A7F587F255DFDA1778A6E1F8798643396432F0E89CBCE4671A10AF17A1DFE696F1E2B9DFB7DBE297DBECFDE573DBF16BFB81E8B70F14B70F15CF0CFB07E71FBD2FDA16FEF25ED9EE9F74767FFD58FBFC1297F82F2C496C398FAA4BFC1297F82F2B49243EA92FF0004BDEBCAD24828BEA9EE525E52924A0FAA3B77643FD2782F2F492082FA7936F8269BBC1798A48A9F4E26EF029A6FF02BCC92494FFFD9003842494D042100000000005300000001010000000F00410064006F00620065002000500068006F0074006F00730068006F00700000001200410064006F00620065002000500068006F0074006F00730068006F007000200043005300000001003842494D04010000000002220006000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000012000100010000000000000000000000000000000000000001FFFE2A3600D4266BFFFE2A3600D4266BFFFE2A3600D4266B0001002689DE00C80A05002689DE00C80A05002689DE00C80A050001000D4DFE00D8BE6F000D4DFE00D8BE6F000D4DFE00D8BE6F0001002C0B0200CD0CF2002C0B0200CD0CF2002C0B0200CD0CF20001001EBD0400DA6A13001EBD0400DA6A13001EBD0400DA6A1300010037833600D13A0C0037833600D13A0C0037833600D13A0C0001002ECBB200DBAACE002ECBB200DBAACE002ECBB200DBAACE0001003FC54600D4FC3D003FC54600D4FC3D003FC54600D4FC3D0001003B2ECB00DA6A13003B2ECB00DA6A13003B2ECB00DA6A1300010050496700D2E5B00050496700D2E5B00050496700D2E5B00001004E739C00D99441004E739C00D99441004E739C00D994410001007CC9DD00BD2E5B007CC9DD00BD2E5B007CC9DD00BD2E5B0001009C7F9500AFC20400B1903500A855D700BBD15600A4B8D6000100C3E64E00A41FBD00C3E64E00A41FBD00C3E64E00A41FBD000100C73E3200AB344100C6DD7400B4D5EC00C6590000C205DB000100C2108400D2E5B000C2108400D2E5B000C2108400D2E5B0000100BB2ECB00E6F16200BB2ECB00E6F16200BB2ECB00E6F16200010004967A00F8E6860004967A00F8E6860004967A00F8E6863842494D04060000000000070008000000010100FFE11803687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B633964273F3E0A3C783A786D706D65746120786D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786D70746B3D27584D5020746F6F6C6B697420332E302D32382C206672616D65776F726B20312E36273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A657869663D27687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F273E0A20203C657869663A436F6C6F7253706163653E343239343936373239353C2F657869663A436F6C6F7253706163653E0A20203C657869663A506978656C5844696D656E73696F6E3E3131323C2F657869663A506978656C5844696D656E73696F6E3E0A20203C657869663A506978656C5944696D656E73696F6E3E3130323C2F657869663A506978656C5944696D656E73696F6E3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A7064663D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E332F273E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A70686F746F73686F703D27687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F273E0A20203C70686F746F73686F703A486973746F72793E3C2F70686F746F73686F703A486973746F72793E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A746966663D27687474703A2F2F6E732E61646F62652E636F6D2F746966662F312E302F273E0A20203C746966663A4F7269656E746174696F6E3E313C2F746966663A4F7269656E746174696F6E3E0A20203C746966663A585265736F6C7574696F6E3E39362F313C2F746966663A585265736F6C7574696F6E3E0A20203C746966663A595265736F6C7574696F6E3E39362F313C2F746966663A595265736F6C7574696F6E3E0A20203C746966663A5265736F6C7574696F6E556E69743E323C2F746966663A5265736F6C7574696F6E556E69743E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A7861703D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F273E0A20203C7861703A437265617465446174653E323030372D30322D32375431363A34303A33302B30383A30303C2F7861703A437265617465446174653E0A20203C7861703A4D6F64696679446174653E323030372D30322D32385430383A34323A30392B30383A30303C2F7861703A4D6F64696679446174653E0A20203C7861703A4D65746164617461446174653E323030372D30322D32385430383A34323A30392B30383A30303C2F7861703A4D65746164617461446174653E0A20203C7861703A43726561746F72546F6F6C3E41646F62652050686F746F73686F702043532057696E646F77733C2F7861703A43726561746F72546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449443E61646F62653A646F6369643A70686F746F73686F703A37646136336130352D633663322D313164622D623464322D6533303033393765366261333C2F7861704D4D3A446F63756D656E7449443E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27757569643A37646136336130382D633663322D313164622D623464322D653330303339376536626133270A2020786D6C6E733A64633D27687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F273E0A20203C64633A666F726D61743E696D6167652F6A7065673C2F64633A666F726D61743E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A786D706D6574613E0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A3C3F787061636B657420656E643D2777273F3EFFEE000E41646F626500644000000001FFDB008400010101010101010101010101010101010101010101010101010101010101010101010101010101010101010202020202020202020202030303030303030303030101010101010101010101020201020203030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303FFC00011080066007003011100021101031101FFDD0004000EFFC401A20000000602030100000000000000000000070806050409030A0201000B0100000603010101000000000000000000060504030702080109000A0B1000020103040103030203030302060975010203041105120621071322000831144132231509514216612433175271811862912543A1B1F02634720A19C1D13527E1533682F192A24454734546374763285556571AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA110002010302040403050404040606056D010203110421120531060022134151073261147108428123911552A162163309B124C1D14372F017E18234259253186344F1A2B226351954364564270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00DAE2AE8FFC7FA71FEF5CFBCABF17FA3D6384B6E715F3FF0057AF51CD2417E6FF00F1BE6FF8F7BF13E5D213091C47FABF6F5D8A483F173FEC3FE35EFDAFE5D7847F3FF57EDEBBFB387FA37FB6FF008D7BF6BF975BF0FF00A5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF8D7BF6BF975EF0FFA5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF008D7BF6BF975EF0FF00A5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF8D7BF6BF975EF0FFA5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF008D7BF6BF975EF0FF00A5D7BECE1FE8DFEDBFE35EFDAFE5D7BC3FE975EFB387FA37FB6FF8D7BF6BF975EF0FFA5D7FFFD0DB4AA60265FA9E0FF87BC9AD5D422D6D5C53A8ED4C09B9FF005BEBFD3FD88F771230C749DF6F06983D742954FF004FF6E7FE2BEFC653D546D95E07AEFED57FA8FF006EDFF11EF5E3375BFDD47F8BF97FB3D7BED53FA8FF0093FDEFC56EBDFBA8FF0017FABF6F5D1A68C7E41FF5B51F7EF15BE5D36DB7AAE0B1FD9FECF5E14C87F23FD8EA1EFDE2B75B1B706E0C7F67FB3D77F6A9FD47FB73FF0015F7AF19BD3ABFEEBFE97FABF6F5EFB55FEA3FDB9FF8AFBF78CDE9D7BF75FF004FFD5FB7AF7DAAFF0051FEDCFF00C57DFBC66F4EBDFBAFFA7FEAFDBD7BED57FA8FF6E7FE2BEFDE337A75EFDD7FD3FF0057EDEBDF6ABFD47FB73FF15F7BF19BD3AF7EEBFE97FABF6F5EFB55FEA3FDB9FF008AFBF78CDE9D7BF75FF4BFD5FB7AF7DAA7F51FEDCFFC57DEBC66F4EBDFBAFF00A5FEAFDBD7FFD1DB9E5A472C4E9FF5B8FF007AF791C2E540E3D45AD6EC7CBAE068DC81E93FEDBDEFEA569C7AF35BBFA75C7EC9FF0000FF00B63EFC2E14F9F5E5B761C475D8A193FA1FF6DEFC6E17D7AB8B73E9D40CACD4D86C755E5323325250D1C466A9A994E98A18F505F23B1FA2A96E7DF84EA4F1EB4F1684662300748DD87BAE837A6CEDBFBAF1F59475B499AC7A4FF738EA98EAA845753CD363F2F4B054464C728C765E927A6620F1244C0F23DAB04380C86ABFE5E83CB730D5DA570083D2A5E6FD209B6AFD24FF004FEBEF6118D68A7A4B3EE6BA690A51BD7AC4F29562A1B55BEB6E40FF005CFD2FEDF8A2A8AB0C7487F78DD57E335EB119A43702FF00EF5EDE30C60569D6FEBEEBCDFAC05AA6E4DCFD7FA7BBF87081C3AF7D7DD57E2C759035458726E7F1FF001BF74F0E13F675BFAEB9FE2EB906A8BD89B7BF18E1C53AD8BEBAFE2EB2886A1F90C47FB0F6D31894D00E9C1797278375DFDB54FF00AB3FEDBDD75C7E9D6FEAEEBF8FAFFFD2DCA4E3C1BFEDDFFA7A7F1EE6BFAA1FC63A091B71E431D7631C0FFBAFFD6E3FE35EF5F563F8FAD7D3FA0EBDFC307FC73B7FB0F7EFAB1FC5D6C5BD2B51D7BF8681FD81FF0024FBD7D58F5EADE00F4EABEBF983F69E23ABBA8F3147B9723F63B333584CC52F665340B0C19AA8EA1CED2BEC9DF9B8369D7D455534706E2EBD3BAE8B3234ACF278606B4320B8F6AD6EE18ED2E2E1B25788A804AE0369AFE200934F3A53EC0F6F2973AE2B7870AF8AFA1E22BF23C3A249FCA8FE45E5FB029BB8FE3AEFE971706F0EB0CFD5F60EDD8A92ADE7FBBC3EF2DC796A0EE1C5636AEA9E9A2DD98DD9BF2068F35551647134CF88A7C36E8C3D3FDCCD505F4DB9637232C7246D28320E0381A7AFA9FF003003D7A0C6ED63E198E40840228735EEFF00263EDCD7EC170ED442C2C496E016FA7FB604116B7B15FD436401D137827F87AE468C585873C5CDED7FEB7B1FCFBA99DF4D2B8EADE11F43D6434896E001F4FF007C7817F7A323900571D6FC23E9D736A64B58017B8FEBFEDFDD75BFCFADF847D3AE0B4D6724FD38B7FBDFBF1734A75A119F4C75C9A0526FF8FF0063EF5ADBADF867C8751FEF6084B47AB95254D87E4120FD7DBC2DA4701B4F1EB6081823AE5FC4E0FF007DFF0023F7EFA397D3ADEA5F43D7FFD3DE4DB05420B03A6F7FE9F4B1FC7F4F6251B94E4022B4E9A36918C75C86028CFD34816FE83DD5B739FE7D6FE9507963AF1DBD47CF2BFEF1EFC3749C7107AD7D221EBAFEEF51FF00AA4FF6E3DDBF7A4DE87AF7D2275ACCFF00C2883BAB6675D6D9F8FDB16825C357F64CDD8516F3C352553AC75784C2D152556DCCB64ABE9EB682BB0FB87626E05CE7F09CFE32A50C73D0D417678B409031BCEF53DBEC53369EE2D507CF0334FB6BD268F6C82E3718831C05A1FCFF00CD4FE67AA8FF00823B8ABFA7BE4275CF666DD82A3271ECB9AB69F23056D21A7CBD4755EFEA0AADBDBE3666EECAC1949E2C966369C3898E2C69AB6311CB6129269E35AF6897DC6FCBBEE04965BD583DCCA56D84A03D3F87CF81C8AD091E791E7D1E6F3C8D15EED376B6E3F5F4553FD30C8F2EB71AA3AEA2C952526431B53156E3F21494F5F8FAC8183C15943590A54D25542E09578AA29E4575238208F797F0CA9711453C4C1A3750C083504115041F4EB1E9ADA58E468E55A3A9208F30460F5292EE2E3E9FEFBFA5FDEE46D14CF5AF07E7D73F1BFF004FF791FF0013CFBA0947991D6BC13EBD77E37FF0FF006FEFDE37CF3D6FC134C9CF5C963214936B9B585FF07EA7DEBC6F5EBDE01E80AF917DA11F53747F7B6F9C6E6B0943BB3ADBA23B53B57154590ABA079E15D9DB3F3992C6E66AB1351511CD3E1533D450C2F232882494888B6A603DD64B80885811A87FA8FF002FF3F5B480B3A29F8491FE1E94DB572D4FBDB6A6D4DEB87715388DE7B5F6F6EEC554C5768EA319B970F479AC7D446C1798E6A4AE4653FD0FB318B7288C6841AE3A4E6C6524915A74FDFC3EABFD437FC927FE8DF6EFEF18FAD7D04DF3EBFFD4DD58EEE2CC4963725BEA7FC4FF00ADF8F7287F579514003007FABD7A40D7C01249EB90DE0CBC6AFF0079BFBAFF005795BCBAD7D7A7F175D9DE0C79D7FEC2FEF5FD5E518A75EFDE082943D786EE278D7F5FF6AF7A3CBEA0569D7BF78AF5ABE7FC2977A73796EEE99F8EFF0024B6EEC4A4DD1B67E33F6CE7B2FDA1B87051662B7B1F676CAECBC3E236A5365A931342F3D1EE3EAD1B8E2A76DD746B4E7291AC5433D2CB1C11D732907335839D9658A484FD2C649D438AD450FCA8715A8F21F9B7038FAF4B9493B88A11F9D41FCB3FB4F54C3F0A3E416DFC56ECDA934593A597756C7A8CEC5434D9EDC5494381DEA2832A9254ECEDF7B8A3C849824D9392C9FDB53C795AC75A4A425A4C89A0A9A6158F8A9BEEDB34C979158D4AB0E3E62A41C79752FED1B8A6985E5A691FE6E3D5FEFF002C5FE643B23BDBBBFBEFE18EE6CB187B0F61EF8DF7BC3A82B63C86DBDCBB577775B5666B259BCAED2D85BFB66EE1DC9B6B7BE27AF8492C98CAD8E48E5ACC3076769E4A79656CACF6AB9859B64B3DAAF2626EA250A01F418CFCC617ECD381427A8379CB6331EE7737F146441235491EA7E5F3FF003F578F1D0C712D84BAEFF9E0DBFD7E3F3EE5B791A422A294E81A2D53B86B38FB3AC9F6B1FF008FFBD7B6E87F88F57FA34FE33D7BEDA3FF001F7BA1FE23D7BE8D3F8DBAF7DAC7F83FF15F7ECFF11EAA6CD38073D690DFF0A5AF96F9AE98F98F86EB2D95BDCE3C6EEF82F8FD95BF71B87C9C4F3D1A6E4EE7DD9BC6A36DEEAC7032AA516EADAB87A197C13A113D3CD14814FEDB00C6F1BB0B3F1103293FF143C8FA823F6F46BB7ECB1DCA93233015C1007F2E3EBFE0EB6AAFE54DBBF21DA9FCB5FE0F7606731F1633239FF8DBD694D251BB3CAC906D5C245B26867324CEF2C8D5D43B6A3A866624B34A49FAFBF6DFB89BDB48A5552B414A7CE953FE1E8C06D11C124F1D0BA87C13C6941E98EAC03F8741FD29FF00DB0F6B7C67F56EADFBBA2FF7D75FFFD5DC024A82EC185F83F83F8FCFFB1B7BC80F08FA740210A8C839EBA799AFF9FF007DF9FC7BDF867C8757008E0DD6332BF1C9FF007DFEDFDEFC36EB79FE23D72499C329B9FAFBD346483D6C56BF175C33781C6EE5C3E5B0B9EA2A2CCE03398BAFC466F0F92863A9A0CAE2727492D0E4B195D4D2868AA28EBA8E778A58D815747208B1F686748E6825B59A10F1BA952A78107041F911D284560CB22C94A1EBE715FCD47E35E2FF0097BFCAEDC9D3D55438DA5EA7DCF4ADDAFD29B9B234B84C9CB9CEBDCB55E66821DAD5ED95CA439EA4CAEC8DC59BCCE332BE0A911E463145949A16337821C77E62D81797373FA6589E4B59CD54D09A2F9293EA2847CC007CFA196DBB934B0AA6AEE269F9FF009BA41CBDC9BDF2DBA3E36FC89DAFDD389C4773E5735D594DD7DB5B67EDFC36D9DDB8FDABD3EF4745D715B8FDB74098D8E6C9C14B4357413D4666A69DF389574C95934F064E58E4085A6E179B2EEBF5F11A408E3238126B8F9F0351E808E87AE969B8ECEF672A032B2F5F401F869F278FCABE91C4F6057E065D99D8588ABFEEBF6AEC59E96B291F6BEF6A7C7D065245A387211A54FF0006CDE27274D5D4AA5A634DE69291E59A5A69257CA7E56E62B6E65DB12FADE8194E9615E0C00A8FE60F13820D7341036EDB5CBB4DE496D28C11A94FA8CD3FC14FB7A351F7151C72DFA6E7816BFF004FEB73FD3D893A2DAFAFAF5EFB8A8FEADC8BFD07FC93FE2C7DFBAF57A4AEFBEC2DAFD61B2776764760EE0C7ED3D8BB176F65375EEEDCD98A9828F1983C0E1A964ACAFACABA89DD2305628F4C697D72CACB1A0677505B9254894BC868A3FD5FEAF967AF71FB7AF92DFF00338F9A790FE60DF32BB8BE51CF86A8DB781DF12E170BB1B6B646A60ABADC0F5EED1C5D16DBDAD87ADAD8922592BA2C6D0FDED5C88A5229A6645791143B429BCDE9BCBC94447B4B1CFAE49FB326A7A906CAD8436880FC4A3EDCF5F4C5FE53EF98DADFCB1FE05E032BFB55F43F18BADE7923911A365A6CBD14F9CC67A4F3CE2B2701BFF6BF5717B7B95F96B6B106D16C1857500DFB557FCB5E82D79B9A25D4E9424863D5817F78E7FF008E89FF00277B3FFA25FE1E937EF55FE13FEAFCFAFFD6DB7A2ADF0F027661F9F49F791DA57F87A8BFF78FCFFD5FB3AE4B91B700B5BFA7FBE03DFB4AFF000F5EFDE15C57FD5FB3AE7FC41BFC7FDF7FB1F7ED1F2EADF587AEBEF989BDBFDF7FB7F7BD1F2EB62EC923A7682A5A48EDAB8239E7DA5922A3D40E97452170093D526FF3ECF81D0FCE0F82DBB2B36AE33EE3BC7E368CA7767525552401F2F96A5C1E34CBD89D7B4B3232D47877B6D3A3668A14129932B8FA1611BBA2A90E7336D62FF6F7754FF188AAEB8F4191FED863EDA7A746BB6DE1B6BA8C93DA707FC9FCFF00CBD6885F10BA77A8FB3C4794EC1EEDC074F63FFBB195C8D3763EEADB19EACD89B73784782C8D66DADBB96DD3418BCFF87736E7C9412D2C9411D2524F4F1422A52BA0275FBC6E9C17B8BB899683208F5FF5571D48BB577CC24A62BD6D6DFC8B3E606EFDD1F2837B74DEF5EC01BAF6676F74ED266FA6972F91CAD4E71B29D4664CC8C4E3286B30F8D94E0A2EBBDC19422BE72E92D0E171C90308A485584FECA5CC7B45DEFDB2C8F437171E28078EA0A8941F338AE070F9745DEE4426E06DB7AA2A238F413FED89FF002F5B5B8495A52AC5443E45666B5DB40B1D0A3E9F8FCFBC8D60D9D34AF5140A62BD4A6487D56D4D760C09B0E05ACA458F02DEF4A24FC4457AD92BE5D68A9FF0AAEF9DFBDF33DB1B2FF97E6CCCA5561BAC7646DFDBBDA5DCD0D24B3533EFDEC2DC310C96CBC1645E294C790DADB176F3C75229D8056CD55C86642D474ECB1C7396E4C5E3B289885352DE580683F224547A8A7426D96D94466E5D7BC9A0F90FF3F5AA1F40F49EF0F929DFDD43D0DB0288E4F7776BF60ED8D8184A558DA55866DC1928696B32154B1ABCB15063283CB5555205709494F2B81A9006096D56AD777B0A0E04D3FCBFB00A93D1CDC4BE142EDF227FCDFEAF5EBEC194D82C36CDC6E13696DAC663F0DB6B6BE0B0FB6B6E617110AD2E270DB7F6F63E0C2617118BA64F4536371B8CA08A1823160912281F4F7905636A21B5862028AA001D46D7926BB877E3AB3E5D64FB86FE87FDBFB55E10E92EA1E87F975FFFD7DAAE3CB346FAD458DAD6FF006FFE1FE3EF2BA6B6207E7D4330CD4AE3ACFF00DE061C31E7F23FA8FF006DF9F689A32A69D2E53515EBB5CDA37E3EBFEB73FD7F1C7D3DD741FE1EB741E9D2736E7646D7DDB5FBC719B732F4F95AED81B9D765EEF869967030BB9DB6D6DCDDE71134D2431C153511EDFDDB8F9DDA069638DA7313309A396344B6F736B76D7496D32C8D04A639349AE970AAC54FCC065A8F2AD0E4101D92DE58444D2C4543AEA5A8A55492011F2241A1F3E97D4F913E3163627FDF7F5F7B688B36074D09DD4E91D4C190D243390DA7EA3EA0ADB91637BDC7B69A1C70E9E4BA756EE15EBE71DF3B3F975F647587CDDF923F0FF6D55ED4EBAF8BB59B8771FCC1EB0DDDBB76F438CDA3B7F6CE7366E7372C7B2717BF63C1E38E2A3A1CA63E7DAF49898323152C957F6DE749273F754B8C5EE0DBC3CB5BB493F82C629492A001C0938CD300D40391403E40CC3C9973FBC6CD9C351D7B4D7D47F97813F6F50BF97D77EE47E34777FC2BDFB59BBB2F83A4EA9DDF89C5F6343579DC560B0191EBFDE7B964DB194C7EE4C8D3BBBCBB4367ED9CB475F5EB2B53349511A53BACEA164F61CE55BA1B6734D8EE3338F0670385752863A5BE55E3E67E5D1CF3059B5D6C977071903547A1A0C71CF5F4A3D70BA79609525A7917CF15407531C94C57C91CE24074789E23AB55EDA79FA7BCB507018FA75047A8EB527FE6F9FF000A41DB9D0CFB8BE3F7C09C8E037CF6A41FC4F0FBBBE404DF6D97D8FB167800A3A88BAC29889F1DBE371D057F9A196BE7B63A8E686D1AD4338923096F3CCD6F69AE08D599A94A8A507F3CFF0083CB3D1D596D32485649C517D3FCFD6916727F247E68F796371D2D5F657C8BF901DA59CA6C4E223C8D7E5F7B6FADD394C956493D3E3295AA67A86A2A0A4358F22C41E9F198DA4D4FFB30A3858D27175B8DD86894C92C8D40324D4D4E7E43EDA0FB3A12F659C21A4655847E407FABF69EB7F5FE4DBFC8C3627C00A6C2FC85EFAFE09D8DF326BF1730A36A231E4763F41C398A57A6C9E2762CCE0AE777CCD413352D7EE06168D1A482842C44CF2CBFCB1C9FFBAD167BD60F76C3FDAAF9D07AFCCD3340380EE07EE3BD7D66A486AB6FF3E27E67D07A0FCF8F5B0357C9AA54E2F6880E6C7FDD921FF1E39F7204309D2720E7FCDD06DE60A407153F2FB4F50AFF00E03FDB0FF8A7B77C23F2EA9F509FC27AFFD0D9FE09AF7FF7AF798AE80629D4271F9F4A8A0A78BC22E2017B1FA137F6573F86AD46C9E8CE31DA3AA08EC8F959D9FF00CA9BA83BC3E3A76C8DC7BE6971FB4FB3373FF2F1F908F8D7CE602BF6964F234B8DD91D19DDF595632FFDD9DEFF001DB726F0C7D04592AAA7FE05B876A250347F6F58B350889799B9B23E46DB2F36FBCBAADE4C928DBD8D0B3B531190C48668350635ED68D41F50063B36C8DCC77F04B6F0136E854DC800D156B961A780700814C863F61EACE7F97D75BECFEB8F89DD558EDB5D958BEEBCB67F173EF0ECCEEEA1CC516E593B6FB7370543D47636EEA9DD549454936E3869B71C72E271F25519AAE8B118DA4A09657349C0BF94F6BB0D9F62B2B6B560EEE0C92C982659A43AA5919A80B16727273400138E89377BB96FB709E6954A8074AAD28111708A070000A60638D3A37D595D4F46423B485C8D4B1C31BCD2150402C1225672A0B017B7E7D88BF4C1AF45042EAC9CF52A14ABA84122455288413FBD04D11B7F8ABA061FEDBDD4A467CC57F2EB63493C7AD76BFE1431B137460BAAFA33BE36675F54EEDCC51EECC8F476F9AFC761D73798C6F5FEFAC6D76571D2D1E2F38721B56A6B23CFD0D550634BE3A4CB2E4B389F65510B960D0AFBCBB55B4BB35B6E094F1A372A4FAEA048E1E9423E7ABA1D723DFB5ADCDDDAD6A8E030F911838F9D47ECEB58FCD557446D0A8DD5D55BA683315F936DBF4D929F63D3D51DBBBCB6BBC7B4696AB13BF66DFCD2EEEC1D6CDBA775E524ACACC1E572957398695D5E8606AC6921C67782F1A4DBF718D14431B69F960EAA69AD683D7E74AE3A98EDA5867B1B9B67A9909AF0F2A538F0AE38711C7A187BFBFE1417F2F3B27E14E3BE096D0D9F90DB9BD303869F63F65FC88A3AFAAAADF7D8BD2B828EAE8F0986ABDA1438CAB8B68E5337B44E3D371E563CA57AD744922050B552CAD3B9E7AD1B0DAC32B059A8ABA9880294A01C477629535F3A0F31185E72C2C57B3DCA54C64D4281C09F3F9FAD3F9F5AFDF5074CF697C8DEDCD99D27D3FB5EB77BF677636E1A1DB9B5B0542A2296B723506761595B5552D0D363E8A828FC953555F3CA29E9E962696460A0B7B436C2E77AB986D6DD354AE68063F6FC8015A93C287A577D25B5A46D2BB511454FFABD7D3D7AFA4EFF0029FF00E531D1BFCB47AFE9B3B5E713D8DF2C376E0E2A7ECEEDE8E98CB8EC1A55AACB90D8DD5B155AAC984DAF0CC045555AAB1D6664C2AF308E11153453CF2DF268D9E1127861AF1946A63E5F200F01E9E7E67340B196EBBF2DEB140D4B70703FCA7D7FC03CBAB7B6DC34C0B7EA27F06E1473F4005CD87E3D8BC6DF2951DC29F3CF4426EE31E58E996A33A6493529005ADCB13F93F916E2DED7C367A12807FABF6F4926B90CC08A8C7AF583F8D37FAA1FEDCFFC57DBBF4DF2FF0057EDE9AF1FE67F6F5FFFD1B88D8BF272972790A586A1DBED09FAD8DBF1F5B7F8FBCE0DD76268E3635F2FF37F4BAC66E5EDED5DD7D2BFEAFC3D1D44ED2C39860929268561922565512060381C5F93707D84936C2C298A8E878FB82823E63A61CD6F3DA99D346D9BC561334D8DA8FBBC736531D43913415402FF0094D11AC82634D51E91EB4D2DC7D7DBA368634C034FB7A68EE319E23A9E7B628D7EB3A8FF005CA8F77FDD0DFC1FE1FF003F5A3B946389FF0057ECE8887CFEEA4D9DF317A2F727526EBCFE6B118DCBAD154C393DB1918F1B9FC364B155906471999C1D6491CF0D365F1B5B4EB242CE8F1B1051D5A37752DDCF2D1BF8248685588A02388F983F2E929DE62B79D27A2B50F03907EDEB4B7DFF00F1DBF9C5750F63E436CF5AFC94F91FB976AE3F295D4DB633F8DF939D898DA25C17DEFDAE365CB61333B928E9E9320D8775351141156C314EACD133058EF165FF0021FB8115D1167B8CCD054F095C0A790A1FF67A165BF34F2B4B07EB2469262BFA62B5F5047CFECC1A7400F727557F327A6EBCCB7657C9BDF7DD3BDB09B4B238BCEFDAEF5EFDDCDBCB21B726192A5A73B8F69E01F7964683F8AC523AA3CB140D253A32491A1264310079C797F9DECB6C9A5DEE02DB7A91DD24CA4024845EDD40E495181E7F6D45DCB3BCF295D5E2DB4332FD43569A633902A4E40F404E7D3A44A6DAD97BEF74ECDC3755A54EE1A2DCBB030E25C6F87212E5D6B36DD03C5B9737BAEBA823778E5ACAAAF596B6799151BEDFEDDC9D5191061B6DF7E927996D4ADBACAD555A5189008A0E3403850F038C0EA6189767827B74374A23295F971A64D38FAF57B3FCB377EFC0BF8E3D9DF22B786F75D8B1F6E75C7590A5C2CBBE730BFC4EA6AB6BFDC64F71D3D0E1339550E0EAB70E570F2414C9592D5C33D24F253C34318923995A04F712E79F77186DE0DAE2B88AD5D804D21684924507C46A4A1A815A79D09151CC1B3F2E5CC5ABC48F5533C7FCDF31D0C5FCA04EFEED8FE621DBBF34B0FF001076A7C7EE93ED0EB2DE9B563DC951B2B74616A2BABF3D96C2EECDBF9CEBDC866E929686B2AF3D4B4E94195CD504694994A559F59D77326787B05CB1CEDB6CD05E7325ACD2C0F15048EA005C020A3517503C781191435E18B7EE7EE3B0CBAED768B94F115F2AA7CC1A1D43343FE53D6D3A32B19325EA62B006D795355BFA0E7F1EF2C442C0FF006783D431AAAA06B15AF58065610843D55382E4800CABAAFF0082413F8FCFBF0864CD13AF3321D3DE31D715C8D291C5544D6E2EACAC3FAFD41FF1F7474954D294E9C408E2A58631D77FC429BFE5613FDB8FF8AFBA6997ABF869FC43FD5F975FFFD21B70BBB68B174B4FE18E31508A35CA7962D6FE8785F7D26B9DB92E4B348E73E55EB082D3764B35410C605074B583BBB2F4C82386A6408A2C06A36FF6DF4F6946C5654EE415E9549CD37869A5CD075DBF7BEE35E63A99187F4D414FFBC8B1F6F2EC7B70194A1E9A1CD17BE7257EDEBA8FBDB70CB7F34AF6005AF228FF005ED6F7B3B3D92FC03AB8E67BA6C31EA1D6F6FE5AB14A35538561C82FFF001463EDD8F6EB74C8415E93CBBE4D27173D226AB769A990CB23233937D4C013FEDCFB56B6F08FC03A40DB8C8C4D243D02DDDBD75B27BEF64647AFFB07194D9ADB395107DE504E648D5A4A5A88AB29278A58248A7A7AAA3AC8239A2963659239515948201F64BBF72D6D5CC168F65B85B2BDBB52A0FC8D41C64508047CFA30DAF986FB6AB85B8B5B865945723E7823EC2304798C1E9AFE3F74BF50FC70C154607AE76AE3709475AED2E405246227C8CAF6D53646604CD9198E91EB9DA46B002F603D97EDFC8FCBFB6DB0B5B6B2458BD29C6BC6BEBC071F41E9D19DDF3B6EF79378D35DB193FC14E007A53D074AE93AEBA1A6DE555D8392E96EABDC5BCAA929D0E7F71EC5DAD9DCAC4D492D14B495095397C6D5EBACA27C6D3FDB4EE1E6A4110103C60B86A43EDF72847B87EF37D8AD5EF74E90EF1AB102A0E2A08AD40A1A54528080483E939EF7F7B6168BBB4E9056A42BB2D7EDA7964E381F3AE3A326BF203760548FF88CFE34411AA3549D0A83E881470AA3F00587B131DBAD0FE11FB3A281BEDC035F18D7EDFF0063AE23BEB72872E72528240057CEC56DCF1CD8F37FEBEFDFBBAD7FDF63F67551BDDC024899BF6FFB1D637EF4CFB924E4A7F55AF69D85BFA81EA3C1BFBD8B0B61FE863F675A3BC4DFEFE6AFDBFEC75962EF8CFC4A55725520162C40AA900B90071661F81EDB936DB676D4507ECEBCBBCCEB50266FDBD733DFBB93F194A8FF0063552FFD7CF751B55AF9A7F21D6FF7D5C7FBF9BF6FFB1D7FFFD36777CC71E382423FC1D3FE8F1F8F7D31EEA758067ECEB2C72E6828FF002673FF004F221FEF727BF777CFAA922B91D671265CFF00CA338FFA791FFC439F7EEEF3EB58F21D7BC998FC53BFFAFE48FF00E8FF007AEEF2EB7F975E12666FCD3B9FF90E21FF0045FBBAD750AF0EAB21ED3419EB987CA1FF00390BA8BFFAA43FF42B13ED6911D3073D20EF2735EBB8FEF3573AC7F5FAFF00B1FF000F6C316F24C7E5D28455C6A7FF000F4E8A1F4FA9C83FEB37FC40F695DA6AF6C78FB474A82C5E727F23D31E4BEFD6FF006FADCF3C0E2E7F1FA88F6EC26427BD283F2E93CEA80763D4FE7D258C9B9357A29E62B7FF00571FF87FB5FB5A7C3C7AF483F5ABE7D46A99775DBF6E9AA2DF92248FFDE8CBFD7DEFF4FD7A6CF8FE87A85E4DDBFF001C2A7E9FEAE3FF00A3EDEFDFA5EA3AF7EB7A1EB0492EF00A74535513C7FBB13FA8FEB20F7B022F51D597C5AF9F51BCDBD7FE54EA8FFD3C8BFE266F7BFD3F51D5BF57E7D7FFD9, N'������ʡ', N'��������', 5000, N'22202', CAST(N'2011-08-01T00:00:00.000' AS DateTime), CAST(N'2014-08-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tb_TrainNote] ([ID], [Stu_ID], [TrainFashion], [BeginDate], [EndDate], [Speciality], [TrainUnit], [KulturMemo], [Charge], [Effect]) VALUES (N'0001', N'0001', N'ȫ����ѵ', CAST(N'2007-12-20T00:00:00.000' AS DateTime), CAST(N'2007-12-25T00:00:00.000' AS DateTime), N'�Ű�', N'����˾', N'����д���Ű�', 1000, N'�ܺ�')
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

INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (5, N'��Ա')
INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (6, N'��Ա')
INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (7, N'������Ա')
INSERT [dbo].[tb_Visage] ([ID], [VisageName]) VALUES (8, N'��ͨ��')
SET IDENTITY_INSERT [dbo].[tb_Visage] OFF
SET IDENTITY_INSERT [dbo].[tb_WordPad] ON 

INSERT [dbo].[tb_WordPad] ([ID], [WORDPAD]) VALUES (9, N'��˾����')
INSERT [dbo].[tb_WordPad] ([ID], [WORDPAD]) VALUES (10, N'���²�����')
INSERT [dbo].[tb_WordPad] ([ID], [WORDPAD]) VALUES (11, N'����������')
SET IDENTITY_INSERT [dbo].[tb_WordPad] OFF
INSERT [dbo].[tb_WordResume] ([ID], [Stu_ID], [BeginDate], [EndDate], [WordUnit], [Branch], [Business]) VALUES (N'0001', N'0001', CAST(N'2007-08-09T00:00:00.000' AS DateTime), CAST(N'2007-12-07T00:00:00.000' AS DateTime), N'��ͨ����Ա', N'����', N'C#����')
ALTER TABLE [dbo].[tb_Clew] ADD  CONSTRAINT [DF_tb_Clew_Fate]  DEFAULT ((0)) FOR [Fate]
GO
ALTER TABLE [dbo].[tb_Clew] ADD  CONSTRAINT [DF_tb_Clew_Kind]  DEFAULT ((2)) FOR [Kind]
GO
ALTER TABLE [dbo].[tb_Clew] ADD  CONSTRAINT [DF_tb_Clew_Unlock]  DEFAULT ((0)) FOR [Unlock]
GO