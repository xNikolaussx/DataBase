--Показать поля PersonType, NameStyle, Title, FirstName, MiddleName, LastName
--из таблицы Person.Person. Неизвестные значения поля Title заменить
--на 'Dear' (уважаемый). Название полей оставить без изменений.
SELECT PersonType,
       NameStyle,
	   ISNULL(Title, 'Dear'),
	   FirstName,
	   MiddleName,
	   LastName
FROM Person.Person
