SELECT * 
FROM [Sales].[SalesOrderDetail]

SELECT 
* FROM [HumanResources].[Employee] 


SELECT BirthDate,
	   DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM [HumanResources].[Employee]