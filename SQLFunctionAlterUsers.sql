USE [aero]
GO

/****** Object:  UserDefinedFunction [dbo].[CapitalWord]    Script Date: 13.08.2023 15:22:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER FUNCTION [dbo].[CapitalWord]
(
	@word VARCHAR(100)
)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @wordNew VARCHAR(100);
	SET @wordNew = CONCAT(UPPER(LEFT(@word, 1)), LOWER(RIGHT(@word, LEN(@word) - 1)));
	RETURN @wordNew;
END;
GO


