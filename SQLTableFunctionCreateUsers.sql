--CREATE FUNCTION TripsCompany
--(
--	@comp_id INT
--)
--RETURNS TABLE
--AS
--RETURN (SELECT plane, town_from, town_to
--			FROM Trip
--			WHERE ID_comp = @comp_id);

CREATE FUNCTION TripsCompany2
(
	@comp_id INT
)
RETURNS @table TABLE 
(
	airplane VARCHAR(20),
	city_from VARCHAR(50),
	city_to VARCHAR(50)
)
AS
BEGIN
	INSERT INTO @table
		SELECT plane AS airplane,
			town_from AS city_from,
			town_to AS city_to
		FROM Trip
		WHERE ID_comp = @comp_id;
	RETURN
END
GO