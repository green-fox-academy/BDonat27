USE WideWorldImporters;

/*

    Write a query that returns a report for specific Customers.

    Each order has detailed orderlines that show what items were ordered and 
    in which quantity.

    This time you'll need to work with more than two tables!
    This is called a multi-join query.

    Use the Sales.Customers, Sales.Orders and Sales.OrderLines tables. 
    Sales.OrderLines has an OrderID column that you should use.
    Sales.Orders has a CustomerID column that you should use.

    Return those 5 customers who ordered the most quantities in 2015.


    | CustomerID | CustomerName | sum_qty |
    ---------------------------------------

*/
SELECT TOP 5 b.CustomerID, CustomerName ,SUM(Quantity) AS sum_qty
FROM Sales.Orders a
JOIN Sales.OrderLines al
    ON a.OrderID = al.OrderID
JOIN Sales.Customers b
    ON b.CustomerID = a.CustomerID
WHERE OrderDate BETWEEN '2015-01-01' AND '2015-12-31'
GROUP BY b.CustomerID, CustomerName
ORDER BY sum_qty DESC;