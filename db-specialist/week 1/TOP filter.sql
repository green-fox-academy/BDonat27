--Top10Percent

/*
SELECT TOP 10 OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
ORDER BY [Order ID] ASC;

--az elsõ tízet

SELECT TOP 10 PERCENT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
ORDER BY [Order ID] ASC;


-- itt meg az összes adatot




-- TopWithTies


SELECT TOP 10 UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;


--Az elsõ tíz értéket adja vissza és azonos mind


SELECT TOP 10 WITH TIES UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;


-- a legnagyobb értéknek az összes elõfordulását kiiratja


SELECT DISTINCT TOP 10 UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;



-- kiszûri az ismetlést és az elsõ 10 legynagyobb értéket add vissza. 




--TopCities

SELECT TOP 10 CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
ORDER BY [population] DESC
*/





