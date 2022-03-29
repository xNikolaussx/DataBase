--Показать название фирмы (Name) из таблицы Purchasing.Vendor.
--Если фирма называется 'Advanced Bicycles', заменить значение поля Name на NULL.
--Название полей оставить без изменений.
SELECT Name, IIF(Name='Advanced Bicycles', NULL, Name) AS Name
FROM Purchasing.Vendor;

