-- HAVING CLAUSE example -- 

use adventureworksLT2019;


SELECT SalesOrderID, SUM(LineTotal) AS SubTotal 
FROM SalesLT.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) > 100000.00
ORDER BY SalesOrderID; 

select 



