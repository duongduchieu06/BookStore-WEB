create database [BookLibraryDB]
GO
USE [BookLibraryDB]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 7/20/2024 9:11:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[author_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[infomation] [nvarchar](max) NOT NULL,
	[brief_infomaton] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 7/20/2024 9:11:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[category_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[publisher] [nvarchar](50) NULL,
	[publication_date] [date] NULL,
	[quantity] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[rate] [float] NULL,
	[status] [bit] NULL,
	[Introduction] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 7/20/2024 9:11:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/20/2024 9:11:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/20/2024 9:11:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[BookId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/20/2024 9:11:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/20/2024 9:11:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[user_role] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (34, N'George Orwell', N'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTWrRIgqVbWML7m7z4nu8CsGQsAvkLc8TWHKFEv5op9fjL0Hut7YVvu8b8FsujcsYLai5Y7xxaUh3zGQtg', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (35, N'Agatha Christie', N'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQcCGKL16ixcUHi8TY3muCijEr5WcdnBtoKPbg1bmzT4-p_gxp_ODQck89n9PEAUtYbGd0gPU9tt4RM5q0', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (36, N'J.K. Rowling', N'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRasMeiLBRsfkpOZXaxXzFPJjc4NzatUhwJWH9ccwVrCPGjQqH56eDEXGoAs6ICHzPsyZn1BNUmlWon7nU', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (37, N'Ernest Hemingway', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKFvwn47ZHVVTxkuUclfyHgJiI_TDwtsU2o8C6Ct7a_76UaBPy', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (38, N'F. Scott Fitzgerald', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2X4glFr-zMUJyLrt8mIVG2vZA36ZDEgNMFzUyHCMoOkEYgaoQ', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (39, N'J.R.R. Tolkien', N'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQitvZZqWEqo-21UQL2NpIkxjDUnWP6pIi4GbBcu7lqQlB1fNaL', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (40, N'Mark Twain', N'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTp1vzUFCijPfV_vr1y6I--PU30o300U12r7cd6Dnkyp2j-ugIOjthmmKzART0rhrNtY0p-ZkHwL_T2Jik', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (41, N'Jane Austen', N'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRQZ3o-8Gel9Gzu272wu_xlW4E0r_8PQjkvFrujB-KiNYrnhErK', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (42, N'Charles Dickens', N'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQyxeiEF7nGavYVY9jH_hQTlJbQ-pt3R-xMl4XsKXLKD6Oejsdb', N'Contact Info', N'Official Bio')
INSERT [dbo].[Author] ([author_id], [fullname], [image], [infomation], [brief_infomaton]) VALUES (43, N'Leo Tolstoy', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnYWmqLUxe6crcIrP4xiA-0AOSwF_zqmMbSuZsvJCSX3EgaLDB', N'Contact Info', N'Official Bio')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (35, N'Echoes of the End', 2, 35, N'Collins Crime Club', CAST(N'1934-01-01' AS Date), 150, N'https://www.bookcoversart.com/wp-content/uploads/2024/07/Zombie-Apocalypse-Book-Cover-Echoes-of-the-End.jpg', 4.8, 1, N'A detective novel.', N'A Hercule Poirot mystery on a train.', 14.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (36, N'I Was Left for Dead', 3, 36, N'Bloomsbury', CAST(N'1997-06-26' AS Date), 200, N'https://www.bookcoversart.com/wp-content/uploads/2024/06/Crime-Thriller-Premade-Book-Cover-I-Was-Left-for-Dead.jpg', 4.9, 1, N'A fantasy novel.', N'The first book in the Harry Potter series.', 24.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (37, N'Rebel Nebulae', 1, 37, N'Charles Scribner''s Sons', CAST(N'1952-09-01' AS Date), 120, N'https://www.bookcoversart.com/wp-content/uploads/2024/06/Military-scifi-premade-book-cover-Rebel-Nebulae.jpg', 4.7, 1, N'A short novel.', N'The story of an aging fisherman.', 18.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (38, N'Dark Corners', 1, 38, N'Charles Scribner''s Sons', CAST(N'1925-04-10' AS Date), 130, N'https://www.bookcoversart.com/wp-content/uploads/2024/06/Mystery-Domestic-Thriller-Book-Cover-Dark-Corners.jpg', 4.6, 1, N'A novel.', N'A critique of the American Dream.', 15.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (39, N'Echoes of Regret', 3, 39, N'George Allen & Unwin', CAST(N'1937-09-21' AS Date), 170, N'https://www.bookcoversart.com/wp-content/uploads/2024/06/Crime-Thriller-Premade-Book-Cover-Echoes-of-Regret.jpg', 4.8, 1, N'A fantasy novel.', N'The prelude to The Lord of the Rings.', 22.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (40, N'Lament for Nymar', 1, 40, N'Chatto & Windus', CAST(N'1884-12-10' AS Date), 110, N'https://www.bookcoversart.com/wp-content/uploads/2024/06/Epic-Romance-Fantasy-Book-Cover-Lament-for-Nymar.jpg', 4.5, 1, N'A novel.', N'The adventures of a young boy and a runaway slave.', 12.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (41, N'The Dunwich Legacy', 1, 41, N'T. Egerton', CAST(N'1813-01-28' AS Date), 140, N'https://www.bookcoversart.com/wp-content/uploads/2024/04/Suspense-Horror-Thriller-Book-Cover-The-Dunwich-Legacy.jpg', 4.9, 1, N'A romantic novel.', N'A story about manners and matrimonial machinations.', 14.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (42, N'Dyson Uprising', 1, 42, N'Chapman & Hall', CAST(N'1859-04-30' AS Date), 160, N'https://www.bookcoversart.com/wp-content/uploads/2024/03/Space-Opera-Science-Fiction-Book-Cover-Dyson-Uprising.jpg', 4.7, 1, N'A historical novel.', N'A novel set in London and Paris before and during the French Revolution.', 13.99)
INSERT [dbo].[Book] ([book_id], [title], [category_id], [author_id], [publisher], [publication_date], [quantity], [image], [rate], [status], [Introduction], [Description], [Price]) VALUES (43, N'Fatal Game', 1, 43, N'The Russian Messenger', CAST(N'1869-01-01' AS Date), 100, N'https://www.bookcoversart.com/wp-content/uploads/2023/11/Fatal_Game_Crime_Thriller_Premade_Book_Cover.jpg', 4.9, 1, N'A historical novel.', N'A novel that chronicles the French invasion of Russia.', 25.99)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (1, N'Action', N'https://i.pinimg.com/originals/ce/7c/97/ce7c97041cae03bbbb1ae4b283de3bfe.jpg')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (2, N'Comedy', N'https://www.bookcoversart.com/wp-content/uploads/2020/07/Dark-Comedy-Horror-Book-Cover-Mr-Quiz.jpg')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (3, N'Adventure', N'https://www.bookcoversart.com/wp-content/uploads/2020/07/Thriller-Adventure-Book-Cover-The-6th-Plague.jpg')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (4, N'Crime', N'https://www.bookcoversart.com/wp-content/uploads/2021/05/Crime-Suspense-Thriller-Book-Cover-Chisel.jpg')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (5, N'Sci-Fiction', N'https://www.bookcoversart.com/wp-content/uploads/2023/07/Military_Sci-Fi_Cover_Der_letzte.jpg')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (10, N'Religion', N'https://www.bookcoversart.com/wp-content/uploads/2022/05/The_Enlightened_Illustrated_Fantasy_Book_Cover.jpg')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (11, N'Romance', N'https://www.bookcoversart.com/wp-content/uploads/2023/11/Illustrated-Romance-Book-Cover-A-Love-Unrequited.jpg')
INSERT [dbo].[Category] ([category_id], [category_name], [image]) VALUES (12, N'Wars', N'https://www.bookcoversart.com/wp-content/uploads/2024/03/Military-War-Thriller-Book-Cover-Redcon-One.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (36, 19, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (41, 18, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (42, 18, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (43, 17, 1)
INSERT [dbo].[OrderDetails] ([BookId], [OrderId], [Quantity]) VALUES (43, 19, 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (2, 2, CAST(N'2023-07-21T11:41:22.0535310' AS DateTime2), N'Cancelled', N'DH FPTs', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (3, 2, CAST(N'2023-07-22T17:03:05.4062570' AS DateTime2), N'Pending', N'Ha Noi', 50)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (4, 5, CAST(N'2023-07-24T08:54:36.7250017' AS DateTime2), N'Completed', N'HN', 15.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (5, 2, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (6, 2, CAST(N'2023-02-19T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (7, 2, CAST(N'2023-03-11T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (8, 2, CAST(N'2023-04-01T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (9, 2, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (10, 2, CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), N'Completed', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (11, 2, CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (12, 2, CAST(N'2023-09-02T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (13, 2, CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (14, 2, CAST(N'2023-11-25T00:00:00.0000000' AS DateTime2), N'Pending', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (15, 2, CAST(N'2023-12-09T00:00:00.0000000' AS DateTime2), N'Rejected', N'DH FPT', 32.99)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (16, 2, CAST(N'2023-07-24T09:13:09.4587692' AS DateTime2), N'Pending', N'DH FPT', 48)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (17, 1, CAST(N'2024-07-19T16:39:07.2973592' AS DateTime2), N'Pending', N'hn', 49.98)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (18, 1, CAST(N'2024-07-19T21:11:02.2028132' AS DateTime2), N'Pending', N'Hoa lac', 33.98)
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [Status], [Address], [Total]) VALUES (19, 1, CAST(N'2024-07-20T09:07:36.2808901' AS DateTime2), N'Pending', N'Hoa lac', 55.98)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (1, N'Trung', N'trung', N'123', N'trung@gmail.com', N'user', 1)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (2, N'Xanh', N'xanh', N'123', N'xanh@gmail.com', N'user', 1)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (3, N'Vinh', N'vinh', N'123', N'vinh@gmail.com', N'admin', 1)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (4, N'Khanh', N'khanh', N'123', N'khanh@gmail.com', N'admin', 1)
INSERT [dbo].[User] ([user_id], [fullname], [username], [password], [mail], [user_role], [status]) VALUES (5, N'Tuyen', N'tuyen', N'123', N'tuyen@gmail.com', N'admin', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Status]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Total]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([author_id])
REFERENCES [dbo].[Author] ([author_id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Book_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([book_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Book_BookId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_User_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Book_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([book_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Book_BookId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User_UserId]
GO
