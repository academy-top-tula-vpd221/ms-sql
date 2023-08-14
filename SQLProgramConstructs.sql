--DECLARE @name VARCHAR(50)
--DECLARE @age INT

--SET @name = 'Bobby';
--SET @age = 24;

--PRINT 'Name: ' + @name;
--PRINT 'Age: ' + CONVERT(VARCHAR, @age);

/*
DECLARE @company VARCHAR(20);
SET @company = 'Aeroflot';

DECLARE @company_id INT;
SET @company_id = (SELECT DISTINCT ID_comp
					FROM Company
					WHERE name = @company);

USE aero;

DECLARE @count_trips INT;
SET @count_trips =  (SELECT COUNT(*)
						FROM Trip
						WHERE ID_comp = @company_id);
IF @count_trips > 5
	BEGIN
		PRINT 'More that 5';
		PRINT 'More that 5';
	END
ELSE
	PRINT 'Less or eq that 5';

DECLARE @i INT;
SET @i = 0;

WHILE @i < 10
	BEGIN
		SET @i = @i + 1;
		IF @i = 3
			BREAK;
		SELECT * 
			FROM Trip AS t
			JOIN Company AS c ON t.ID_comp = c.ID_comp
			WHERE c.ID_comp = @i;
		
	END
*/

/*
DECLARE @price_avg DECIMAL(9, 2);
SET @price_avg = (SELECT AVG(price) FROM Products);
PRINT @price_avg;
SELECT *
	FROM Products
	WHERE price >= @price_avg;
*/


BEGIN TRY
	INSERT INTO Brands (title) VALUES(NULL);	
END TRY
BEGIN CATCH
	-- ERROR_NUMBER()
	-- ERROR_MESSAGE()
	-- ERROR_SEVERITY()
	-- ERROR_STATE()
	PRINT 'Error! Code:' + STR(ERROR_NUMBER())
					+ ' Message: ' + ERROR_MESSAGE()
					+ ' Severity: ' + STR(ERROR_SEVERITY())
					+ ' State: ' + STR(ERROR_SEVERITY());
END CATCH


