USE [aero]
GO

/****** Object:  StoredProcedure [dbo].[AddProduct]    Script Date: 13.08.2023 16:01:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddProduct2]
	@title VARCHAR(50),
	@brand VARCHAR(50),
	@price DECIMAL(8, 2),
	@id INT OUTPUT
AS
BEGIN
	DECLARE @brand_id INT;
	SET @brand_id = (SELECT id FROM Brands WHERE title = @brand);

	IF @brand_id IS NOT NULL AND @price > 0
	BEGIN
		INSERT INTO Products (brand, title, price)
			VALUES(@brand_id, @title, @price);
		SET @id = @@IDENTITY;
		RETURN @id;
	END
	RETURN NULL;
END
GO


