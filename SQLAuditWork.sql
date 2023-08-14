INSERT INTO Products (brand, title, price)
	VALUES (4, 'Server', 90500.00);

GO

UPDATE Products
	SET title = 'File Server'
	WHERE title = 'Server'
GO

DELETE Products
	WHERE title = 'File Server'
GO