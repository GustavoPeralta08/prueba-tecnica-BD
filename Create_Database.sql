USE [Wheelzy]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/13/2021 1:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/13/2021 1:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [datetime2](7) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[CantProduct] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/13/2021 1:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[CantxProdut] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/13/2021 1:01:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[SubCategory] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211207214705_Initial', N'5.0.12')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211209164156_modificacion', N'5.0.12')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211209180457_orderAndOrderDetail', N'5.0.12')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211209180844_OrderAndOrderDetail', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderId], [DateOrder], [TotalAmount], [CantProduct]) VALUES (16, CAST(N'2021-11-10T21:56:20.0000000' AS DateTime2), CAST(100.80 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[Order] ([OrderId], [DateOrder], [TotalAmount], [CantProduct]) VALUES (17, CAST(N'2021-12-12T22:05:28.0000000' AS DateTime2), CAST(282.00 AS Decimal(18, 2)), 11)
GO
INSERT [dbo].[Order] ([OrderId], [DateOrder], [TotalAmount], [CantProduct]) VALUES (20, CAST(N'2021-12-13T12:02:08.0000000' AS DateTime2), CAST(91.00 AS Decimal(18, 2)), 4)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [CantxProdut], [OrderId], [ProductId]) VALUES (27, 2, 16, 32)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [CantxProdut], [OrderId], [ProductId]) VALUES (28, 2, 16, 33)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [CantxProdut], [OrderId], [ProductId]) VALUES (29, 5, 17, 32)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [CantxProdut], [OrderId], [ProductId]) VALUES (30, 6, 17, 33)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [CantxProdut], [OrderId], [ProductId]) VALUES (31, 2, 20, 33)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailId], [CantxProdut], [OrderId], [ProductId]) VALUES (32, 2, 20, 34)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [Code], [Description], [Category], [SubCategory], [Price], [Status]) VALUES (32, N'AAA1', N'Mouse Deathadder', N'Razer', N'Mouse', CAST(20.40 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Product] ([ProductId], [Code], [Description], [Category], [SubCategory], [Price], [Status]) VALUES (33, N'AAA2', N'Mouse Naga Chroma', N'Razer', N'Mouse', CAST(30.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Product] ([ProductId], [Code], [Description], [Category], [SubCategory], [Price], [Status]) VALUES (34, N'AAA3', N'Teclado WidowMaker', N'Logitech', N'Teclado', CAST(15.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Product] ([ProductId], [Code], [Description], [Category], [SubCategory], [Price], [Status]) VALUES (35, N'BBB1', N'Monitor Phillips', N'Phillips', N'Monitor', CAST(23.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Product] ([ProductId], [Code], [Description], [Category], [SubCategory], [Price], [Status]) VALUES (36, N'BBB2', N'Monitor BenQ 24''', N'BenQ', N'Monitor', CAST(55.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Product] ([ProductId], [Code], [Description], [Category], [SubCategory], [Price], [Status]) VALUES (37, N'NNN1', N'Notebook Lenovo i5', N'Lenovo', N'Notebook', CAST(120.00 AS Decimal(18, 2)), 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_OrderId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product_ProductId]
GO
