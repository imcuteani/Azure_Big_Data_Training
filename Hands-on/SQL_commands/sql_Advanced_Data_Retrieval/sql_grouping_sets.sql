-- sql grouping sets -- 

-- SQL grouping set allows to return specific aggregated groupings that is required to return
-- multiple grouping sets values 

-- multiple levels of aggregated values to be returned in a single result set. 

use AdventureWorks2016;

select S.Name StoreName, 
ST.Name TerritoryName, 
ST.CountryRegionCode, 
ST.[Group],
P.FirstName
+ ' ' + P.LastName SalesPerson, 
SUM(SH.TotalDue)SalesTotal
FROM Sales.Customer C 
INNER JOIN Sales.Store S ON C.StoreID = S.BusinessEntityID
INNER JOIN Sales.SalesTerritory ST ON C.TerritoryID = ST.TerritoryID
INNER JOIN Person.Person P ON S.SalesPersonID = P.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader SH ON C.CustomerID = SH.CustomerID
GROUP BY GROUPING SETS(P.FirstName + ' ' + LastName), (S.Name),
(ST.Name), (ST.CountryRegionCode), (ST.[Group]); 







