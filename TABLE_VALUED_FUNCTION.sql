CREATE FUNCTION tbfReturnFirstName (@LastName nvarchar(15))
RETURNS table
AS 
RETURN
(SELECT * FROM [dbo].[Customer] WHERE [LastName] = @LastName )

GO

SELECT * FROM [dbo].[tbfReturnFirstName]('Watson')


-- My custom function
CREATE FUNCTION tbfSearchByOrderItem (@Item nvarchar(50))
RETURNS table
AS RETURN 
(SELECT * FROM [dbo].[Orders] WHERE [OrderItem] LIKE '%' + @Item + '%')

GO

SELECT * FROM [dbo].[tbfSearchByOrderItem]('cod')
