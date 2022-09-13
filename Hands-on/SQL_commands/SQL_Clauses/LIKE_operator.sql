 -- LIKE Operator -- 

 -- the SQL Server LIKE operator which determines the if a character string
 -- matches a specified pattern. A pattern can be regular characteristics and wildcard characters. 

 -- Patterns - percent wildcard % : any string of zero or more characters 

 --- _ wilcard: any single character 

 -- The [list_of_chars] wildcard -- any single character within the set

 -- The [^]: any single character not within the specified range. 

 use AdventureWorksLT2019;

 select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName LIKE 'm%'
 ORDER BY 
  FirstName; 


  -- lastName ends with the string 'er' 


  use AdventureWorksLT2019;

  select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName LIKE '%er'
 ORDER BY 
  FirstName; 


  -- retrieve the lastname with t%s -- 
use AdventureWorksLT2019;

  select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName LIKE 't%s'
 ORDER BY 
  FirstName; 

  -- retrieve the lastname with second character as 'p' -- 

  use AdventureWorksLT2019;

  select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName LIKE '_p%'
 ORDER BY 
  FirstName; 

-- List of characters in pattern --- 


use AdventureWorksLT2019;

  select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName LIKE '[AB]%'
 ORDER BY 
  FirstName; 

-- character range wise pattern --- 

use AdventureWorksLT2019;

  select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName LIKE '[M-V]%'
 ORDER BY 
  FirstName; 


  -- The [^character list of Range] wildcard 


use AdventureWorksLT2019;

  select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName LIKE '[^A-H]%'
 ORDER BY 
  FirstName; 

  -- NOT LIKE operator -- 


use AdventureWorksLT2019;

 select CustomerID, 
 FirstName,
 LastName
 from SalesLT.Customer
 WHERE 
 LastName NOT LIKE 'A%'
 ORDER BY 
  FirstName; 





