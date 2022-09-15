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

create view dbo.v_CompanyByAddress
AS 
select a.CompanyName, a.CompanyCity, b.WaterParkLocation 
from dbo.PizzaCompany a LEFT JOIN dbo.WaterPark b 
ON a.CompanyId = b.CompanyId 
GO





