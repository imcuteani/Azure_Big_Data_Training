-- between operator -- 

-- between operator is a logical operator allows to specify a range to test. 

-- 1. use column or sql expression to test
-- 2. start_expression and end_expression between the BETWEEN and AND Keywords. 
-- between operator returns true if the expression is to test is >= to the value of the start_expression and <= to the value of the end_expression. 

use AdventureWorksLT2019;

select 
ProductID,
Name, 
ListPrice
from 
SalesLT.Product 
WHERE 
ListPrice BETWEEN 150.55 AND 255.55
ORDER BY 
ListPrice; 

-- not between -- 
use AdventureWorksLT2019;

select 
ProductID,
Name, 
ListPrice
from 
SalesLT.Product 
WHERE 
ListPrice NOT BETWEEN 150.55 AND 255.55
ORDER BY 
ListPrice; 
