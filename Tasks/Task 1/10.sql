--�������� �������� ����� (Name) �� ������� Purchasing.Vendor.
--���� ����� ���������� 'Advanced Bicycles', �������� �������� ���� Name �� NULL.
--�������� ����� �������� ��� ���������.
SELECT Name, IIF(Name='Advanced Bicycles', NULL, Name) AS Name
FROM Purchasing.Vendor;