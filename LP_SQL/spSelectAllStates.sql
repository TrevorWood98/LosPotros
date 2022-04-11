USE [F20_kstrevwoo]
GO

/****** Object:  StoredProcedure [dbo].[spSelectAllStates]    Script Date: 12/7/2020 9:48:21 PM ******/
DROP PROCEDURE [dbo].[spSelectAllStates]
GO

/****** Object:  StoredProcedure [dbo].[spSelectAllStates]    Script Date: 12/7/2020 9:48:21 PM ******/
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


