--- SQL Server Views --- 

use AdventureWorksLT2019; 
GO

CREATE VIEW SalesLT.CustomerOrdersByAddress
AS 
SELECT CASE WHEN a.CompanyName IS NOT NULL THEN a.CompanyName 
ELSE a.FirstName + '' + a.LastName END CustomerName, 
b.AddressID, b.AddressType, b.ModifiedDate, b.CustomerID, c.OrderDate,c.TotalDue,c.ShipDate
FROM SalesLT.Customer a INNER JOIN SalesLT.CustomerAddress b 
ON a.CustomerID = b.CustomerID
INNER JOIN SalesLT.SalesOrderHeader c ON a.CustomerID = c.CustomerID 
GO

-- Querying the View -- 

select * from SalesLT.CustomerOrdersByAddress
GO

select  CustomerName, AddressID, OrderDate 
from SalesLT.CustomerOrdersByAddress
GO


-- SQL Server Views Performance Efficiency -- 

-- to reduce network latency 
-- enhance the throughput 
-- modify the data through the view 


-- Data Modification through View 

-- Requirements to be met 

-- the data modification through SQL Server View must reference exactly one table

-- Columns in the View must exactly directly reference the columns in a table

   -- The column needs to derive from an aggregate 
   -- the column cant be computed at the result of UNION ALL/ UNION/CROSS JOIN, EXCEPT or INTERSECT

   -- The column being modified cant be affected by DISTINCT, GROUP BY or HAVING claused. 
   -- The TOP operator is not used.  


use AdventureWorksLT2019;
GO

CREATE VIEW SalesLT.v_ProductModel
AS 
SELECT a.Name, a.CatalogDescription, b.ModifiedDate
FROM SalesLT.ProductModel a LEFT JOIN SalesLT.ProductModelProductDescription b
ON a.ProductModelID = b.ProductModelID
GO

select * from SalesLT.v_ProductModel
GO

-- INSERT ROW / data in a View 

INSERT INTO SalesLT.v_ProductModel
(Name, CatalogDescription, ModifiedDate)
VALUES('AdventureWorks-Cycle', '4/11/2021')
GO

-- Create View on CompanyByAddress -- 

use sqltraining; 
GO

create view dbo.v_PizzaCompany
AS 
select CompanyId, CompanyName, CompanyCity 
from dbo.PizzaCompany
GO

-- Querying data into the View 

select * from dbo.v_PizzaCompany;
GO

select CompanyID from dbo.v_PizzaCompany;
GO

-- Drop the View -- 
DROP VIEW dbo.v_PizzaCompany
GO

-- Insertion of data 

-- For Inserting data into SQL Server View , the View should be created 
-- from only one base table in order to insert data 
--into the corresponding view 


use sqltraining;
GO

INSERT INTO dbo.v_PizzaCompany
(CompanyName, CompanyCity)
VALUES('Denver', 'Colerado')
GO


-- ALTER SQL Server View -- 
use sqltraining;
GO

ALTER VIEW dbo.v_PizzaCompany
AS 
SELECT * from dbo.PizzaCompany
WHERE CompanyId='1'
GO

-- Query the View -- 

use sqltraining;
GO

select * from dbo.v_PizzaCompany
GO

-- DROP A SQL Server View -- 
use sqltraining;
GO

DROP VIEW dbo.v_PizzaCompany

-- Update the actual SQL table for any update purpose -- 

update dbo.PizzaCompany
SET CompanyName = 'Santa Clara'
WHERE CompanyId = 9


