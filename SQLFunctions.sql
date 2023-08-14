-- VARCHAR
/*
SELECT LEN('Hello');

SELECT LTRIM('     Hello      ');
SELECT RTRIM('     Hello      ');
SELECT TRIM('     Hello      ');

SELECT CHARINDEX('or', 'Hello world');
SELECT PATINDEX('%w%', 'Hello world');

SELECT LEFT('Hello world', 5);
SELECT RIGHT('Hello world', 5);
SELECT SUBSTRING('Hello world', 3, 5);

SELECT REPLACE('hello world, hello people', 'hello', 'good by');
SELECT REVERSE('hello world, hello people');
SELECT CONCAT('hello ', 'world ', 'hello', ' ', 'people');

SELECT LOWER('HELLO');
SELECT UPPER('hello');

SELECT SPACE(10)

SELECT REPLICATE('*-*', 5)
*/

-- NUMBERS

/*
ABS()


SELECT ISNUMERIC(123)
SELECT ISNUMERIC('123.78e7')

ROUND() - правильное округление
CEILING() - наименьшее целое >= аргументу
FLOOR() - наибольшее целое <= аргументу
SQUARE() - квадрат числа
SQRT() - корень квадратный
RAND() - случайное число от 0 до 1

SELECT RADIANS(180)
*/

-- DATA TIME
/*
SELECT GETDATE()
SELECT SYSDATETIME()

SELECT DAY(GETDATE())
SELECT MONTH(GETDATE())
SELECT YEAR(GETDATE())

SELECT DATENAME(year, GETDATE())
SELECT DATENAME(month, GETDATE())
SELECT DATENAME(day, GETDATE())

SELECT DATENAME(dayofyear, GETDATE())
SELECT DATENAME(week, GETDATE())
SELECT DATENAME(weekday, GETDATE())

SELECT DATENAME(hour, GETDATE())
SELECT DATENAME(minute, GETDATE())
SELECT DATENAME(second, GETDATE())

SELECT DATEPART(year, GETDATE())
SELECT DATEPART(month, GETDATE())
SELECT DATEPART(day, GETDATE())

SELECT DATEPART(dayofyear, GETDATE())
SELECT DATEPART(week, GETDATE())
SELECT DATEPART(weekday, GETDATE())

SELECT DATEPART(hour, GETDATE())
SELECT DATEPART(minute, GETDATE())
SELECT DATEPART(second, GETDATE())

SELECT DATEADD(month, -3, GETDATE())
SELECT DATEADD(day, 35, GETDATE())
SELECT DATEADD(year, 6, GETDATE())

SELECT DATEDIFF(year, '2019-6-21', GETDATE())
SELECT DATEDIFF(month, '2019-6-21', GETDATE())
SELECT DATEDIFF(day, '2019-6-21', GETDATE())
*/

-- CAST(expression AS typename)
/*
SELECT CAST('156' AS INT)
SELECT CAST(1389 AS VARCHAR(10))
*/
-- CONVERT(typename, expression [, style])

SELECT CONVERT(NVARCHAR, 1653.7676, 1)