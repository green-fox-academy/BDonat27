USE WideWorldImporters;

/*
    Return customers from the Sales.Orders table that have orders both 
    in May 2013 and June 2015.

    | CustomerID |
    --------------


*/
SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate BETWEEN '2013-05-01' AND EOMONTH('2013-05-01')
INTERSECT
SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate BETWEEN '2015-06-01' AND EOMONTH('2015-06-01');

/*
    Return customers from the Sales.Orders table that have orders 
    in September 2013 but not in October 2015.

    | CustomerID |
    --------------


*/
SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate BETWEEN '2013-05-01' AND EOMONTH('2013-05-01')
EXCEPT
SELECT CustomerID
FROM Sales.Orders
WHERE OrderDate BETWEEN '2015-06-01' AND EOMONTH('2015-06-01');
