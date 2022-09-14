-- First Value function -- 
-- Last value function--

-- the first value function returns the value of the specified expression
-- with respect to the first row in the frame
-- Last Value function returns the value of the expression with the 
-- last row in the frame. 

use AdventureWorks2016;

select SalesOrderID, 
ShipDate,
SalesOrderNumber,
TotalDue,
First_Value(TotalDue) OVER (ORDER BY TotalDue) firstDue,
Last_Value(TotalDue) OVER (ORDER BY TotalDue) lastDue
FROM Sales.SalesOrderHeader; 

