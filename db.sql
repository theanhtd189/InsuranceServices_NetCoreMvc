GO
CREATE DATABASE [InsuranceOnline]
GO
USE [InsuranceOnline]
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Beneficiary] [nvarchar](255) NULL,
	[Duration] [int] NOT NULL,
	[Created_at] [datetime] NULL,
	[Expired_at] [datetime] NULL,
	[CustomerID] [int] NULL,
	[InsuranceID] [int] NULL,
	[Status] [bit] NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Contracts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Gender] [bit] NULL,
	[Birthday] [datetime] NULL,
	[Phone] [varchar](12) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQs]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
 CONSTRAINT [PK_FAQs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackContent] [nvarchar](255) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[InsuranceId] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurances]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurances](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Amount] [money] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Claim] [money] NOT NULL,
 CONSTRAINT [PK_Insurances] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Created_at] [datetime] NULL,
	[Amount] [money] NULL,
	[CustomerId] [int] NULL,
	[Duration] [int] NULL,
	[Expired_at] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Author] [nvarchar](50) NULL,
	[Created_at] [datetime] NULL,
	[Content] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentDetails] [varchar](255) NULL,
	[PaidAmount] [money] NOT NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[PaymentID] [int] NOT NULL,
	[PeriodicID] [int] NOT NULL,
 CONSTRAINT [PK_PaymentDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Total] [money] NOT NULL,
	[ContractID] [int] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeriodicPaymentMethods]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodicPaymentMethods](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NumberOfMonth] [int] NOT NULL,
 CONSTRAINT [PK_PeriodicPaymentMethods] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policies]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Policies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[InsuranceId] [int] NULL,
 CONSTRAINT [PK_Policys] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Replies]    Script Date: 5/30/2022 9:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Replies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [varchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[FAQsID] [int] NULL,
 CONSTRAINT [PK_Replys] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([ID], [Username], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Created_at], [Updated_at], [Image]) VALUES (1, N'Life Insurance', N'Life Insurance', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-26T23:15:34.420' AS DateTime), N'\assets\product-images\hagl-1554335005576.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Created_at], [Updated_at], [Image]) VALUES (3, N'Health insurance', N'Health insurance', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-26T23:15:34.420' AS DateTime), N'https://www.volkswagen.co.in/content/dam/onehub_pkw/importers/in/owners/insurance/Volkswagen-Motor-Insurance.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Created_at], [Updated_at], [Image]) VALUES (4, N'Travel insurance', N'Travel insurance', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-26T23:15:34.420' AS DateTime), N'https://www.volkswagen.co.in/content/dam/onehub_pkw/importers/in/owners/insurance/Volkswagen-Motor-Insurance.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Created_at], [Updated_at], [Image]) VALUES (5, N'Property insurance', N'Property insurance', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-26T23:15:34.420' AS DateTime), N'https://www.volkswagen.co.in/content/dam/onehub_pkw/importers/in/owners/insurance/Volkswagen-Motor-Insurance.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Created_at], [Updated_at], [Image]) VALUES (6, N'Mobile insurance', N'Mobile insurance', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-26T23:15:34.420' AS DateTime), N'https://www.volkswagen.co.in/content/dam/onehub_pkw/importers/in/owners/insurance/Volkswagen-Motor-Insurance.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Created_at], [Updated_at], [Image]) VALUES (7, N'Cycle insurance', N'Bite-size insurance', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-26T23:15:34.420' AS DateTime), N'https://www.volkswagen.co.in/content/dam/onehub_pkw/importers/in/owners/insurance/Volkswagen-Motor-Insurance.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Created_at], [Updated_at], [Image]) VALUES (8, N'Home Insurance', N'Home Insurance', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-26T23:15:34.420' AS DateTime), N'https://www.volkswagen.co.in/content/dam/onehub_pkw/importers/in/owners/insurance/Volkswagen-Motor-Insurance.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contracts] ON 

INSERT [dbo].[Contracts] ([ID], [Beneficiary], [Duration], [Created_at], [Expired_at], [CustomerID], [InsuranceID], [Status], [Total]) VALUES (27, N'no', 3, CAST(N'2022-05-28T22:53:36.190' AS DateTime), CAST(N'2025-10-15T22:53:00.000' AS DateTime), 4, 6, 1, 190000.0000)
INSERT [dbo].[Contracts] ([ID], [Beneficiary], [Duration], [Created_at], [Expired_at], [CustomerID], [InsuranceID], [Status], [Total]) VALUES (28, N'NO', 2, CAST(N'2022-05-28T23:24:00.000' AS DateTime), CAST(N'2024-05-28T23:24:00.000' AS DateTime), 1, 5, 0, 10000000.0000)
SET IDENTITY_INSERT [dbo].[Contracts] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (1, N'admin', N'123', 0, CAST(N'1993-02-02T00:00:00.000' AS DateTime), N'098876543', N'Ha Noi', N'theanh@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (2, N'Nam', N'123456', 1, CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'012 456 789', N'HCM City', N'nam123@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (3, N'Nhi', N'123456', 0, CAST(N'1993-01-20T00:00:00.000' AS DateTime), N'0145456789', N'HCM City', N'nhi1245@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (4, N'Johnny Depp', N'123456', 1, CAST(N'1970-11-05T00:00:00.000' AS DateTime), N'012 456 789', N'HCM City', N'johnydepp@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (5, N'Amber Heard', N'123456', 0, CAST(N'1999-01-10T00:00:00.000' AS DateTime), N'09878234', N'New York', N'nam123@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (6, N'Tuan Anh', N'123456', 1, CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'09993834', N'HCM City', N'tuan444@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (7, N'Nguyen Van Phu', N'123456', 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'0123 456 789', N'Ha Noi', N'phu987@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (8, N'Nguyen Chi Linh', N'123456', 0, CAST(N'2000-06-01T00:00:00.000' AS DateTime), N'0123 666 789', N'Phu Tho', N'chilinh000@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (9, N'Nguyen Van Nam', N'123456', 1, CAST(N'2001-08-04T00:00:00.000' AS DateTime), N'0988 777 323', N'Ha Nam', N'vannam987@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (10, N'Dao Minh Ngoc', N'123456', 1, CAST(N'2001-06-04T00:00:00.000' AS DateTime), N'0123 456 789', N'Bac Giang', N'minhngoc123@gmail.com', CAST(N'2022-05-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (12, N'Dao The Anh', N'123', 0, CAST(N'2022-05-12T00:00:00.000' AS DateTime), N'0918524691', N'Thai Nguyen', N'ta123@gmail.com', CAST(N'2022-05-25T15:59:07.057' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (13, N'Dao The Anh', N'1234', 1, CAST(N'2022-05-12T00:00:00.000' AS DateTime), N'0918524691', N'Thai Nguyen', N'ta1234567@gmail.com', CAST(N'2022-05-25T16:04:40.137' AS DateTime), NULL, 1)
INSERT [dbo].[Customers] ([ID], [Username], [Password], [Gender], [Birthday], [Phone], [Address], [Email], [Created_at], [Updated_at], [Status]) VALUES (14, N'ff', N'123456', 1, CAST(N'2022-04-27T00:00:00.000' AS DateTime), N'0918524691', N'Thai Nguyen', N'theanhtd189@gamil.com', CAST(N'2022-05-25T16:06:27.603' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[FAQs] ON 

INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (1, N'What kinds of questions should I be expected to answer when I am applying for an insurance policy? Why do insurers need so much information?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (2, N'I have an older car whose current market value is very low – do I really need to purchase automobile insurance?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (3, N'What are the advantages to using an agent to purchase insurance?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (4, N'What is the difference between collision physical damage coverage and comprehensive physical damage coverage?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (5, N'What are some practical things I can do to lower the cost of my homeowners insurance?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (6, N'What does homeowners insurance cover?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (7, N'What is the difference between “actual cash value” and “replacement cost”?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (8, N'What factors should I consider when purchasing homeowners insurance?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
INSERT [dbo].[FAQs] ([ID], [Question], [Created_at], [Updated_at]) VALUES (9, N'What are the policy limits (i.e., coverage limits) in the standard homeowners policy?', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FAQs] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedbacks] ON 

INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (1, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 1, 1)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (2, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 2, 2)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (3, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 3, 3)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (4, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 4, 4)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (5, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 5, 5)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (6, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 6, 6)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (7, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 7, 7)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (8, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 8, 8)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (10, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 9, 9)
INSERT [dbo].[Feedbacks] ([FeedbackId], [FeedbackContent], [Created_at], [Updated_at], [InsuranceId], [CustomerId]) VALUES (11, N'We specialize in 23 different kinds of pest, and we''re also qualified to handle a much wider range of pest control needs. If you have a pest problem that''s not covered in our pest library.', NULL, NULL, 10, 10)
SET IDENTITY_INSERT [dbo].[Feedbacks] OFF
GO
SET IDENTITY_INSERT [dbo].[Insurances] ON 

INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (1, 1, N'Term Life Insurance Plans', N'Term insurance is the purest and most affordable among the types of insurance policy in which, you can opt for a high life cover for a specific period. You can secure your family’s financial future with a term life insurance plan by paying a low premium (term insurance plans generally do not have any maturity value, and thus, offer lower rates of premium than other life insurance products.)
If anything happens to you within the policy period, your loved ones would receive the agreed Sum Assured as per the payout option chosen (some term insurance types offer multiple payout options as well)', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 240000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 12000.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (2, 1, N'Whole Life Insurance Plans ', N'Whole life insurance plans, also known as ‘traditional’ life insurance plans, provide coverage for the entire life of the insured individual, as opposed to any other life insurance instrument that offers coverage for a specific number of years. 
While a whole life insurance plan offers to pay a death benefit, the plan also contains a savings component, which helps accrue a cash value throughout the policy term. The maturity age for whole life insurance policy is 100 years. In case, the insured individual lives past the maturity age, the whole life plan will become matured endowment.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 3549999.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 12334.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (3, 1, N'Endowment Plans', N'Endowment plans essentially provide financial coverage to the policyholder against life’s uncertainties, while allowing them to save regularly over a certain period. Upon maturity of the endowment plan, the policyholder receives a lump sum amount if he or she survives the policy term.

If anything happens to you (as Life Insured), the life insurance endowment policy pays the complete Sum Assured to your family (beneficiaries)', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 6540000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 54000.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (4, 1, N'Unit-Linked Insurance Plan (ULIP)', N'Unit Linked Insurance Plans are types of insurance policy that offer both investment and insurance benefits under a single policy contract. A portion of the premium that you pay towards a Unit Linked Insurance Plan is allocated to a variety of market-linked equity and debt instruments.

The remaining premium contributes towards providing the life cover throughout the policy tenure. In this investment-cum-insurance type product, you have the flexibility to choose the allocation of premium into different instruments as per your financial requirements and market risk appetite. ', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 3245888.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 786555.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (5, 1, N'Child Plans', N'Child plans are types of insurance policy that helps you financially secure your child’s life goals such as higher education and marriage, even in your absence. In other words, child plans offer a combination of savings and insurance benefits that aid you in the financial planning for your child’s future needs at the right age.

The sum of money received on Maturity under this insurance type can be used to fulfill the financial requirements of your child.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 5400000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 234200.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (6, 1, N'Pension Plans', N'Pension plan, also known as retirement plan, is a type of investment plan that aids you in accumulating a portion of your savings over an extended period.

Essentially, a pension plan helps you deal with financial uncertainties post-retirement, by ensuring that you continue to receive a steady flow of income even after your working years are over.

In other words, a pension plan can be a type of insurance in India that allows you to create a financial cushion for your life post-retirement, in which you contribute a specific amount of money regularly until your retirement. Subsequently, the accumulated amount is given back to you as annuity or pension at regular intervals. ', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 3499990.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 7896.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (7, 8, N'Home Structure/Building', N'Insurance – Protects the structure of the house against damage during any calamity', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 54900000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 78999.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (8, 8, N'Public Liability Coverage', N'Provides coverage against any damage to a guest or third-party on the insured residential property', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 5400888.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 6787.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (9, 8, N'Standard Fire and Special Perils Policy', N'Coverage against damages caused due to fire outbreaks, natural calamities (e.g., landslides, rockslides, earthquakes, storms, and floods), and anti-social human-made activities (e.g., explosions, strikes, and riots)', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 12888890.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 6673434.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (10, 8, N'Personal Accident', N' Provides financial coverage to you and your family against any kind of permanent dismemberment or sudden demise to the insured individual, anywhere around the world', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 6500000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 75555.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (11, 8, N'Burglary and Theft Insurance', N'Provides compensation for stolen goods in case of a burglary or theft', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 65900000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 4566.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (12, 8, N'Contents Insurance', N'Provides compensation for loss of furniture, vehicles, and other appliances in case of a fire, theft, flood, or riots', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 5490000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 67434.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (13, 8, N'Tenants’ Insurance', N'Provides financial protection to you (as a tenant) against any loss of personal property living in a rented house', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 65555500.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 3453.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (14, 8, N'Landlords’ insurance', N'Provides coverage to you (as a landlord) against contingencies such as public liability and loss of rent', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 78000000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 2348.0000)
INSERT [dbo].[Insurances] ([ID], [CategoryID], [Name], [Description], [Created_at], [Updated_at], [Amount], [Image], [Claim]) VALUES (15, 3, N'Protection plan Classic', N'What Is Health Insurance?
Health insurance is a contract that requires an insurer to pay some or all of a person''s healthcare costs in exchange for a premium. More specifically, health insurance typically pays for medical, surgical, prescription drug, and sometimes dental expenses incurred by the insured. Health insurance can reimburse the insured for expenses incurred from illness or injury, or pay the care provider directly.

It is often included in employer benefit packages as a means of enticing quality employees, with premiums partially covered by the employer but often also deducted from employee paychecks. The cost of health insurance premiums is deductible to the payer, and the benefits received are tax-free, with certain exceptions for S corporation employees.

KEY TAKEAWAYS
Health insurance is a type of insurance coverage that pays for medical and surgical expenses incurred by the insured.
Choosing a health insurance plan can be tricky because of plan rules regarding in- and out-of-network services, deductibles, copays, and more.
Since 2010, the Affordable Care Act has prohibited insurance companies from denying coverage to patients with preexisting conditions and has allowed children to remain on their parents'' insurance plan until they reach the age of 26.
Medicare and the Children''s Health Insurance Program (CHIP) are two public health insurance plans that target older individuals and children, respectively. Medicare also serves people with certain disabilities.
How Health Insurance Works
Health insurance can be tricky to navigate. Managed care insurance plans require policyholders to receive care from a network of designated healthcare providers for the highest level of coverage. If patients seek care outside the network, they must pay a higher percentage of the cost. In some cases, the insurance company may even refuse payment outright for services obtained out of network.

Many managed care plans—for example, health maintenance organizations (HMOs) and point-of-service plans (POS)—require patients to choose a primary care physician who oversees the patient''s care, makes recommendations about treatment, and provides referrals for medical specialists. Preferred-provider organizations (PPOs), by contrast, don''t require referrals but do have lower rates for using in-network practitioners and services.1

Insurance companies may also deny coverage for certain services that were obtained without preauthorization. In addition, insurers may refuse payment for name-brand drugs if a generic version or comparable medication is available at a lower cost. All these rules should be stated in the material provided by the insurance company and should be carefully reviewed. It''s worth checking with employers or the company directly before incurring a major expense.

Increasingly, health insurance plans also have copays, which are set fees that plan subscribers must pay for services such as doctor visits and prescription drugs; deductibles that must be met before health insurance will cover or pay for a claim; and coinsurance, a percentage of healthcare costs that the insured must pay even after they''ve met their deductible (and before they reach their out-of-pocket maximum for a given period).2

Insurance plans with higher out-of-pocket costs generally have smaller monthly premiums than plans with low deductibles. When shopping for plans, individuals must weigh the benefits of lower monthly costs against the potential risk of large out-of-pocket expenses in the case of a major illness or accident.

TIP
If you''re self-employed, you may be able to deduct up to 100% of health insurance premiums you pay out of pocket.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), NULL, 5400000.0000, N'\assets\product-images\photo-1606592641984-c9a1506d0705.jfif', 56488.0000)
SET IDENTITY_INSERT [dbo].[Insurances] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Title], [Author], [Created_at], [Content], [Image]) VALUES (1, N'What Is Health Insurance?', N'The Anh', CAST(N'2022-05-24T00:00:00.000' AS DateTime), N'Health insurance is a contract that requires an insurer to pay some or all of a person''s healthcare costs in exchange for a premium. More specifically, health insurance typically pays for medical, surgical, prescription drug, and sometimes dental expenses incurred by the insured. Health insurance can reimburse the insured for expenses incurred from illness or injury, or pay the care provider directly.It is often included in employer benefit packages as a means of enticing quality employees, with premiums partially covered by the employer but often also deducted from employee paychecks. The cost of health insurance premiums is deductible to the payer, and the benefits received are tax-free, with certain exceptions for S corporation employees.KEY TAKEAWAYSHealth insurance is a type of insurance coverage that pays for medical and surgical expenses incurred by the insured.Choosing a health insurance plan can be tricky because of plan rules regarding in- and out-of-network services, deductibles, copays, and more.Since 2010, the Affordable Care Act has prohibited insurance companies from denying coverage to patients with preexisting conditions and has allowed children to remain on their parents'' insurance plan until they reach the age of 26.Medicare and the Children''s Health Insurance Program (CHIP) are two public health insurance plans that target older individuals and children, respectively. Medicare also serves people with certain disabilities.How Health Insurance WorksHealth insurance can be tricky to navigate. Managed care insurance plans require policyholders to receive care from a network of designated healthcare providers for the highest level of coverage. If patients seek care outside the network, they must pay a higher percentage of the cost. In some cases, the insurance company may even refuse payment outright for services obtained out of network.Many managed care plans—for example, health maintenance organizations (HMOs) and point-of-service plans (POS)—require patients to choose a primary care physician who oversees the patient''s care, makes recommendations about treatment, and provides referrals for medical specialists. Preferred-provider organizations (PPOs), by contrast, don''t require referrals but do have lower rates for using in-network practitioners and services.1Insurance companies may also deny coverage for certain services that were obtained without preauthorization. In addition, insurers may refuse payment for name-brand drugs if a generic version or comparable medication is available at a lower cost. All these rules should be stated in the material provided by the insurance company and should be carefully reviewed. It''s worth checking with employers or the company directly before incurring a major expense.Increasingly, health insurance plans also have copays, which are set fees that plan subscribers must pay for services such as doctor visits and prescription drugs; deductibles that must be met before health insurance will cover or pay for a claim; and coinsurance, a percentage of healthcare costs that the insured must pay even after they''ve met their deductible (and before they reach their out-of-pocket maximum for a given period).2Insurance plans with higher out-of-pocket costs generally have smaller monthly premiums than plans with low deductibles. When shopping for plans, individuals must weigh the benefits of lower monthly costs against the potential risk of large out-of-pocket expenses in the case of a major illness or accident.TIPIf you''re self-employed, you may be able to deduct up to 100% of health insurance premiums you pay out of pocket.High-Deductible Health Plans (HDHP)One increasingly popular type of health insurance is a high-deductible health plan (HDHP). These insurance plans are characterized by higher deductibles and lower premiums. For 2021, the IRS defines a high-deductible health plan as one that has deductibles of at least $1,400 for an individual or $2,800 for a family. Total out-of-pocket maximums are $7,000 for an individual and $14,000 for a family.3For 2022, the deductible limits will remain the same. But the out-of-pocket maximums will increase to $7,050 and $14,100, respectively.3 Out-of-pocket maximums don''t apply to out-of-network services.High-deductible health plans offer a unique advantage in that if you have one, you''re permitted to open—and contribute pretax income to—a health savings account, which can be used to pay for qualified medical expenses. These plans offer a triple tax benefit in that:Contributions are tax-deductible.Contributions grow on a tax-deferred basis.Qualified withdrawals for healthcare expenses are tax-free.4In addition to health insurance, ill people who qualify can get help from a number of auxiliary products available on the market. These include disability insurance, critical (catastrophic) illness insurance, and long-term care (LTC) insurance.NoteYou can withdraw money from an HSA after age 65 for any reason with no penalty, though you will pay income tax on the withdrawal if the money is not used for qualified medical expenses.Special ConsiderationsIn 2010, President Barack Obama signed the Affordable Care Act (ACA) into law. In participating states, the act expanded Medicaid, a government program that provides medical care for individuals with very low incomes. In addition to these changes, the ACA established the federal Health Insurance Marketplace.5 It also prohibited insurance companies from denying coverage to patients with preexisting conditions and allowed children to remain on their parents'' insurance plan until they reach the age of 26.6The Marketplace helps individuals and businesses shop for quality insurance plans at affordable rates. Insurance available through the ACA Marketplace is mandated by the law to cover 10 essential health benefits. Through the HealthCare.gov website, shoppers can find the Marketplace in their state. Eligible insured may qualify for a premium tax credit to help offset the cost of health insurance purchased through the federal marketplace.Changes in the Affordable Care ActUnder the ACA, Americans were required to carry medical insurance that meets federally designated minimum standards or face a tax penalty, but Congress removed that penalty in December 2017.7 A Supreme Court ruling in 2012 struck down an ACA provision that required states to expand Medicaid eligibility as a condition for receiving federal Medicaid funding, and a number of states chose to refuse expansion.8 As of 2021, an estimated 31 million people have health coverage through the Affordable Care Act.9Medicare and CHIPTwo public health insurance plans, Medicare and the Children''s Health Insurance Program (CHIP), target older individuals and children (respectively) who need help with health insurance. Medicare, which is available to those age 65 or older, also serves people with certain disabilities. The CHIP plan has income limits and covers babies and children up to the age of 18.10 Though Medicaid can help older seniors to pay for long-term care in a nursing home, Medicare does not.What Is Health Insurance and Why Do You Need It?Health insurance is an agreement you make with an insurer to have them pay for some or all of your medical expenses in exchange for a premium. Having health insurance can keep you from incurring medical bills you can''t afford to pay out of pocket.Who Needs Health Insurance?The simple answer is everyone. Health insurance can help to offset the costs of minor medical issues or major ones, including surgeries or treatment for life-threatening illnesses. But if you don''t have health insurance, you won''t be penalized for it under the terms of the Affordable Care Act.How Do You Get Health Insurance?If your employer offers health insurance as part of an employee benefits package, you may be covered by it. You can also purchase health insurance through the Health Insurance Marketplace. Certain individuals may qualify for health insurance coverage through Medicaid or Medicare programs.How Much Does Health Insurance Cost?Your costs for health insurance can vary based on the scope of coverage, the type of plan you have, and your deductibles. Copays and coinsurance can also add to the cost, so it''s important to consider what you''ll pay before enrolling in a healthcare plan.', N'\assets\product-images\hagl-1554335005576.jpg')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([ID], [Total], [ContractID]) VALUES (19, 0.0000, 28)
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[PeriodicPaymentMethods] ON 

INSERT [dbo].[PeriodicPaymentMethods] ([ID], [Name], [NumberOfMonth]) VALUES (1, N'Season', 3)
INSERT [dbo].[PeriodicPaymentMethods] ([ID], [Name], [NumberOfMonth]) VALUES (2, N'Monthly', 1)
INSERT [dbo].[PeriodicPaymentMethods] ([ID], [Name], [NumberOfMonth]) VALUES (3, N'Yearly', 12)
INSERT [dbo].[PeriodicPaymentMethods] ([ID], [Name], [NumberOfMonth]) VALUES (4, N'Semiannual', 6)
SET IDENTITY_INSERT [dbo].[PeriodicPaymentMethods] OFF
GO
SET IDENTITY_INSERT [dbo].[Policies] ON 

INSERT [dbo].[Policies] ([ID], [Name], [Description], [Created_at], [Updated_at], [InsuranceId]) VALUES (1, N'Life Insurance Policy', N'Life insurance protects the people that are financially dependent on you. If your parents, spouse, children, or other loved ones would face financial hardship if you died, life insurance should be high on your list of required insurance policies. Think about how much you earn each year (and the number of years you plan to remain employed), and purchase a policy to replace that income in the event of your untimely demise. Factor in the cost of burial too, as the unexpected cost is a burden for many families.', CAST(N'2022-05-24T15:25:31.767' AS DateTime), NULL, 1)
INSERT [dbo].[Policies] ([ID], [Name], [Description], [Created_at], [Updated_at], [InsuranceId]) VALUES (2, N'Long-Term Disability Insurance', N'The prospect of long-term disability (LTD) is so frightening that some people choose to ignore it. While we all hope that "nothing will happen to me," relying on hope to protect your future earning power is not a good idea. Instead, choose a disability policy that provides enough coverage to enable you to enjoy your current lifestyle even if you can no longer continue working. 

Long-term disability provides a monetary benefit equal to a portion (e.g., 50% or 60%) of the insured''s salary for covered disabilities. Long-term disability typically begins when short-term disability ends. To receive benefits, the disability must have occurred after the policy''s issuance and then, typically after a waiting period. Medical information, often confirmed by a physician, must be provided to the insurer for consideration.

Most long-term disability insurance policies categorize disabilities as own occupation or any occupation.1 Own occupation means the insured, due to disability, is unable to perform their regular job or a similar job. Any occupation means the insured, due to disability, is unable to perform any job for which they are qualified.

Similar to short and long-term disability insurance, workers'' compensation, or workers'' comp, it pays a monetary benefit to workers who become injured or disabled at work or while performing their jobs. Most states require employers to carry workers'' compensation insurance for their employees. In exchange, employees may not sue their employer for negligence.

While long-term disability insurance and workers'' compensation insurance both pay for disabilities, long-term disability insurance is not limited to disabilities or injuries occurring at work or while working.', CAST(N'2022-05-24T15:25:59.190' AS DateTime), NULL, 10)
INSERT [dbo].[Policies] ([ID], [Name], [Description], [Created_at], [Updated_at], [InsuranceId]) VALUES (3, N'Health Insurance', N'The soaring cost of medical care is reason enough to make health insurance a necessity. Even a simple visit to the family doctor can result in a hefty bill. More serious injuries that result in a hospital stay can generate a bill that tops the price of a one-week stay at a luxury resort. Injuries that require surgery can quickly rack up five-figure costs. Although the cost of health insurance is a financial burden for just about everyone, the potential cost of not having coverage is much higher. ', CAST(N'2022-05-24T15:27:08.030' AS DateTime), NULL, 15)
SET IDENTITY_INSERT [dbo].[Policies] OFF
GO
SET IDENTITY_INSERT [dbo].[Replies] ON 

INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (1, N'When you apply for an insurance policy, you will be asked a number of questions. For example, the agent might ask you your name, age, gender, address, etc. In addition, you will be asked a number of other questions which will be used to determine how likely you are to make a claim.When an insurance company is deciding whether or not to offer car insurance to a potential customer, they will want to know about the person’s previous driving record, whether the driver has any recent accidents or tickets, and what type of car is to be insured.Insurance companies have different programs for different customers. Adults with good driving records will generally pay less for auto insurance than will a young driver with traffic tickets. In order to determine which program you qualify for, an insurance company needs basic information about you.In addition to your age, gender and driving experience, information about the vehicle you drive, and how you drive it, is also needed to determine a fair price. For example, a large luxury car costs more to repair or replace than a sub-compact; and, someone who commutes 30 miles each way is more likely to be in an accident than someone who rides the bus to work and drives only on weekends.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 4)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (4, N'Most states have insurance laws that require drivers to have at least some automobile liability insurance. These laws were enacted to ensure that victims of automobile accidents receive compensation when their losses are caused by the actions of another individual who was negligent.

It is often the case that the cost of repairing the damages to an older car is greater than its value. In these cases, your insurer will usually just “total” the car and give you a check for the car’s market value less the deductible. Many people with older cars decide not to purchase any physical damage coverage.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 2)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (5, N'By using an agent to purchase insurance, the policyholder receives more personal service. An agent with whom there is direct contact can be vital when purchasing a product and absolutely necessary when filing a claim. A local, independent agent is able to deliver quality insurance with competitive pricing and local personalized service.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 3)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (7, N'A number of factors can affect the cost of your automobile insurance – some of which you can control and some that are beyond your control.

The type of car you drive, the purpose the car serves, your driving record, and where the car is garaged can all affect how much your automobile insurance will cost you.

Even your marital status can affect your cost of insurance. Statistics show that married people tend to have fewer and less costly accidents than do single people.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 4)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (8, N'There are a number of things you can do to lower the cost of your homeowners insurance. The easiest thing to do is get a comprehensive review of your policy and needs from your local agent.

It is not surprising to find quotes on homeowners insurance that vary by hundreds of dollars for the same coverage on the same home. When you shop, be careful to make sure each insurer is offering the same coverage.

Another way to lower the cost of your homeowners insurance is to look for any discounts that you may qualify for. For example, many insurers will offer a discount when you place both your automobile and homeowners insurance with them. Other times, insurers offer discounts if there are deadbolt exterior locks on all your doors, or if your home has a security system. Be sure to ask us about any discounts for which you may qualify

Another easy way to lower the cost of your homeowners insurance is to raise your deductible. Increasing your deductible from $250 to $500 will lower your premium, sometimes by as much as five or ten percent.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 5)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (9, N'The typical homeowners policy has two main sections: Section I covers the property of the insured and Section II provides personal liability coverage for the insured. Almost anyone who owns or leases property has a need for this type of insurance. Usually, homeowners insurance is required by the lender to obtain a mortgage.

Make sure to read Understanding Your Homeowners Insurance Policy for more information.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 6)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (10, N'Covered losses under a homeowners policy can be paid on either an actual cash value basis or on a replacement cost basis. When “actual cash value” is used, the policy owner is entitled to the depreciated value of the damaged property. Under the “replacement cost” coverage, the policy owner is reimbursed an amount necessary to replace the article with one of similar type and quality at current prices.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 7)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (11, N'There are a number of factors you should consider when purchasing any product or service, and insurance is no different.

Here is a checklist of things you should consider when you purchase homeowners insurance:

Determine the amount and type of insurance that you need. The coverage limit of your house should equal 100% of its replacement cost. If your policy limit is less than 80% of the replacement cost of your home, any payment from your insurance company will be less than the full cost to replace your home – you’ll have to pay the rest out of your own pocket. Also, decide if the personal property and personal liability limits are adequate for your needs.
Determine which, if any, additional endorsements you want to add to your policy. For example, do you want the personal property replacement cost endorsement, an earthquake endorsement or a jewelry endorsement?
Once you have decided on the coverage you want in your homeowners insurance policy, consult us. We will be able to help you determine if there are any gaps in coverage you might not have been aware of, explain the details of the policy’s exclusions and limitations as well as recommend an insurance company that will live up to your expectations.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 8)
INSERT [dbo].[Replies] ([ID], [Answer], [Created_at], [Updated_at], [FAQsID]) VALUES (12, N'Note: this answer is based on the Insurance Services Office’s HO-3 policy.

The dwelling and other structures on the premises are protected on an “all risks” basis up to the policy limits. “All risks” means that unless the policy specifically excludes the manner in which your home is damaged or destroyed, there is coverage. The policy limit for the dwelling is set by the policyowner at the time the insurance is purchased. The policy limit for the other structure is usually equal to 10% of the policy limit for the dwelling.

Losses to your personal property are covered on a “named perils” basis. “Named perils” means that you have coverage only when your property is damaged or destroyed in the manner specifically described in the policy. The policy limit on the coverage is equal to 50% of the policy limit on the dwelling. Limits for the coverage for the additional expenses that the policyowner may incur when the residence cannot be used because of an insured loss is equal to 20% of the policy limit on the dwelling.

The coverage limit on personal liability is determined by the policyowner at the time the policy is issued. The coverage limit on medical payments to others is usually set at $1000 per injured person.', CAST(N'2022-05-26T23:15:34.420' AS DateTime), CAST(N'2022-05-27T22:42:47.000' AS DateTime), 9)
SET IDENTITY_INSERT [dbo].[Replies] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Contracts] ADD  CONSTRAINT [DF_Contracts_Duration]  DEFAULT ((1)) FOR [Duration]
GO
ALTER TABLE [dbo].[Contracts] ADD  CONSTRAINT [DF_Contracts_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Contracts] ADD  CONSTRAINT [DF_Contracts_Total]  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[FAQs] ADD  CONSTRAINT [DF_FAQs_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Feedbacks] ADD  CONSTRAINT [DF_Feedbacks_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Insurances] ADD  CONSTRAINT [DF_Insurances_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Insurances] ADD  CONSTRAINT [DF_Insurances_Amount]  DEFAULT ((1)) FOR [Amount]
GO
ALTER TABLE [dbo].[Insurances] ADD  CONSTRAINT [DF_Insurances_Claim]  DEFAULT ((1)) FOR [Claim]
GO
ALTER TABLE [dbo].[Loans] ADD  CONSTRAINT [DF_Loans_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[PaymentDetails] ADD  CONSTRAINT [DF_PaymentDetails_PaidAmount]  DEFAULT ((0)) FOR [PaidAmount]
GO
ALTER TABLE [dbo].[PaymentDetails] ADD  CONSTRAINT [DF_PaymentDetails_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [DF_Payments_Total]  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[Policies] ADD  CONSTRAINT [DF_Policies_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Replies] ADD  CONSTRAINT [DF_Replies_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Customers]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Insurances] FOREIGN KEY([InsuranceID])
REFERENCES [dbo].[Insurances] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Insurances]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Customers]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Insurances] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[Insurances] ([ID])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Insurances]
GO
ALTER TABLE [dbo].[Insurances]  WITH CHECK ADD  CONSTRAINT [FK_Insurances_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Insurances] CHECK CONSTRAINT [FK_Insurances_Categories]
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [FK_Loans_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [FK_Loans_Customers]
GO
ALTER TABLE [dbo].[PaymentDetails]  WITH CHECK ADD  CONSTRAINT [FK_PaymentDetails_Payments] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payments] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentDetails] CHECK CONSTRAINT [FK_PaymentDetails_Payments]
GO
ALTER TABLE [dbo].[PaymentDetails]  WITH CHECK ADD  CONSTRAINT [FK_PaymentDetails_PeriodicPaymentMethods] FOREIGN KEY([PeriodicID])
REFERENCES [dbo].[PeriodicPaymentMethods] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentDetails] CHECK CONSTRAINT [FK_PaymentDetails_PeriodicPaymentMethods]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Contracts] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contracts] ([ID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Contracts]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_Insurances] FOREIGN KEY([InsuranceId])
REFERENCES [dbo].[Insurances] ([ID])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_Insurances]
GO
ALTER TABLE [dbo].[Replies]  WITH CHECK ADD  CONSTRAINT [FK_Replies_FAQs1] FOREIGN KEY([FAQsID])
REFERENCES [dbo].[FAQs] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Replies] CHECK CONSTRAINT [FK_Replies_FAQs1]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [check_expired_date] CHECK  ((datepart(year,[contracts].[Expired_at])>datepart(year,[contracts].[Created_at])))
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [check_expired_date]
GO
USE [master]
GO
ALTER DATABASE [InsuranceOnline] SET  READ_WRITE 
GO
