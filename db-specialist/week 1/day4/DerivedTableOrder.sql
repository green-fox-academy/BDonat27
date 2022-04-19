SELECT D.orderyear, D.ordermonth, COUNT(DISTINCT D.custID) AS cnt_cust
FROM (SELECT YEAR(OrderDate), MONTH(OrderDate), CustomerID
      FROM Sales.Orders) AS D(orderyear, ordermonth, custID)
GROUP BY D.orderyear, D.ordermonth
ORDER BY D.orderyear ASC, D.ordermonth DESC;