DECLARE @brand VARCHAR(50);
SET @brand = 'Ikea';
DECLARE @title VARCHAR(50);
SET @title = 'Lamp';
DECLARE @price DECIMAL(8,2);
SET @price = 3000.00;
DECLARE @id INT;


--DECLARE @brand_id INT;
--SET @brand_id = (SELECT id FROM Brands WHERE title = @brand);
--SELECT @brand_id;



EXECUTE AddProduct2 @title, @brand, @price, @id OUTPUT;
PRINT @id;

