CREATE TRIGGER priceNds
	ON Products
	AFTER INSERT, UPDATE
	AS
	UPDATE Products
		SET price = price * 1.2
		WHERE id = (SELECT id FROM inserted);