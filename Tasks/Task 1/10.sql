--ѕоказать название фирмы (Name) из таблицы Purchasing.Vendor.
--≈сли фирма называетс€ 'Advanced Bicycles', заменить значение пол€ Name на NULL.
--Ќазвани€ полей оставить без изменений.
SELECT Name, IIF(Name='Advanced Bicycles', NULL, Name) AS Name
FROM Purchasing.Vendor;