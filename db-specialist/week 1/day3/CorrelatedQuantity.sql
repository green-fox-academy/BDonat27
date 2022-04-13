SELECT OrderID, StockItemID, Quantity,
        (SELECT MAX(Quantity)
        FROM Sales.OrderLines
        WHERE StockItemID = a.StockItemID) AS Max_StockItem_Qty,
        (SELECT MAX(Quantity) - a.Quantity
        FROM Sales.OrderLines
        WHERE StockItemID = a.StockItemID) AS Max_Diff_Qty
FROM Sales.OrderLines a
WHERE StockItemID = 180;


