-- ALTER SQL Stored Procedures -- 

-- to retrieve the data from specific columns like AddressLine1, AddressLine2, City and PostalCode 


--@City is a local variable  

use AdventureWorks2016
GO

CREATE OR ALTER PROCEDURE dbo.uspGetParamAddress @City NVARCHAR(30) = NULL, 
@AddressLine1 NVARCHAR(60) = NULL
AS 
SELECT AddressLine1, AddressLine2, City, PostalCode
FROM
Person.Address
WHERE City = ISNULL(@City, City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1, AddressLine1) + '%'
GO 



EXEC dbo.uspGetParamAddress
GO


