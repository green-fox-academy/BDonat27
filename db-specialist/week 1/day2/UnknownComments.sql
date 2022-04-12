SELECT TOP(1000) OrderID,
    CASE
        WHEN Comments IS NULL THEN 'not available'
        ELSE Comments
    END AS Comments
FROM Sales.Orders;


SELECT TOP(1000) OrderID, ISNULL(Comments, 'not available') AS Comments
FROM Sales.Orders;
