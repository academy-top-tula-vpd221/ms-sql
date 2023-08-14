USE aero
GO

--SELECT t.trip_no,
--		t.plane,
--		t.town_from,
--		c.name
--	FROM Trip AS t, Company AS c
--	WHERE t.ID_comp = c.ID_comp

--SELECT c.name,
--		t.trip_no,
--		t.plane,
--		pit.place,
--		p.name
--	FROM Passenger AS p,
--		Trip AS t,
--		Company AS c,
--		Pass_in_trip AS pit
--	WHERE pit.trip_no = t.trip_no
--			AND pit.ID_psg = p.ID_psg
--			AND t.ID_comp = c.ID_comp

--SELECT c.name,
--		t.trip_no,
--		t.plane,
--		pit.place,
--		p.name
--	FROM Trip AS t
--		INNER JOIN Pass_in_trip AS pit
--			ON pit.trip_no = t.trip_no
--		INNER JOIN Company AS c
--			ON t.ID_comp = c.ID_comp
--		INNER JOIN Passenger AS p
--			ON pit.ID_psg = p.ID_psg
--	ORDER BY c.name

--SELECT  t.trip_no,
--		t.plane,
--		pit.place,
--		c.name,
--		p.name
--	FROM Trip AS t
--		JOIN Pass_in_trip AS pit
--			ON pit.trip_no = t.trip_no
--		JOIN Company AS c
--			ON t.ID_comp = c.ID_comp
--		JOIN Passenger AS p
--			ON pit.ID_psg = p.ID_psg



--SELECT t.plane,
--		COUNT(*)
--	FROM Trip AS t
--		INNER JOIN Pass_in_trip AS pit
--			ON pit.trip_no = t.trip_no
--		INNER JOIN Company AS c
--			ON t.ID_comp = c.ID_comp
--		INNER JOIN Passenger AS p
--			ON pit.ID_psg = p.ID_psg
--	GROUP BY t.plane


SELECT title, price
	FROM Products
	WHERE price <= 20000
INTERSECT
SELECT title, price 
	FROM Products
	WHERE price >= 5000