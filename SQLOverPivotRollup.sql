/*
SELECT *,
	SUM(price) OVER (PARTITION BY brand) AS [SUM],
	AVG(price) OVER (PARTITION BY brand) AS [AVG]
	FROM Products
*/

/*
SELECT *,
	RANK() OVER (PARTITION BY brand ORDER BY price) AS [rank]
	FROM Products
*/

/*
SELECT b.title, 
		AVG(p.price) AS [Avg price]
	FROM Products AS p
	LEFT JOIN Brands AS b ON p.brand = b.id
	GROUP BY b.title

SELECT 'Avg price' AS [AVG PRICE], [Apple], [Mail Group], [Microsoft]
	FROM
		(SELECT b.title, p.price
			FROM Products AS p
			JOIN Brands AS b ON p.brand = b.id) AS SourceTable
	PIVOT (AVG(price) FOR title IN ([Apple], [Mail Group], [Microsoft])) AS PivotTable;
*/

/*
SELECT brand, SUM(p.price) AS [Sum]
	FROM Products AS p
	GROUP BY brand

SELECT brand, SUM(p.price) AS [Sum]
	FROM Products AS p
	GROUP BY 
	ROLLUP (brand)
*/

/*
SELECT title, brand, SUM(price) AS [summa]
	FROM Products
	GROUP BY
	ROLLUP (brand, title)

SELECT title, brand, SUM(price) AS [summa]
	FROM Products
	GROUP BY
	CUBE (title, brand)
*/

SELECT title, brand, SUM(price) AS [summa]
	FROM Products
	GROUP BY
	GROUPING SETS (brand, title)
