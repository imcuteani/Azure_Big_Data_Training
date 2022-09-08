use sqltraining
Go

-- COMMIT TRANSACTION -- 

DELETE FROM Customers.Customer WHERE FirstName = 'James';
ROLLBACK;

