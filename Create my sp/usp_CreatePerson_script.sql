USE [AdventureWorks2014]
GO

/****** Object:  StoredProcedure [dbo].[usp_CreatePerson]    Script Date: 21/12/2020 10:17:51 SA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_CreatePerson]

@BusinessEntityID INT,
@PersonType nchar(2),
@NameStyle bit,
@Title nvarchar(8),
@FirstName nvarchar(50),
@MiddleName nvarchar(50),
@LastName nvarchar(50),
@EmailPromotion int

AS 

INSERT INTO [Person].[Person] (BusinessEntityID, PersonType, NameStyle, Title, FirstName, MiddleName, LastName, EmailPromotion)
SELECT @BusinessEntityID, @PersonType, @NameStyle, @Title, @FirstName, @MiddleName, @LastName, @EmailPromotion
GO


