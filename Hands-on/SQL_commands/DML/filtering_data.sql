-- filtering data -- 

use sqltraining;

select ProductID,
ProductName, 
ProductCost,
ListPrice,
ProductDescription 
from 
Products.Product 
where 
ListPrice < 15; 

select ProductID, 
ProductName, 
ProductCost, 
ListPrice,
ProductDescription 
from 
Products.Product 
where 
ListPrice > 8.99 AND ListPrice < 35.99; 

select ProductID, 
ProductName,
ProductCost,
ListPrice,
ProductDescription
FROM
Products.Product
where ListPrice > 7.99 OR ListPrice < 34.99;

select ProductID, 
ProductName, 
ProductCost, 
ListPrice,
ProductDescription 
from 
Products.Product
where ProductName > 'Mu';


select ProductID, 
ProductName,
ListPrice
from 
Products.Product
where (ListPrice BETWEEN 2 AND 15) 
OR (ListPrice BETWEEN 18 AND 50);

select ProductID, 
ProductName,
ListPrice
from 
Products.Product
where (ListPrice BETWEEN 2 AND 15) 
AND (ListPrice BETWEEN 18 AND 50);

select ProductID,
ProductName,
ListPrice 
from 
Products.Product
where ProductName LIKE '%msun%'



