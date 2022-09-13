--- ORDER BY clause --- 
use AdventureWorksLT2019;

select FirstName, 
MiddleName, 
LastName, 
CompanyName, 
SalesPerson, 
EmailAddress, 
Phone 
from SalesLT.Customer
ORDER BY FirstName
go 


-- using Numbers in ORDER BY Clause and specify decending order -- 

use AdventureWorksLT2019;

select FirstName, 
MiddleName, 
LastName, 
CompanyName, 
SalesPerson, 
EmailAddress,
Phone 
from SalesLT.Customer
ORDER BY 4 DESC
go 

-- specify ascending and decending order in the same query -- 

use AdventureWorksLT2019;

select FirstName, 
MiddleName, 
LastName, 
CompanyName, 
SalesPerson,
EmailAddress, 
Phone
FROM SalesLT.Customer
ORDER BY FirstName ASC, 
        LastName DESC
GO
