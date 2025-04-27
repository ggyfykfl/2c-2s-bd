USE [Base_k]
GO
CREATE ROLE [Myrole3]
GO
USE [Base_k]
GO
ALTER ROLE [Myrole3] ADD MEMBER [User2_k]
GO


use [Base_k]
GRANT SELECT, UPDATE ON dbo.Customers TO User2_k

GRANT SELECT ON dbo.Products(ProductName, Price, SerialNumber) TO User2_k