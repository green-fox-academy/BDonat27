--OffsetCities

/*
SELECT CityID, CityName, LatestRecordedPopulation AS population
FROM Application.Cities
ORDER BY [population] DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;


--OffsetStockItems

SELECT StockItemID, Description
FROM Sales.OrderLines
ORDER BY StockItemID
OFFSET 29 ROWS 
FETCH NEXT 50 ROWS ONLY;
*/

