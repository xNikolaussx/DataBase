--Показать список складов (LocationID), на которых содержатся 
--несколько продуктов (ProductID), из таблицы Production.ProductInventory, 
--используя SELF JOIN.
SELECT DISTINCT l.LocationID, l.ProductID
FROM Production.ProductInventory AS l
JOIN Production.ProductInventory AS m
ON l.LocationID = m.LocationID AND l.ProductID <> m.ProductID;