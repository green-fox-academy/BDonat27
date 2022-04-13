SELECT YEAR(OrderDate) AS orderyear,COUNT(OrderID) AS cnt_order
FROM Sales.Orders
GROUP BY YEAR(OrderDate)
ORDER BY orderyear DESC;

SELECT YEAR(OrderDate) AS orderyear, MONTH(OrderDate) AS ordermonth, COUNT(OrderID) AS cnt_order
FROM Sales.Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY orderyear DESC, ordermonth 

SELECT YEAR(OrderDate) AS orderyear, MONTH(OrderDate) AS ordermonth, COUNT(OrderID) AS cnt_order
FROM Sales.Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(OrderID) > 2000
ORDER BY orderyear DESC, ordermonth 



