-- convert varchar to float using CONVERT
SELECT CONVERT(FLOAT, '123.4');

-- convert varchar to int using CAST
SELECT CAST('123.4' AS decimal(9, 2))

SELECT CONVERT(varchar(50), GETDATE(), 100) AS [Default Date]

SELECT CONVERT(varchar(50), GETDATE(), 101) AS [US Date]

SELECT CONVERT(varchar(50), GETDATE(), 103) AS [VN Date]



