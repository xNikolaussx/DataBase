--Показать товары, цена которых равна максимальной цене товара того же размера 
--(размер определен) (Таблица Production.Product). 
--Показать поля [Name], ListPrice и Size.
SELECT [Name], ListPrice, product.Size
FROM Production.Product AS product
JOIN (
	SELECT Size, MAX(ListPrice) AS ListMaxPrice
	FROM Production.Product
	WHERE Size IS NOT NULL
	GROUP BY Size
	) AS productToo
	ON product.Size = productToo.Size AND
	product.ListPrice = productToo.ListMaxPrice;