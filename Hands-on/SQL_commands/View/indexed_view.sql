--- Indexed View -- 

-- When a Index is built against a list of values, SQL Server executes the 
-- SELECT statement defined by  the view, stores the result set and then it builds 
-- the index. 

-- As a result of Indexed View, any subsequent DML issued against any of the tables the view is defined
-- against will cause SQL Server to incrementally update the stored result set & maintain the index. 

-- Requirements for Indexed Views 

-- The SELECT statement cannot reference other views 
-- All of the functions should be deterministic
-- AVG, MIN, MAX, STDEV, VAR are not allowed in Indexed View 
-- The Indexed View should be created with the SCHEMABINDING option. 
-- The SELECT statement should not contain sub-queries or outer joins. 
-- It does not have support for operators like EXCEPT, INTERSECT, TOP, UNION
-- UNION ALL, ORDER BY, DISTINCT, COMPUTE/COMPUTE BY, CROSS/OUTER JOIN, PIVOT operators. 

-- Benefits of SchemaBinding --
-- SCHEMABINDING SQL Server Views performance, SQL Server User-defined Function Performance
-- SCHEMABINDING is used with this Views and Stored Procedure 
-- Preventing unauthorized/inadvertent changes. 
-- prevents the unexpected results. 
-- EXEC sys.sp_refershview N'dbo.fault_view'; 

-- it prevents the columns from changed accidentally
-- it prevents the SQL injection attack 



use AdventureWorksLT2019
GO

-- create indexed view --- 

CREATE VIEW SalesLT.v_indexOrder
WITH SCHEMABINDING
AS 
SELECT a.SalesOrderID, 
a.OrderQty,
 a.UnitPrice,
  a.LineTotal,
   b.OrderDate, 
   b.ShipDate, 
   b.SubTotal
   FROM SalesLT.SalesOrderDetail a 
   INNER JOIN 
   SalesLT.SalesOrderHeader b 
   ON a.SalesOrderID = b.SalesOrderID
   GO 

select * from SalesLT.v_indexOrder
GO

   CREATE UNIQUE CLUSTERED INDEX icx_orderitems 
   ON SalesLT.v_indexOrder(SalesOrderID)
   GO 

drop view SalesLT.v_indexOrder
GO


--- Indexes --- 

-- optimization of queries in terms of performance 
-- query optimizer determines how to data will be retrived 
-- Optimizer will select the index against the table reference the query if it determines that a given index 
-- will improve the query performance.  
-- network round-trip time
-- storage & memory cycles
-- optimizes the network latency 
-- optimzes the query throughput 
-- Without an index/clustered index, a table is referred as heap. 





