--Показать ID (ProductID), название (Name) и цвет (Color) товаров
--из таблицы Production.Product, содержащих в названии слово 'Chainring' (звёздочка).
SELECT ProductID,
       [Name],
	   Color
FROM Production.Product
WHERE [Name] LIKE '%Chainring%';