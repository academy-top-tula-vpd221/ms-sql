USE [aero]
GO

/****** Object:  Trigger [dbo].[TRG_Products_Audit]    Script Date: 13.08.2023 17:13:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TRG_Products_Audit] ON [dbo].[Products]
	AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	DECLARE @sql_command VARCHAR(100);

	IF EXISTS (SELECT * FROM inserted) 
		AND NOT EXISTS (SELECT * FROM deleted)
		SET @sql_command = 'INSERT';
	IF EXISTS (SELECT * FROM inserted) 
		AND EXISTS (SELECT * FROM deleted)
		SET @sql_command = 'UPDATE';
	IF NOT EXISTS (SELECT * FROM inserted) 
		AND EXISTS (SELECT * FROM deleted)
		SET @sql_command = 'DELETE';
	
	
	PRINT @sql_command;

	IF @sql_command = 'INSERT' OR @sql_command = 'UPDATE'
		BEGIN
			INSERT INTO dbo.ProductTableAudit
				(date_change,
				user_login,
				sql_command,
				product_id_old,
				product_id_new,
				product_title_old,
				product_title_new,
				product_brand_id_old,
				product_brand_id_new,
				product_price_old,
				product_price_new)
				SELECT 
					GETDATE(), 
					SUSER_SNAME(),
					@sql_command,
					d.id,
					i.id,
					d.title,
					i.title,
					d.brand,
					i.brand,
					d.price,
					i.price
					FROM inserted AS i
					LEFT JOIN deleted AS d ON i.id = d.id
		END

		IF @sql_command = 'DELETE'
		BEGIN
			INSERT INTO dbo.ProductTableAudit
				(date_change,
				user_login,
				sql_command,
				product_id_old,
				product_id_new,
				product_title_old,
				product_title_new,
				product_brand_id_old,
				product_brand_id_new,
				product_price_old,
				product_price_new)
				SELECT 
					GETDATE(), 
					SUSER_SNAME(),
					@sql_command,
					d.id,
					NULL,
					d.title,
					NULL,
					d.brand,
					NULL,
					d.price,
					NULL
					FROM deleted AS d
		END
END
GO

ALTER TABLE [dbo].[Products] ENABLE TRIGGER [TRG_Products_Audit]
GO


