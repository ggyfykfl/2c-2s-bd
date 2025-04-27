BACKUP DATABASE Base_k 
TO DISK = N'D:\BD\3лр\полнКоп\Base_kBackup.bak' WITH NOFORMAT, INIT,  
NAME = N'Base_k-Полная База данных Резервное копирование',
                            SKIP, NOREWIND, NOUNLOAD, STATS = 10




use Base_k
drop table Orders
drop table Customers



USE master
ALTER DATABASE Base_k SET SINGLE_USER WITH ROLLBACK IMMEDIATE



RESTORE DATABASE Base_k
   FROM  DISK = N'D:\BD\3лр\полнКоп\Base_kBackup.bak'
        WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 5



--3
ALTER TABLE Customers
ADD LastUpdated DATETIME DEFAULT GETDATE();

INSERT INTO Customers (CompanyName, ContactPerson, DeliveryAddress, Phone)
VALUES ('New Company', 'John Doe', '123 New St', '123-456-7890');

UPDATE Customers
SET LastUpdated = GETDATE()
WHERE CustomerID = 1;

BACKUP DATABASE Base_k   
     TO DISK = N'D:\BD\3лр\разностКоп\Base_kBackup.bak' 
        WITH  DIFFERENTIAL, RETAINDAYS = 1, NOFORMAT, INIT, 
  NAME = N'Base_k-Разростная База данных Резервное копирование', SKIP, NOREWIND, NOUNLOAD, STATS = 10



  --4
  BACKUP LOG Base_k
  TO DISK = N'D:\BD\3лр\журнТранз\Base_kBackup.bak' WITH NOFORMAT, INIT, 
  NAME = N'Base_k- Журнал транзакций База данных Резервное копирование', SKIP, NOREWIND, NOUNLOAD, STATS = 10



--5

UPDATE Customers
SET CompanyName = 'Updated Company Name'
WHERE CustomerID = 1;

USE master
 ALTER DATABASE Base_k SET SINGLE_USER WITH ROLLBACK IMMEDIATE
  RESTORE DATABASE Base_k FROM DISK=N'D:\BD\3лр\полнКоп\Base_kBackup.bak' WITH REPLACE, NORECOVERY;
 RESTORE DATABASE Base_k FROM DISK = N'D:\BD\3лр\разностКоп\Base_kBackup.bak' WITH NORECOVERY;
  RESTORE LOG Base_k FROM DISK = N'D:\BD\3лр\журнТранз\Base_kBackup.bak' WITH RECOVERY;
ALTER DATABASE Base_k SET MULTI_USER
