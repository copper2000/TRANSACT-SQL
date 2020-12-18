CREATE FUNCTION fx_SumTwoValues

(@Val1 int, @Val2 int)

RETURNS int AS 

BEGIN
RETURN (@Val1 + @Val2)
END

SELECT [dbo].[fx_SumTwoValues](2, 2) AS SumOfTwoValues

-- My custom function

CREATE FUNCTION fx_DivideTwoVars
(@var1 float, @var2 float)

RETURNS float AS

BEGIN
RETURN @var1 / @var2
END

SELECT [dbo].fx_DivideTwoVars(2, 3) AS DevideOfTwoValues