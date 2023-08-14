USE aero
GO

--SELECT * FROM Company

--SELECT plane AS [airplan], 
--		town_from AS [city from], 
--		town_to AS [city to]
--	FROM Trip
--GO

/*
=
<>
<
>
<= 
>=
!>
!<
*/

--SELECT * 
--	FROM Trip
--	WHERE town_from IS NULL
		--town_from NOT IN ('Rostov', 'Moscow', 'Vladivostok')
		--town_from = 'Rostov' OR
		--	town_from = 'Moscow' OR
		--	town_from = 'Vladivostok'

		--DATENAME(hour, time_out) BETWEEN 9 AND 15
		--DATENAME(hour, time_out) >= 9 AND DATENAME(hour, time_out) < 15
GO

--SELECT DISTINCT town_from
--	INTO cities
--	FROM Trip

--SELECT *
--	FROM Trip
--	WHERE town_from LIKE '%os%'
--	ORDER BY town_from ASC, time_out DESC

--SELECT COUNT(trip_no) AS count,
--		AVG(trip_no) AS avg,
--		MIN(trip_no) AS min
--	FROM Pass_in_trip
--	WHERE YEAR(date) < 2005



--SELECT town_from, COUNT(*) AS cnt
--	FROM Trip
--	--WHERE town_from = 'Moscow'
--	GROUP BY town_from WITH ROLLUP
--	--HAVING COUNT(*) > 3
--	ORDER BY cnt ASC


--SELECT plane, town_from, COUNT(*) AS Count
--	FROM Trip
--	GROUP BY plane, town_from WITH CUBE

--SELECT date, 
--		place, 
--		(SELECT name 
--			FROM Passenger AS p
--			WHERE pit.ID_psg = p.ID_psg) AS Passenger
--	FROM Pass_in_trip AS pit

SELECT * 
	FROM Passenger AS p
	WHERE EXISTS (SELECT * 
					FROM Pass_in_trip AS pit
					WHERE p.ID_psg = pit.ID_psg)
	
