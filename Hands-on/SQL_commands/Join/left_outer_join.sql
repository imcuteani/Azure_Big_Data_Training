-- SQL Left Outer Join -- 

-- it will include the rows from the left table in the join clause. 
-- regardless of the matching rows in the right table, the left outer join includes the rows 
-- where the condition is met plus all the rows from the table on the left side where the condition is not met. 
-- Fields from the right table with no match will be displayed as NULL values 
-- Person.Contact table (c)
-- Sales.SalesPerson table (sp)
-- Sales.SalesTerritory table (st)
--  return the matching rows between the Person.Contact and Sales.SalesPerson table in conjunction with all of the data from 
-- the Sales.SalesPerson table and the marching rows in the Sales.SalesTerritory table. 

-- the records existing Sales.SalesPerson table and not in the Sales.SalesTerritory table, NULL is being returned for the columns in the Sales.SalesTerritory table 

-- sorting for the final returned rows based on TerritoryID and LastName of contact table. 

use AdventureWorks2016;

select c.ContactID, 
c.FirstName,
c.LastName,
sp.SalesPersonID,
sp.CommissionPct, 
sp.SalesYTD,
sp.SalesLastYear, 
sp.Bonus,
st.TerritoryID,
st.Name,
st.[Group],
st.SalesYTD
from Person.Contact c 
INNER JOIN Sales.SalesPerson sp 
ON c.ContactID = sp.ContactID
LEFT OUTER JOIN Sales.SalesTerritory st 
ON st.TerritoryID = sp.TerritoryID
ORDER BY st.TerritoryID, c.LastName

-- more than two tables can joined in one single select statement
-- more than one join type can be used in a single select statement. 

