INSERT INTO Customers (CompanyName, ContactPerson, Phone, Discount) VALUES
('AAA', 'AAA', '11', 1.00);

INSERT INTO Products (ProductName, Manufacturer, ManufacturerContactPerson, SerialNumber, Price, DeliveryDate) VALUES
('BB', 'BB', 'BB', 'BB', 2.00, '2023-01-04 00:00:00.000');

INSERT INTO Orders (CustomerID, ProductID, OrderDate, TotalCost, DeliveryCost, DeliveryAddress) VALUES
(4, 4, GETDATE(), 3.00, 3.00, 'C');