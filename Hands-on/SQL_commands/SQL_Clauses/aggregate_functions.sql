-- Aggregate Function -- 

-- Aggregate function is used to perform the calculation on one or more 
-- values and returns a single value. The aggregate function often is used 
-- with the GROUP BY, HAVING clause for the select statement 

-- AVG - calculates the average of the non-null values in a dataset. 

-- COUNT - returns the no of rows in a group, including the rows with NULL value 

-- MAX - returns the highest value (maximum) in a set of non-null values. 

-- MIN - returns the minimum value (lowest) in a set of non-null values. 

-- COUNT_BIG - function returns the number of rows (with BIGINT data type) in a group, including rows with NULL values. 

-- CHECKSUM_AGG - calculates the checksum value of based on a group of rows. 

-- SUM - summation of all non-NULL values in a set. 

-- STDEV - returns standard deviation of all values provided for the expression , but does so based sample of the data population. 

-- STDEVP -- returns standard deviation for all values being provided expression, based on the entire data population. 

-- VAR -- statistical variance of values in expression based on specified  data samples. 

-- VARP -- statistical variance of values in a expression but does so based on entire data population set. 

-- DISTINCT -- returns only distinct values in the result set. 


-- AVG example 

use AdventureWorksLT2019;

select AVG(UnitPrice) avg_order_price
from 
 SalesLT.SalesOrderDetail;

 -- Count example 

 use AdventureWorksLT2019;

 select COUNT(*) productNumber 
 from SalesLT.Product 
 where ListPrice > 500;


 -- max example 

 use AdventureWorksLT2019;

 select max(ListPrice) max_list_price 
 from SalesLT.Product;

-- min example 

use AdventureWorksLT2019;

select min(ListPrice) min_list_price 
from SalesLT.Product;

-- SUM example 

use AdventureWorksLT2019;

select 
 ProductNumber, 
 SUM(ProductID) as total_products
 from 
 SalesLT.Product
 GROUP BY ProductNumber
 ORDER BY total_products;




