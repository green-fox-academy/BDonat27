SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE 'DBA%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '%t';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName NOT LIKE '%k';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '%joke%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '[abcf]%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName NOT LIKE '%flash drive%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE '%ham[^m]%';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName LIKE 'a[l-t]%[l-p]';

SELECT StockItemID, StockItemName
FROM Warehouse.StockItems
WHERE StockItemName = 'DBA joke mug - it depends (Black)';

