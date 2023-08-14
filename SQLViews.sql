--CREATE VIEW FullRealTrips AS
--	SELECT pit.date,
--		   p.name,
--		   pit.place,
--		   c.name AS company,
--		   t.plane,
--		   t.town_from,
--		   t.town_to
--		FROM Pass_in_trip AS pit
--		JOIN Passenger AS p 
--			ON pit.ID_psg = p.ID_psg
--		JOIN Trip AS t 
--			ON pit.trip_no = t.trip_no
--		JOIN Company AS c
--			ON t.ID_comp = c.ID_comp;

--GO

--SELECT * FROM FullRealTrips;

--DROP VIEW ProductsBrands;
--CREATE VIEW ProductsView AS
--	SELECT  p.title,
--			p.price
--		FROM Products AS p


SELECT * FROM Products;
SELECT * FROM ProductsView;
GO

INSERT INTO ProductsView (title, price)
	VALUES ('iPhone', 23000.00);
GO

SELECT * FROM Products;
SELECT * FROM ProductsView;
GO
