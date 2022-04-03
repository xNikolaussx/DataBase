--Показать товары, цена которых больше средней цены в любой подкатегории 
--(Таблица Production.Product). 
--Показать поля [Name], ListPrice и ProductSubcategoryID.
SELECT [Name], ListPrice, ProductSubcategoryID 
FROM Production.Product
WHERE ListPrice > ALL(
	SELECT AVG(ListPrice) AS ListAvgPrice
	FROM Production.Product
	WHERE ProductSubcategoryID IS NOT NULL
	GROUP BY ProductSubcategoryID
	);