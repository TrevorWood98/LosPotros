USE [F20_kstrevwoo]
GO

/****** Object:  StoredProcedure [dbo].[spSelectUserByCredentials]    Script Date: 12/7/2020 9:45:34 PM ******/
DROP PROCEDURE [dbo].[spSelectUserByCredentials]
GO

/****** Object:  StoredProcedure [dbo].[spSelectProductByID]    Script Date: 12/7/2020 9:45:34 PM ******/
DROP PROCEDURE [dbo].[spSelectProductByID]
GO

/****** Object:  StoredProcedure [dbo].[spSelectAllStates]    Script Date: 12/7/2020 9:45:34 PM ******/
DROP PROCEDURE [dbo].[spSelectAllStates]
GO

/****** Object:  StoredProcedure [dbo].[spSelectAllProducts]    Script Date: 12/7/2020 9:45:34 PM ******/
DROP PROCEDURE [dbo].[spSelectAllProducts]
GO

/****** Object:  StoredProcedure [dbo].[spInsertUser]    Script Date: 12/7/2020 9:45:34 PM ******/
DROP PROCEDURE [dbo].[spInsertUser]
GO

/****** Object:  StoredProcedure [dbo].[spInsertMyOrder]    Script Date: 12/7/2020 9:45:34 PM ******/
DROP PROCEDURE [dbo].[spInsertMyOrder]
GO

/****** Object:  StoredProcedure [dbo].[spInsertMyOrder]    Script Date: 12/7/2020 9:45:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[spInsertMyOrder]
@UserID int,

@ShippingFirstName varchar(50),
@ShippingLastName varchar(50),
@ShippingAddress1 varchar(100),
@ShippingAddress2 varchar(50),
@ShippingCity varchar(50), 
@ShippingStateID int,
@ShippingZip varchar(10),
@OrderHeaderID int output,
@OrderItems OrderItemsTableType READONLY
as
BEGIN
Insert Into OrderHeader
(UserID, OrderDate, ShippingFirstName,ShippingLastName, ShippingAddress1, ShippingAddress2, ShippingCity, ShippingStateID,ShippingZip)

values
(@UserID,GETDATE(), @ShippingFirstName, @ShippingLastName,@ShippingAddress1, @ShippingAddress2,
@ShippingCity, @ShippingStateID, @ShippingZip);

Set @OrderHeaderID = SCOPE_IDENTITY();

Insert into OrderItems
(OrderHeaderID, ProductID, Quantity, UnitPrice)


Select @OrderHeaderID, ProductID, Quantity, UnitPrice from @OrderItems

END
GO

/****** Object:  StoredProcedure [dbo].[spInsertUser]    Script Date: 12/7/2020 9:45:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




create procedure [dbo].[spInsertUser]
@FirstName varchar(50),
@LastName varchar(50),
@Address1 varchar(100),
@Address2 varchar(50),
@City varchar(50),
@StateID int,
@Zipcode varchar(10),
@PhoneNumber varchar(14),
@Username varchar(100),
@UserPassword varchar(50),
@RecovereyEmail varchar(100)

as
BEGIN
	Insert into UserTable
(FirstName, LastName, Address1, Address2, City, StateID, Zipcode, PhoneNumber, Username, UserPassword, RecoveryEmail)
values
(@FirstName, @LastName, @Address1, @Address2, @City, @StateID, @Zipcode, @PhoneNumber, @Username, @UserPassword, @RecovereyEmail)
END
GO

/****** Object:  StoredProcedure [dbo].[spSelectAllProducts]    Script Date: 12/7/2020 9:45:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create Procedure [dbo].[spSelectAllProducts]
as
BEGIN
   Select ProductID, ProductName, UnitPrice
   from ProductTable
   Order By ProductName
END
GO

/****** Object:  StoredProcedure [dbo].[spSelectAllStates]    Script Date: 12/7/2020 9:45:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create Procedure [dbo].[spSelectAllStates]
as
BEGIN
Select StateID, StateName, StateAbbr
from StateTable
Order By StateAbbr
END
GO

/****** Object:  StoredProcedure [dbo].[spSelectProductByID]    Script Date: 12/7/2020 9:45:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



Create Procedure [dbo].[spSelectProductByID]
@ProductID int
as
BEGIN
Select ProductID, ProductName, ShortDesc, UnitPrice
   from ProductTable
   Where ProductID = @ProductID
   Order By ProductName
END
GO

/****** Object:  StoredProcedure [dbo].[spSelectUserByCredentials]    Script Date: 12/7/2020 9:45:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create Procedure [dbo].[spSelectUserByCredentials]
@Username varchar(100),
@UserPassword varchar(50)
as
BEGIN
Select UserID, FirstName, LastName, Address1, Address2, City, StateID, Zipcode, Username, UserPassword, RecoveryEmail,PhoneNumber
from UserTable
where Username = @Username and
UserPassword = @UserPassword

END
GO


