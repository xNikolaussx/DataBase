--Показать список товаров (поле Name), в котором указан, 
--есть ли у товара дата начала отслеживания цены (StartDate) или нет, 
--из таблицы Production.ProductListPriceHistory, Production.Product, используя RIGHT OUTER JOIN.
SELECT	p.[Name]
   ,   l.StartDate
FROM	Production.Product AS p
RIGHT OUTER JOIN Production.ProductListPriceHistory AS l
ON p.ProductID = l.ProductID