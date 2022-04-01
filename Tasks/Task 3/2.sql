--Показать список продуктов (поле Name) в котором указано, 
--есть ли у продукта название модели или нет, 
--из таблиц Production.ProductModel, Production.Product,
--используя LEFT OUTER JOIN.
SELECT n.[Name],
		m.[Name]
FROM Production.ProductModel AS n
LEFT OUTER JOIN Production.Product AS m
ON n.ProductModelID = m.ProductID;