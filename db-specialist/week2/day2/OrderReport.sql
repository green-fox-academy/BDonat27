USE WideWorldImporters;

/*

    Write a query that returns a report for specific Orders.

    Each order has detailed orderlines that show what items were ordered and 
    in which quantity.

    Use the Sales.Orders and Sales.OrderLines tables. Sales.OrderLines has an 
    OrderID column that you should use.

    Return only those orders that were placed between '2013-05-01' and 
    '2013-06-30' and belong to CustomerID = 50.
    Order the results by OrderDate in descending order.


    | OrderID | OrderLineID | CustomerID | OrderDate | StockItemID |
    | Description | Quantity |
    ----------------------------------------------------------------

*/
SELECT a.OrderID, OrderLineID, CustomerID, OrderDate, StockItemID, Description, Quantity
FROM Sales.Orders a
JOIN Sales.OrderLines al
ON a.OrderID = al.OrderID
WHERE OrderDate BETWEEN '2013-05-01' AND '2013-06-30' AND CustomerID = 50
ORDER BY OrderDate DESC;