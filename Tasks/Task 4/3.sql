--Показать товары, для которых существует менее 3 цветов, 
--в одном размере (размер определен) (Таблица Production.Product).
--Показать поля [Name], Color и Size.
SELECT product.[Name], product.Color, product.Size
FROM Production.Product AS product
WHERE product.Color IS NOT NULL
	AND product.Size IS NOT NULL
	AND (
		SELECT COUNT(DISTINCT productToo.Color) AS ColorCount
		FROM Production.Product AS productToo
		WHERE productToo.Color IS NOT NULL 
			AND product.Size = productToo.Size
		) < 3
ORDER BY product.[Name], product.Size;