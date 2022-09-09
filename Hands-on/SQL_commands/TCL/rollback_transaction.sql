use sqltraining
Go

-- COMMIT TRANSACTION -- 

DELETE FROM Customers.Customer WHERE FirstName = 'James';
ROLLBACK;

-- Savepoint 

SAVEPOINT SAVEPOINT_NAME 

