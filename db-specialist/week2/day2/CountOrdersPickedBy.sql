USE WideWorldImporters;

/*

    Write a query that returns all the customer IDs from orders and match the 
    orders with persons who picked up the order.

    Return only those orders that were placed in March 2014.
    Make customer groups and count how many persons there are in each group.

    | CustomerID | cnt_persons |
    ----------------------------

    Watch out for using the COUNT function!
    How should you use the COUNT function? Why?

*/


SELECT CustomerID, COUNT(DISTINCT PersonID) AS cnt_persons
FROM Sales.Orders a
LEFT OUTER JOIN Application.People a1
ON a.PickedByPersonID = a1.PersonID
WHERE OrderDate BETWEEN '2014-03-01' AND EOMONTH('2014-03-01')
GROUP BY CustomerID;