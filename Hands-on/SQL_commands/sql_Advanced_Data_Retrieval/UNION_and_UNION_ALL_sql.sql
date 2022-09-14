-- SQL Union operator -- 

-- combines the result set together while eliminiting any duplicates.

-- Both of the select statements must number of columns
-- Columns in both of the Select statement must have compatible data types
-- Column order must match in both of the select statement
-- can define the Group By and Having clause with each Select statement. 
-- cant use Order BY with individual select statement, we can use it with the result set
-- generated from the UNION of both SELECT statements. 


use AdventureWorks2016;

--using sqltraining;

select p.LastName, 
p.FirstName
FROM Person.Person p 
JOIN HumanResources.Employee e 
ON p.BusinessEntityID = e.BusinessEntityID 
WHERE e.BusinessEntityID = 2
UNION 
select p.LastName, p.FirstName
FROM Person.Person p JOIN HumanResources.Employee e 
ON p.BusinessEntityID = e.BusinessEntityID 
WHERE e.BusinessEntityID = 2 
UNION 
select p.LastName, 
p.FirstName 
FROM Person.Person p JOIN HumanResources.Employee e 
ON p.BusinessEntityID = e.BusinessEntityID
WHERE e.BusinessEntityID = 2 


-- UNION ALL operator will combine result sets together while preserving any duplicate values. 

select p.LastName, 
p.FirstName
FROM Person.Person p 
JOIN HumanResources.Employee e 
ON p.BusinessEntityID = e.BusinessEntityID 
WHERE e.BusinessEntityID = 2
UNION ALL
select p.LastName, p.FirstName
FROM Person.Person p JOIN HumanResources.Employee e 
ON p.BusinessEntityID = e.BusinessEntityID 
WHERE e.BusinessEntityID = 2 
UNION ALL
select p.LastName, 
p.FirstName 
FROM Person.Person p JOIN HumanResources.Employee e 
ON p.BusinessEntityID = e.BusinessEntityID
WHERE e.BusinessEntityID = 2 

-- INTERSECT operator 

-- INTERSECT operator will return results where the rows on the left-side or
-- right-hand side can match. 


select ProductID
from Production.Product
INTERSECT 
select ProductID
FROM Production.ProductDocument


select a.ProductID 
FROM Production.Product a INNER JOIN 
Production.ProductDocument b 
ON a.ProductID = b.ProductID



-- EXCEPT operator 

-- will return the rows from the left-side that do not exist on the right side 

select ProductID 
FROM Production.Product 
EXCEPT 
select ProductID 
FROM Production.ProductDocument

-- return the rows from the product table matching to the product ids 
-- of the productdocument table where the productid is not same -- 

select a.ProductID 
FROM Production.Product a 
INNER JOIN Production.ProductDocument b 
ON a.ProductID != b.ProductID


