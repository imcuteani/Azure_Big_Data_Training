-- CUBE operaor --- 

-- CUBE operator can be added with the SELECT statement. it's extension of the 
-- GROUP BY clause. 
-- CUBE allows to generate subtotals like the ROLLUP extension. 
-- CUBE extension can generate subtotals for all combinations og grouping columns as 
-- specified in the GROUP BY clause. 

-- A NULL value appears as a placeholder to mean possible placeholder for fields.

-- treats all columns independently when calculating all permutations. 
-- however, calculating all permutations isn't always required for. 

-- calculating across months regardless of years has constraints. 
use AdventureWorks2016;

select CustomerID, 
SalesPersonID,
TerritoryID, 
--YEAR(OrderDate),
--OrderYear, 
MONTH(OrderDate),
--OrderMonth, 
SUM(TotalDue) Total
FROM Sales.SalesOrderHeader 
GROUP BY CustomerID, SalesPersonID, TerritoryID, 
 MONTH(OrderDate) WITH CUBE 


 -- ROLLUP operaotor can be used with hiearchies, ROLLUP is a special case for CUBE operator, 
 -- it excludes all cases that dont follow a hiearchy within the results. 
 -- this following query will eliminate all cases that include either year or month 
 -- which attempting  the same month across years. 

 select CustomerID, 
SalesPersonID,
TerritoryID, 
--YEAR(OrderDate),
--OrderYear, 
MONTH(OrderDate),
--OrderMonth, 
SUM(TotalDue) Total
FROM Sales.SalesOrderHeader 
GROUP BY CustomerID, SalesPersonID, TerritoryID, 
 MONTH(OrderDate) WITH ROLLUP