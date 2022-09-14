-- Common Table Expression -- 

-- introduced in SQL server 2005, it's the ability by which a temporary named 
-- result set which you can reference within a SELECT, UPDATE or DELETE statement. 
-- The CTE can also used in a view. 
-- Ability to embed iterative routines into t-SQL. 
-- A routine which contains an anchor query against which a second is recursively executed
-- An outer query which references the routine and specifes the number of recursion levels. 

-- starts with a "WITH" clause and followed by the expression name. 
-- we can use this expression name in our outer query to display the results of our CTE query 
-- and be writing our CTE query definition. 

-- WITH expression_name [(column names1....n)]
--AS
--(CTE query definition)

-- retrives the employees along with their managers across 
-- of 25 organization units. 

-- in CTE, we need to retrieve the anchor value 


-- Non-recursive 

use AdventureWorks2016;

WITH EMP_cte(BusinessEntityID, OrganizationNode, FirstName, LastName,
JobTitle, RecursionLevel)
AS (SELECT e.BusinessEntityID, e.OrganizationNode, p.FirstName, 
p.LastName, e.JobTitle, 0 FROM HumanResources.Employee e 
INNER JOIN Person.Person as p
ON p.BusinessEntityID = e.BusinessEntityID
UNION ALL 
SELECT e.BusinessEntityID, e.OrganizationNode, p.FirstName, 
p.LastName, e.JobTitle, RecursionLevel +1
FROM HumanResources.Employee e
INNER JOIN EMP_cte ON e.OrganizationNode = EMP_cte.OrganizationNode.GetAncestor(1)
INNER JOIN Person.Person p ON p.BusinessEntityID = e.BusinessEntityID)
SELECT EMP_cte.RecursionLevel, EMP_cte.BusinessEntityID, EMP_cte.FirstName,
EMP_cte.LastName, EMP_cte.OrganizationNode.ToString() AS OrganizationNode, 
p.FirstName AS ManagerFirstName, p.LastName as ManagerLastName
FROM EMP_cte INNER JOIN HumanResources.Employee e
ON Emp_cte.OrganizationNode.GetAncestor(1) = e.OrganizationNode
INNER JOIN Person.Person p ON p.BusinessEntityID = p.BusinessEntityID 
ORDER BY RecursionLevel, EMP_cte.OrganizationNode.ToString()
OPTION (MAXRECURSION 25)


-- CTE example 

-- non_recursive CTE - 

-- non-recursive are simple to manage due to absence of recursion. 
-- or repeated processing in a sub-routine. 
-- to show up the row_number from the database table from 1 to 10. 


WITH ROWCTE(RowNO)
AS 
(SELECT ROW_NUMBER() OVER(Order BY name ASC) AS ROWNO
FROM sys.databases
WHERE database_id <=10)
select * from ROWCTE;
