USE [AdventureWorks2014]
GO

/****** Object:  StoredProcedure [dbo].[usp_GetPerson]    Script Date: 21/12/2020 10:20:26 SA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetPerson]
AS 
SELECT * FROM [Person].[Person]
GO


