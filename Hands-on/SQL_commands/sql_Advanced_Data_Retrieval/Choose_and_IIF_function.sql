-- Choose function

-- it's available in tsql to return the item at the specified index from the list of values 

-- an item can be retrieved as the specific index position from the list

-- CHOOSE(index, value[1], value[2].... value[n])

-- depends on Index 
-- depends on the items, helps to pick the item as per the index defined. 

use AdventureWorks2016;

select 
DISTINCT(FirstName+ ' ' + LastName) AS NAME 
, DATEPART(DD, ModifiedDate) AS [Date]
, CHOOSE(DATEPART(MM, ModifiedDate),'January', 'February','March','April','May','June',
'July','August','September','October','November','December')[Month]
, DATEPART(YYYY, ModifiedDate) AS [YEAR]
FROM [Person].[Person]
ORDER BY Name ASC 

use sqltraining;

select top 3 [EmployeeID], 
[JobTitle],
[HireDate],
CHOOSE(MONTH([HireDate]),'January', 'February', 'March', 'April', 'May', 
'June', 'July', 'August', 'September', 'October', 'November', 'December') 
AS [HireMonth]
, [FirstName]
FROM [HumanResources].[Employee]


-- IIF Logical Function -- 

-- defines the one of the two values depending upon the condition whether the Boolean expression 
-- returned it evaluates to be true or false 


use AdventureWorks2016;

select StateProvinceCode, 
CountryRegionCode, 
IIF(TRY_PARSE(StateProvinceCode as int) between 0 AND 95, 'France','Canada') 
AS Country
FROM Person.StateProvince
WHERE StateProvinceCode IN (95,'AB'); 




