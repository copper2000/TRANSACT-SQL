CREATE PROCEDURE uspReturnCustomersOrders
AS 
SELECT Customer.CustomerID, Customer.LastName, Customer.FirstName, Customer.Email
FROM Customer 
INNER JOIN Orders 
ON Customer.CustomerID = Orders.CustomerID

EXEC [dbo].[uspReturnCustomersOrders]


