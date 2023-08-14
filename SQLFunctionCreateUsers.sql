USE aero
GO
/*
CREATE FUNCTION CapitalWord
(
	@word VARCHAR
)
RETURNS VARCHAR
AS
BEGIN
	DECLARE @wordNew VARCHAR;
	SET @wordNew = UPPER(LEFT(@word, 1)) + LOWER(RIGHT(@word, LEN(@word) - 1));
	RETURN @wordNew;
END;
GO
*/

--SELECT dbo.CapitalWord('hello')
--DECLARE @s CHAR(10);
--SET @s = 'hello';
--SET @s2 = SUBSTRING(@s, 0, 1);
--PRINT @s

--SELECT CONVERT(VARCHAR(100), @s);
--SELECT dbo.CapitalWord(CONVERT(VARCHAR(100), plane)) FROM Trip
