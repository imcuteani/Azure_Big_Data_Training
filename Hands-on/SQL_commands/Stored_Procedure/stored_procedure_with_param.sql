use AdventureWorks2016
GO
/*
DECLARE @City NVARCHAR(30)
SET @City = 'New Jersey'
*/

CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT * 
FROM Person.Address
WHERE City = @City
GO

EXEC dbo.uspGetAddress @City = 'Sydney';


