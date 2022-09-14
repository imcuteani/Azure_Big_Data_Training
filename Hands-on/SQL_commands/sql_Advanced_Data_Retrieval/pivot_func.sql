-- Pivot tables in SQL Server -- 

-- pivot table is used to show the summarized or calcuated results that is generated from a large dataset. 
-- it is used to report on the specific dimensions from the vast datasets. 
-- Where users can convert rows into columns. 
-- this gives the ability to transpose column from a SQL server table easily 

-- Pivot tables are calculated by using the PIVOT operator 

-- gives up the table -valued expressions. 
-- turns the unique values in one column into multiple columns and performs the 
-- aggregation on remaining values 


use AdventureWorks2016;

select VendorID, [2001], [2002], [2003], [2004]
FROM (SELECT VendorID, PurchaseOrderID, Year(OrderDate)SubTotal
FROM Purchasing.PurchaseOrderHeader) r 
PIVOT 
(COUNT(r.PurchaseOrderID)
FOR SubTotal
IN ([2001], [2002],[2003],[2004]))
AS Results 
ORDER BY VendorID