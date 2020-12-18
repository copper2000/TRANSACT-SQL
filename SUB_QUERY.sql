SELECT 
	ProductID, 
	UnitPrice, 
	(SELECT AVG(UnitPrice) FROM [Sales].[SalesOrderDetail]) AS AvgPrice
FROM [Sales].[SalesOrderDetail]

SELECT
	ProductID,
	UnitPrice - (SELECT AVG(UnitPrice) FROM [Sales].[SalesOrderDetail]) AS AvgPriceDiff,
	(SELECT AVG(UnitPrice) FROM [Sales].[SalesOrderDetail]) AS AvgPrice
FROM [Sales].[SalesOrderDetail]