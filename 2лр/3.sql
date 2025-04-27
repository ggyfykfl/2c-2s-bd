USE [Base_k]
GO
CREATE ROLE [Myrole2]
GO
USE [Base_k]
GO
ALTER ROLE [Myrole2] ADD MEMBER [User2_k]
GO



use [Base_k]
GO
DENY ALTER ON [dbo].[Orders] TO [Myrole2]
GRANT ALTER ON [dbo].[Customers] TO [Myrole2]
GO



USE [Base_k]
GO
ALTER TABLE dbo.Customers ADD TestColumn INT;

ALTER TABLE dbo.Orders ADD TestColumn INT;