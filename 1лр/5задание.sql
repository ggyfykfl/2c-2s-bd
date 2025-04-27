USE master;
CREATE LOGIN [User1_k] WITH PASSWORD=N'changeme', 
DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[русский], 
CHECK_EXPIRATION=ON, CHECK_POLICY=ON;

USE Base_k;
CREATE USER [User1_k] FOR LOGIN [User1_k];
ALTER ROLE db_owner ADD MEMBER [User1_k];

USE master;
GRANT ADMINISTER BULK OPERATIONS TO [User1_k];
GRANT CONNECT SQL TO [User1_k];


USE Base_k;
INSERT INTO Customers (CompanyName, Phone, ContactPerson, DeliveryAddress)
VALUES ('A', '111222333', 'Иван Иванов', 'Улица Пушкина, дом 1');