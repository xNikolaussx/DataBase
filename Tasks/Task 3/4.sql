--Показать список продуктов (ProductID), которые содержатся на 
--нескольких складах (LocationID), из таблицы Production.ProductInventory, 
--используя SELF JOIN.
SELECT DISTINCT l.ProductID, l.LocationID
FROM Production.ProductInventory AS l
JOIN Production.ProductInventory AS m 
ON l.ProductID = m.ProductID AND l.LocationID <> m.LocationID;