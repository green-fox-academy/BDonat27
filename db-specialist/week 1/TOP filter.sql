--Top10Percent

/*
SELECT TOP 10 OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
ORDER BY [Order ID] ASC;

--az els� t�zet

SELECT TOP 10 PERCENT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
ORDER BY [Order ID] ASC;


-- itt meg az �sszes adatot




-- TopWithTies


SELECT TOP 10 UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;


--Az els� t�z �rt�ket adja vissza �s azonos mind


SELECT TOP 10 WITH TIES UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;


-- a legnagyobb �rt�knek az �sszes el�fordul�s�t kiiratja


SELECT DISTINCT TOP 10 UnitPrice
FROM Sales.OrderLines
ORDER BY UnitPrice DESC;



-- kisz�ri az ismetl�st �s az els� 10 legynagyobb �rt�ket add vissza. 




--TopCities

SELECT TOP 10 CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
ORDER BY [population] DESC
*/





