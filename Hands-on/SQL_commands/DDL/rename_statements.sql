use sqltraining
GO

-- Rename SQL statements-- (works for Oracle, MySQL, Mariadb)

ALTER TABLE Customers.CustomerAddress RENAME COLUMN StateProvince To STATE

-- for SQL Server

USE sqltraining;
GO
EXEC sp_rename 'Customers.CustomerAddress', 'Address';

