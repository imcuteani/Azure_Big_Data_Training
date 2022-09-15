-- Create Stored Procedure -- 

use AdventureWorks2016
GO 

select * from Person.Address
GO 


use AdventureWorks2016;
GO

CREATE PROCEDURE dbo.uspGetCustAddress
AS 
SELECT * FROM Person.Address
GO 

EXEC dbo.uspGetCustAddress
GO
