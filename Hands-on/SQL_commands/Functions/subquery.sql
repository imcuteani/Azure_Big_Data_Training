-- subquery -- 



use AdventureWorksLT2019;
select 
SalesOrderID, 
UnitPrice, 
ModifiedDate,
ProductID
from 
SalesLT.SalesOrderDetail
WHERE 
 ProductID IN (
 select ProductID 
 from SalesLT.Product
 where Color = 'Red'
 )
 ORDER BY 
 ModifiedDate DESC; 


--- using EXISTS with a subquery returns NULL -- 
 use AdventureWorksLT2019;

 select 
 CustomerID, 
 FirstName, 
 LastName
 from 
 SalesLT.Customer
 WHERE 
 EXISTS (SELECT NULL) -- EXISTS operator evaluates TRUE since SELECT query returns NULL 
 Order by FirstName, 
 LastName;

 -- if though the subquery returns a NULL value, the EXISTS operator is still evaluates to be TRUE 

 -- using EXISTS with a correlated subquery -- 

 use AdventureWorksLT2019;

 select 
 CustomerID, 
 FirstName, 
 LastName
 from 
 SalesLT.Customer c
 where EXISTS (
 select count(*) from 
 SalesLT.SalesOrderHeader O
 where CustomerID = c.CustomerID
 group by 
 CustomerID
 HAVING 
  COUNT(*) > 2)
  order by 
  FirstName,
  LastName;

