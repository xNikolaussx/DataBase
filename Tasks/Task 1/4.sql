--�������� ���������� �������� ������� �� ������� Person.Address,
--� ������� �������� ������� � ������ (SpatialLocation).
SELECT City
FROM Person.Address
WHERE SpatialLocation IS NOT NULL;