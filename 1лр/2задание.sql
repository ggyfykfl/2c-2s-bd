USE master;

CREATE DATABASE Base_k ON PRIMARY

( name = N'Base_k_mdf', filename = N'D:\BD\Base_k.mdf', 
  size = 10240KB, maxsize = UNLIMITED, filegrowth = 1024KB),
FILEGROUP Group1
( name = N'Base_k_fg1', filename = N'D:\BD\Base_k_fg1.ndf', 
  size = 10240KB, maxsize = 1GB, filegrowth = 25%)
LOG ON
( name = N'Base_k_log', filename = N'D:\BD\Base_k_log.ldf',       
  size = 10240KB, maxsize = 2048GB, filegrowth = 10%);

USE Base_k;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CompanyName VARCHAR(255) NOT NULL,
    ContactPerson VARCHAR(255) NOT NULL,
    DeliveryAddress VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(255) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    SerialNumber VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    OrderDate DATETIME NOT NULL DEFAULT GETDATE(),
    TotalCost DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0,
    DeliveryCost DECIMAL(10, 2) NOT NULL
);