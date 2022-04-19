SELECT a1.CustomerID, a1.OrderID, a1.OrderDate
FROM Sales.Orders a1
  JOIN (SELECT  CustomerID,  MAX(OrderID) AS maxx
   FROM Sales.Orders 
   GROUP BY CustomerID) a2 ON a1.OrderID = a2.maxx;
   


   