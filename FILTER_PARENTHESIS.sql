SELECT Name, ProductNumber, ListPrice, ProductSubcategoryID
FROM [Production].[Product]
WHERE (ProductSubcategoryID = 1 AND ListPrice > 1000)
OR (ProductSubcategoryID = 2 AND ListPrice > 500)