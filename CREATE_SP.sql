CREATE PROC uspInsertCustomer

@FirstName		nvarchar(50),
@LastName		nvarchar(50),
@Email			nvarchar(50)

AS 

INSERT INTO [dbo].[Customer] (FirstName, LastName, Email)
SELECT @FirstName, @LastName, @Email

EXEC [dbo].[uspInsertCustomer] 'Slene', 'Watson', 'slenewatson@icloud.com'