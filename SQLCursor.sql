USE aero

DECLARE @title VARCHAR(20),
		@price DECIMAL(8,2)

DECLARE my_cursor CURSOR SCROLL FOR
	SELECT p.title, p.price
	FROM Products AS p
	WHERE p.brand = 3

OPEN my_cursor

FETCH FROM my_cursor INTO @title, @price
WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT @title + ' ' + STR(@price)
	FETCH FROM my_cursor INTO @title, @price
END

CLOSE my_cursor
DEALLOCATE my_cursor
