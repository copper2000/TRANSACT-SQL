SELECT * FROM [HumanResources].[Employee]
WHERE MaritalStatus = 'M' AND VacationHours > 25

SELECT * FROM [HumanResources].[Employee]
WHERE MaritalStatus = 'M' OR VacationHours > 25

SELECT * FROM [HumanResources].[Employee]
WHERE NOT SalariedFlag = 1