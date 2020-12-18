SELECT P.[ProductID], P.[Name], P.[ListPrice] 
FROM 
( 
	SELECT [ProductID], [Name], [ListPrice]
	FROM [Production].[Product]
	WHERE [ListPrice] > 0
) AS P

WITH cteNonFreeProduct ([ProductID], [Name], [ListPrice])

AS 
(
	SELECT [ProductID], [Name], [ListPrice]
	FROM [Production].[Product]
	WHERE [ListPrice] > 0
)

SELECT * FROM cteNonFreeProduct