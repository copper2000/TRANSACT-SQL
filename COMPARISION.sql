SELECT p.Name, p.ListPrice
FROM [Production].[Product] p
WHERE ListPrice > 100
ORDER BY ListPrice DESC    