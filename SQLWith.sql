-- CTE - common table expression
-- WITH

/*
WITH brand3 AS
(
SELECT *
	FROM Products
	WHERE brand = 3
)

SELECT * FROM brand3
*/

/*
WITH brnd AS 
(
	SELECT * FROM Brands WHERE id >=2 AND id <= 4
)

SELECT p.id, p.title, b.title AS brand
	-- INTO tmp_table
	FROM Products AS p,
		brnd AS b
	WHERE b.id = p.brand
*/
	