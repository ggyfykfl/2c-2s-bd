CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CompanyName VARCHAR(255) NOT NULL,
    ContactPerson VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0  -- ������ ���������� ����
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(255) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    ManufacturerContactPerson VARCHAR(255) NOT NULL,  -- ��� ����������� ���� ������������
    SerialNumber VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    DeliveryDate DATETIME NOT NULL  -- ���� �������� ������ �� �����
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    OrderDate DATETIME NOT NULL DEFAULT GETDATE(),
    TotalCost DECIMAL(10, 2) NOT NULL,
    DeliveryCost DECIMAL(10, 2) NOT NULL,  -- ��������� �������� �� ����� ���������� ����
    DeliveryAddress VARCHAR(255) NOT NULL  -- ����� �������� ��������� ����
);