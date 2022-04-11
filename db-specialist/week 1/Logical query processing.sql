
-- LogicalQueryProcessing


/*
SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY [Order ID]
HAVING [Order ID] IN (46, 47, 48)
ORDER BY [Order ID] ASC;
*/
-- Azért nem fog lefutni mert érvénytelen az oszlp név



-- AllAtOnceExpressions



/*SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty,(Sum_Qty - 10) AS Reduced_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;
*/
/**/
SELECT OrderID AS [Order ID], SUM(Quantity) AS Sum_Qty,(SUM(Quantity)-10) AS Reduced_Qty
FROM Sales.OrderLines
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;

-- Hasonló hiba miatt fut le hibaként mert egy érvénytelen oszlop nevet adtunk meg. A megoldás, hogy az "SUM(Quantity)"-bol vonjuk ki a 10-et.



--TableAliasing


SELECT Alias.OrderID AS [Order ID], SUM(Alias.Quantity) AS Sum_Qty
FROM Sales.OrderLines AS Alias
WHERE UnitPrice > 10
GROUP BY OrderID
HAVING OrderID IN (46, 47, 48)
ORDER BY [Order ID] ASC;