BEGIN TRY
	BEGIN TRANSACTION
		UPDATE Brands SET title = 'Yandex'
			WHERE id = 5
		UPDATE Products SET brand = NULL
			WHERE id = 8
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	
	PRINT STR(ERROR_NUMBER()) + ' ' + ERROR_MESSAGE()
	RETURN
END CATCH

PRINT 'Good'
COMMIT TRANSACTION





/*
COMMIT TRANSACTION

ROLLBACK TRANSACTION

SAVE TRANSACTION
*/