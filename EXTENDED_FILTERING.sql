SELECT NationalIDNumber, LoginID
FROM [HumanResources].[Employee]
WHERE BirthDate >= '1962-1-1' AND BirthDate <= '1985-12-31'

SELECT NationalIDNumber, LoginID
FROM [HumanResources].[Employee]
WHERE BirthDate BETWEEN '1962-1-1' AND '1985-12-31'

SELECT * FROM [Production].[Product]
WHERE ProductSubcategoryID IN (1, 2, 3)

SELECT * FROM [Production].[Product] 
WHERE ProductSubcategoryID IN (
	SELECT ProductSubcategoryID
	FROM [Production].[ProductSubcategory]
	WHERE ProductCategoryID IN (1, 2)
)