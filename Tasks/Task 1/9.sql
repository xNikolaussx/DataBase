--�������� ID ������������ (DepartmentID), �������� ������ (GroupName) 
--� ��� ������������ ������� ������ (Name) �� ������� HumanResources.Department
--� ������������� ������ ������� � ���������� ������� ���� ������������ (Name).
SELECT DepartmentID,
       GroupName,
	   Name
FROM HumanResources.Department
ORDER BY Name ASC;