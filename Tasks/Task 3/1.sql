--Показать номера телефонов (PhoneNumber) и поля PersonType, 
--FirstName, LastName из таблиц Person.Person, Person.PersonPhone.
SELECT N.PhoneNumber,
		P.PersonType, 
		P.FirstName, 
		P.LastName
FROM Person.Person AS P
INNER JOIN Person.PersonPhone AS N
ON N.BusinessEntityID = P.BusinessEntityID