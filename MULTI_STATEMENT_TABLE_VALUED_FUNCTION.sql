CREATE TABLE Mike
(
	ID INT, 
	values_insert nvarchar(100)
)

DECLARE @cnt INT
SET @cnt = 0

WHILE @cnt < 1000
	BEGIN
		INSERT INTO Mike
		SELECT @cnt + 1, @cnt
	SET @cnt = @cnt + 1 -- loop step
END

GO

CREATE FUNCTION tbfEstimatedRows(@ID INT)

RETURNS @IDS TABLE
(
	ID INT NOT NULL, 
	values_insert NVARCHAR(100) NOT NULL
)
AS
BEGIN
	INSERT INTO @IDS
	SELECT ID, values_insert
	FROM Mike
	WHERE ID >= @ID
	RETURN
END
GO

SELECT * FROM [dbo].[tbfEstimatedRows](0)

