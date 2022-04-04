--Для каждого пола найти суммарное количество часов отпуска 
--из таблицы (поставить фильтр: работник был принят до 2008 года) 
--HumanResources.Employee, не учитывать пустые значения.
SELECT Gender, SUM(VacationHours) as SumHours
FROM HumanResources.Employee
WHERE Gender IS NOT NULL AND BirthDate IS NOT NULL AND HireDate < '2008-01-01'
GROUP BY Gender;