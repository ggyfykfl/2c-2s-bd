CREATE VIEW User1view
           AS SELECT Phone, CompanyName FROM Customers
		   go

GRANT SELECT On User1view to User1_k;

SELECT * FROM User1view;
SELECT * FROM Customers;


SELECT HAS_PERMS_BY_NAME('dbo.Customers', 'OBJECT', 'SELECT') AS CanSelect;
REVOKE SELECT ON dbo.Customers FROM User1_k;