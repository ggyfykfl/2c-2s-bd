USE [Base_k]
GO
CREATE USER [User k] FOR LOGIN [User k]
GO
USE [Base_k]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_owner] TO [User k]
GO
