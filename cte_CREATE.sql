WITH cteAllCustomers
AS
(SELECT * FROM Customer)
SELECT * FROM Customer

-- WITH = CREATE PROC 
-- -> but WITH doesn't create new procedure, you can exec it directly without call a new procedure

CREATE PROC cteProc
AS 
SELECT * FROM Customer

exec cteProc

