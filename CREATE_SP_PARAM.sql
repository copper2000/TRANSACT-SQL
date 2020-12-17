CREATE PROCEDURE uspReturnCustomersOrderItem

@OrderItem nvarchar(50)

AS 
SELECT c.CustomerID, c.LastName, c.FirstName, c.Email
FROM Customer c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE @OrderItem = o.OrderItem

EXEC [dbo].[uspReturnCustomersOrderItem] 'oxycotin'
