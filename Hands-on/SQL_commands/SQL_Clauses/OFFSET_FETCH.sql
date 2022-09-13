-- OFFSET FETCH -- 

-- limit the number of rows returned by a query 

OFFSET row_count {ROW | ROWS}

use AdventureWorksLT2019;

select Name, 
ListPrice, 
Size 
from 
SalesLT.Product
ORDER BY 
 ListPrice,
 Name, 
 Size; 

-- Skip the first 10 rows and return the rest of rows 

use AdventureWorksLT2019;

select 
Name,
ListPrice
from 
SalesLT.Product
ORDER BY 
ListPrice,
Name
OFFSET 10 ROWS; 

-- Skip the first 10 products and select next 20 products, use both OFFSET and FETCH clause 

use AdventureWorksLT2019;

select 
Name, 
ListPrice
from 
SalesLT.Product
ORDER BY
ListPrice ASC,
Name
OFFSET 10 ROWS
FETCH NEXT 20 ROWS ONLY;

