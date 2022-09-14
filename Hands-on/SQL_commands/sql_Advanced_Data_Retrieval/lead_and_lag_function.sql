-- LEAD Function and LAG Function --- 

-- the LAG function has the ability to fetch the data from a previous row
-- LEAD function fetches data from a subsequent row. 
-- both of these functions are similar to each other
-- it's possible to replace by one the other by changing the sort order 


-- sales amount of previous year

use AdventureWorksDW2019;

SELECT
[Year]   = YEAR([OrderDate]),
[SalesAmount]  = SUM([SalesAmount]),
[SalesAmount Previous Year] = LAG(SUM([SalesAmount])) OVER (ORDER BY YEAR([OrderDate]))
FROM 
[dbo].[FactResellerSales] 
GROUP BY YEAR([OrderDate])
ORDER BY [YEAR];

-- LEAD Function 

SELECT
[Year]   = YEAR([OrderDate]),
[SalesAmount]  = SUM([SalesAmount]),
[SalesAmount Next Year] = LEAD(SUM([SalesAmount])) OVER (ORDER BY YEAR([OrderDate]))
FROM 
[dbo].[FactResellerSales] 
GROUP BY YEAR([OrderDate])
ORDER BY [YEAR];

-- the offset - as optional parameter for LAG and LEAD function, default is 1. 
-- default value, a default value can be specified instead of null. 

