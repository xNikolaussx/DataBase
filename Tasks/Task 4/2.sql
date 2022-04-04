--Определить количество продавцов и территорию, 
--которую обслуживает минимальное количество продавцов 
--(Таблица Production.Product).
SELECT t.TerritoryName, Count(*) AS SellersCount 
FROM Sales.vSalesPerson AS t
WHERE t.TerritoryName IS NOT NULL
GROUP BY t.TerritoryName
HAVING COUNT(*) = (
	SELECT MIN(b.SellersCount)
	FROM(
		SELECT COUNT (*) AS SellersCount
		FROM Sales.vSalesPerson AS b
		GROUP BY TerritoryName) AS b
		)