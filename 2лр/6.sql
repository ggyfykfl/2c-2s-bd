USE Base_k; 
GO

-- Создание логина
CREATE LOGIN NewUser WITH PASSWORD = 'changeme';
GO

-- Создание пользователя для базы данных
CREATE USER NewUser FOR LOGIN NewUser;
GO

-- Назначение схемы
ALTER USER NewUser WITH DEFAULT_SCHEMA = NewSchema;
GO

GRANT SELECT, INSERT ON NewSchema.MyTable TO NewUser;
GO

SELECT HAS_PERMS_BY_NAME('NewSchema.MyTable', 'OBJECT', 'SELECT') AS CanSelect,
       HAS_PERMS_BY_NAME('NewSchema.MyTable', 'OBJECT', 'INSERT') AS CanInsert;

USE Base_k;
GO

-- Удаление таблицы
DROP TABLE NewSchema.MyTable;  

-- Удаление схемы
DROP SCHEMA NewSchema; 
GO
