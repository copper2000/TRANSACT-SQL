USE [AdventureWorks2014]
GO

/****** Object:  StoredProcedure [dbo].[usp_GetPersonById]    Script Date: 21/12/2020 10:19:29 SA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetPersonById]
@BusinessEntityID INT
AS 
SELECT * FROM [Person].[Person] WHERE BusinessEntityID = @BusinessEntityID
GO


