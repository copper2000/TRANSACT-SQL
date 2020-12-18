SELECT [Name] FROM [Production].[Product]
WHERE EXISTS
		(
			SELECT SUM(UnitPrice) FROM [Sales].[SalesOrderDetail]
			WHERE [SalesOrderDetail].[ProductID] = [Product].[ProductID]
			HAVING SUM(UnitPrice) > 2000
		)
