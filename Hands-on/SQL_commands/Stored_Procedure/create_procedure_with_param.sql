--- SQL Server Stored Procedure Variables --- 

-- Variables provides a way to manipulate, store, and pass data within a stored procedure
-- as well as between stored procedure and functions
-- local variable
-- global variable 

-- local variable is designated by @symbol, create, read, update, delete of this local variables 
-- global variable is designated by @@symbol -- you cannt perform create or write to global variables. 

-- @@ERROR -- Error code from the last statement executed 
--@@IDENTITY -- value of the last identity value inserted in the SQL table within the connection
--@@ROWCOUNT -- The number of rows affected by the last executed SQL statement 
--@@TRANCOUNT -- The number of open SQL transactions with the connection
--@@VERSION -- The Version of SQL Server (SQL Server 2019 - v15, Server2017 -v14)

-- SQL Server Stored Procedure local variables
/*
DECLARE @intvariable INT, 
        @datevariable DATE

DECLARE @tablevar TABLE
(ID INT NOT NULL,
Customer VARCHAR(50) NOT NULL)

*/ 

use AdventureWorks2016
GO 

DECLARE @City NVARCHAR(50)
SET @City = 'New York'

SELECT * 
FROM Person.Address
WHERE City = @City
GO 

-- Create Stored Procedure using a Parameter -- 

use AdventureWorks2016
GO 

CREATE PROCEDURE dbo.uspGetNewAddress @City NVARCHAR(50)
AS 
Select * 
FROM Person.Address
WHERE City = @City
GO 

-- Call this stored procedure -- 

EXEC dbo.uspGetNewAddress @City = 'New York'
GO  


-- Deletion of Stored Procedure -- 

use AdventureWorks2016
GO

DROP PROCEDURE dbo.uspGetNewAddress
GO


-- Create Stored Procedure with Multiple params -- 

use AdventureWorks2016
GO


CREATE PROCEDURE dbo.uspGetParamAddress @City NVARCHAR(30) = NULL, 
@AddressLine1 NVARCHAR(60) = NULL
AS 
SELECT * 
FROM Person.Address
WHERE City = ISNULL(@City, City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1, AddressLine1) + '%'
GO  

-- execute this stored procedure -- 

EXEC dbo.uspGetParamAddress @City ='Sydney'

-- return the rows from the procedure where the City equals to a provided value and addressline value would be matched -- 

EXEC dbo.uspGetParamAddress @City = 'Calgary', @AddressLine1 ='A'

EXEC dbo.uspGetParamAddress


