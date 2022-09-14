-- Full Outer Join -- 

-- Based on two tables specified in the join clause. 
-- all data is returned from both of the tables regardless of the matching data 

-- preserve the contents of both of the left- and right-hand side tables. 
-- when a match does not exist, A NULL will appear in the result. 


use AdventureWorks2016;

select a.ProductID, 
a.Name,
b.SalesOrderID
from Production.Product a 
FULL OUTER JOIN Sales.SalesOrderDetail b 
ON a.ProductID = b.ProductID 
where a.Color = 'Black'
ORDER BY 1;
