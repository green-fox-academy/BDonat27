SELECT CustomerID, OrderID, OrderDate 
FROM Sales.Orders a
WHERE OrderDate = (
        SELECT MAX(OrderDate)
        FROM Sales.Orders
        WHERE a.CustomerID = CustomerID
        

        
    );

