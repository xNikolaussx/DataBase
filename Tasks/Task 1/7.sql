--�������� ���� PersonType, NameStyle, Title, FirstName, MiddleName, LastName
--�� ������� Person.Person. ����������� �������� ���� Title ��������
--�� 'Dear' (���������). �������� ����� �������� ��� ���������.
SELECT PersonType,
       NameStyle,
	   ISNULL(Title, 'Dear'),
	   FirstName,
	   MiddleName,
	   LastName
FROM Person.Person
