SELECT  CustomerID,
        SUM(CASE YEAR(a.OrderDate) WHEN 2013 THEN al.Quantity ELSE 0 END) AS [2013],
        SUM(CASE YEAR(a.OrderDate) WHEN 2014 THEN al.Quantity ELSE 0 END) AS [2014],
        SUM(CASE YEAR(a.OrderDate) WHEN 2015 THEN al.Quantity ELSE 0 END) AS [2015],
        SUM(CASE YEAR(a.OrderDate) WHEN 2016 THEN al.Quantity ELSE 0 END) AS [2016]
FROM Sales.Orders a
JOIN Sales.OrderLines al ON a.OrderID = al.OrderID
GROUP BY CustomerID;