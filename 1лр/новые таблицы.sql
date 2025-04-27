CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CompanyName VARCHAR(255) NOT NULL,
    ContactPerson VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0  -- Скидка перемещена сюда
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(255) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    ManufacturerContactPerson VARCHAR(255) NOT NULL,  -- ФИО контактного лица изготовителя
    SerialNumber VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    DeliveryDate DATETIME NOT NULL  -- Дата поставки товара на склад
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    OrderDate DATETIME NOT NULL DEFAULT GETDATE(),
    TotalCost DECIMAL(10, 2) NOT NULL,
    DeliveryCost DECIMAL(10, 2) NOT NULL,  -- Стоимость доставки на склад перемещена сюда
    DeliveryAddress VARCHAR(255) NOT NULL  -- Адрес доставки перемещен сюда
);