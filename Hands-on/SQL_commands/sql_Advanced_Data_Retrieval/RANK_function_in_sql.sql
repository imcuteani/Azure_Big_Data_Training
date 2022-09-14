-- Limitation of ROW_NUMBER function 

-- The ROW_NUMBER does not always return the same results if there're duplicate 
-- values within the ORDER BY clause that is specified. 
-- the column which is defined with the ORDER BY clause if having duplicate values
-- then the Row_Number() does not return the expected sequential results. 

-- RANK function to sequential ordering of rows
-- duplicate values will receive the same rank value 
-- will produce gaps in the sequence of returned rows when ties exist. 
-- leave gaps in the bunch of sequence of row groups 

use AdventureWorks2016;

select a.ProductID, 
b.Name, 
a.LocationID, 
a.Quantity,
RANK() OVER(PARTITION BY a.LocationID ORDER BY a.Quantity DESC) AS 'RANK'
FROM Production.ProductInventory a 
INNER JOIN Production.Product b 
ON a.ProductID = b.ProductID 
ORDER BY 'Rank';

-- Dense_Rank() function in SQL 


-- this will not leave any gaps netween the rank groups

select a.ProductID, 
b.Name, 
a.LocationID,
a.Quantity, 
DENSE_RANK() OVER(PARTITION BY a.LocationID ORDER BY a.Quantity DESC) AS 'Dense_Rank'
FROM Production.ProductInventory a 
INNER JOIN Production.Product b 
ON a.ProductID = b.ProductID
ORDER BY b.Name;










