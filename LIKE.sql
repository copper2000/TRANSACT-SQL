SELECT name, listprice
FROM Production.Product
WHERE ListPrice like '20%'

SELECT name, listprice
FROM Production.Product
WHERE ListPrice like '_0%'

SELECT *
FROM [HumanResources].[Department]
WHERE Name like 'E%'