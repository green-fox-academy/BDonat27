SELECT CustomerID, CustomerName
FROM Sales.Customers a
WHERE CustomerName LIKE 'Anna%'
AND NOT EXISTS(
SELECT *
FROM Sales.Orders
WHERE CustomerID = a.CustomerID AND OrderDate BETWEEN '2014-01-01' AND '2014-01-31'
)



