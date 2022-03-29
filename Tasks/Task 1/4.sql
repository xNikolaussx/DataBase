--Показать уникальные названия городов из таблицы Person.Address,
--у которых известна долгота и ширина (SpatialLocation).
SELECT City
FROM Person.Address
WHERE SpatialLocation IS NOT NULL;