-- CROSS JOIN -- 

use sqltraining;

select a.CustomerID, 
a.CompanyName,
a.FirstName, 
a.LastName,
b.FirstName,
b.LastName
from 
Customers.Customer a 
CROSS JOIN 
HumanResources.Employee b;  