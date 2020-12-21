USE [AdventureWorks2014]
GO

/****** Object:  StoredProcedure [dbo].[usp_UpdatePerson]    Script Date: 21/12/2020 10:18:52 SA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_UpdatePerson]

@BusinessEntityID INT,
@PersonType nchar(2),
@NameStyle bit,
@Title nvarchar(8),
@FirstName nvarchar(50),
@MiddleName nvarchar(50),
@LastName nvarchar(50),
@EmailPromotion int

AS

UPDATE [Person].[Person]
SET PersonType = @PersonType, NameStyle = @NameStyle, Title = @Title, FirstName = @FirstName, MiddleName = @MiddleName, LastName = @LastName, EmailPromotion = @EmailPromotion
WHERE BusinessEntityID = @BusinessEntityID
GO

-- The WHERE condition takes precedence, 20778 when exec


