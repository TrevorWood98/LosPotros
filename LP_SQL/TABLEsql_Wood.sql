USE [F20_kstrevwoo]
GO

ALTER TABLE [dbo].[UserTable] DROP CONSTRAINT [FK__UserTable__State__33D4B598]
GO

ALTER TABLE [dbo].[OrderItems] DROP CONSTRAINT [fkProductID]
GO

ALTER TABLE [dbo].[OrderItems] DROP CONSTRAINT [fkOrderHeaderID]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__UserI__6477ECF3]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__UserI__6383C8BA]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__UserI__628FA481]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__UserI__5DCAEF64]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__UserI__5CD6CB2B]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__UserI__5BE2A6F2]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__Shipp__619B8048]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__Shipp__60A75C0F]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__Shipp__5FB337D6]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__Shipp__5AEE82B9]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__Shipp__59FA5E80]
GO

ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK__OrderHead__Shipp__59063A47]
GO

/****** Object:  Table [dbo].[UserTable]    Script Date: 12/7/2020 1:17:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserTable]') AND type in (N'U'))
DROP TABLE [dbo].[UserTable]
GO

/****** Object:  Table [dbo].[StateTable]    Script Date: 12/7/2020 1:17:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StateTable]') AND type in (N'U'))
DROP TABLE [dbo].[StateTable]
GO

/****** Object:  Table [dbo].[ProductTable]    Script Date: 12/7/2020 1:17:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductTable]') AND type in (N'U'))
DROP TABLE [dbo].[ProductTable]
GO

/****** Object:  Table [dbo].[OrderItems]    Script Date: 12/7/2020 1:17:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderItems]') AND type in (N'U'))
DROP TABLE [dbo].[OrderItems]
GO

/****** Object:  Table [dbo].[OrderHeader]    Script Date: 12/7/2020 1:17:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderHeader]') AND type in (N'U'))
DROP TABLE [dbo].[OrderHeader]
GO

/****** Object:  Table [dbo].[OrderHeader]    Script Date: 12/7/2020 1:17:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderHeader](
	[OrderHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[ShippingFirstName] [varchar](50) NOT NULL,
	[ShippingLastName] [varchar](50) NOT NULL,
	[ShippingAddress1] [varchar](100) NOT NULL,
	[ShippingAddress2] [varchar](50) NULL,
	[ShippingCity] [varchar](50) NOT NULL,
	[ShippingStateID] [int] NOT NULL,
	[ShippingZip] [varchar](10) NULL,
	[UserID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[OrderItems]    Script Date: 12/7/2020 1:17:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderItems](
	[OrderItemsID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderHeaderID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ProductTable]    Script Date: 12/7/2020 1:17:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductTable](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[ShortDesc] [varchar](100) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[StateTable]    Script Date: 12/7/2020 1:17:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StateTable](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NOT NULL,
	[StateAbbr] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[UserTable]    Script Date: 12/7/2020 1:17:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserTable](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address1] [varchar](100) NOT NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[StateID] [int] NOT NULL,
	[Zipcode] [varchar](10) NOT NULL,
	[PhoneNumber] [varchar](14) NULL,
	[Username] [varchar](100) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[RecoveryEmail] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([ShippingStateID])
REFERENCES [dbo].[StateTable] ([StateID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([ShippingStateID])
REFERENCES [dbo].[StateTable] ([StateID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([ShippingStateID])
REFERENCES [dbo].[StateTable] ([StateID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([ShippingStateID])
REFERENCES [dbo].[StateTable] ([StateID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([ShippingStateID])
REFERENCES [dbo].[StateTable] ([StateID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([ShippingStateID])
REFERENCES [dbo].[StateTable] ([StateID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO

ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[UserTable] ([UserID])
GO

ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [fkOrderHeaderID] FOREIGN KEY([OrderHeaderID])
REFERENCES [dbo].[OrderHeader] ([OrderHeaderID])
GO

ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [fkOrderHeaderID]
GO

ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [fkProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductTable] ([ProductID])
GO

ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [fkProductID]
GO

ALTER TABLE [dbo].[UserTable]  WITH CHECK ADD FOREIGN KEY([StateID])
REFERENCES [dbo].[StateTable] ([StateID])
GO


