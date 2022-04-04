--Показать список продуктов из таблицы Production.Product с таким же цветом,
--как у продукта ML Road Frame-W - Yellow, 38, 
--используя SELF JOIN.
SELECT DISTINCT l.ProductID, l.Color
FROM Production.Product AS l
INNER JOIN Production.Product AS m
ON l.ProductID = m.ProductID
WHERE l.Color = m.Color AND l.Color = 'Yellow';