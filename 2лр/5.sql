USE Base_k;  -- Убедитесь, что вы используете правильную базу данных
GO

-- Создание схемы
CREATE SCHEMA NewSchema;  -- Замените NewSchema на желаемое имя
GO

CREATE TABLE NewSchema.MyTable (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT
);
GO

GRANT SELECT, INSERT ON NewSchema.MyTable TO User1_k
GO

INSERT INTO NewSchema.MyTable (ID, Name, Age) VALUES (1, 'Alice', 30);
INSERT INTO NewSchema.MyTable (ID, Name, Age) VALUES (2, 'Bob', 25);
INSERT INTO NewSchema.MyTable (ID, Name, Age) VALUES (3, 'Charlie', 28);
GO

SELECT * FROM NewSchema.MyTable;