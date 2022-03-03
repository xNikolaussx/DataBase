--�������� ���� ProductID, Name �� ������� Production.Product 
--� ����������� ������� COALESCE(). �������� ���� Measurement, ���, 
--�����, ���� �������� � ���� Class ��������, �� �������� ���, � �����, �������� �������� � ���� Color.
--���� � � ���� Color �������� ����������, �� ������� �������� 'UNKNOWN'.
SELECT ProductID,
       Name,
	   COALESCE(Class, Color, 'UNKNOWN') AS Measurement
FROM Production.Product;

