-- INNER JOIN in SQL Server -- 

-- allows to combine the data from more than one table while at the same time, 
-- it also provides a filtering capability. 
-- combines two tables based on the joining criteria specified  in the ON clause 
-- eliminating the any rows from both tables which dont meet the criteria

use AdventureWorksLT2019;

select a.ProductID, a.Name, b.SalesOrderID
from SalesLT.Product a 
INNER JOIN
SalesLT.SalesOrderDetail b 
ON a.ProductID = b.ProductID AND a.Color = 'Black'; 


select a.ProductID, a.Name, b.SalesOrderID, b.UnitPrice, b.ModifiedDate
from SalesLT.Product a 
INNER JOIN
SalesLT.SalesOrderDetail b 
ON a.ProductID = b.ProductID AND a.Color = 'Red'; 

select a.ProductID, a.Name, b.SalesOrderID, b.UnitPrice, b.ModifiedDate
from SalesLT.Product a 
INNER JOIN
SalesLT.SalesOrderDetail b 
ON a.ProductID = b.ProductID 
WHERE b.ModifiedDate = '2008-06-01'
ORDER BY a.Name;








