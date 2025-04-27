INSERT INTO Customers (CompanyName, ContactPerson, DeliveryAddress, Phone) VALUES
('�������� �', '������ �.�.', '������, ��. ������, �. 1', '123456789'),
('�������� �', '������ �.�.', '�����-���������, ��. �������, �. 2', '987654321');

INSERT INTO Products (ProductName, Manufacturer, SerialNumber, Price) VALUES
('����� 1', '������������ 1', 'SN001', 100.00),
('����� 2', '������������ 2', 'SN002', 150.00);

INSERT INTO Orders (CustomerID, ProductID, TotalCost, Discount, DeliveryCost) VALUES
(3, 1, 100.00, 0, 10.00),
(4, 2, 150.00, 5, 15.00);