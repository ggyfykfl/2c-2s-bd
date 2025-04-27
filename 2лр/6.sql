USE Base_k; 
GO

-- �������� ������
CREATE LOGIN NewUser WITH PASSWORD = 'changeme';
GO

-- �������� ������������ ��� ���� ������
CREATE USER NewUser FOR LOGIN NewUser;
GO

-- ���������� �����
ALTER USER NewUser WITH DEFAULT_SCHEMA = NewSchema;
GO

GRANT SELECT, INSERT ON NewSchema.MyTable TO NewUser;
GO

SELECT HAS_PERMS_BY_NAME('NewSchema.MyTable', 'OBJECT', 'SELECT') AS CanSelect,
       HAS_PERMS_BY_NAME('NewSchema.MyTable', 'OBJECT', 'INSERT') AS CanInsert;

USE Base_k;
GO

-- �������� �������
DROP TABLE NewSchema.MyTable;  

-- �������� �����
DROP SCHEMA NewSchema; 
GO
