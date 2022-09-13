-- CAST and CONVERT Function -- 

-- convert an expression from one data type to another data type 

use azuretraining;
select 1 + CAST(1 as int) result;

select CAST(5.95 as int) result;

-- use cast() function to convert a decimal to another decimal with the different length 

select CAST(5.90 as DEC(3,0)) result;

-- select cast() function to convert string to datetime() 

select CAST('2020-04-04' as datetime) result;

use sqltraining;

select CONVERT(varchar(30), AddressID), 
AddressLine1, 
AddressLine2, 
City, 
StateProvince 
from Customers.CustomerAddress;


select CAST(AddressID AS varchar(30)), 
AddressLine1,
AddressLine2, 
City, 
StateProvince
from 
Customers.CustomerAddress;

-- CAST function is used to convert a data type without a specific format. 
-- CONVERT function is used to do converting and formatting of the data types at the same time. 

select AddressID, 
AddressLine1 + ' ' +
AddressLine2 , 
City, 
StateProvince
from Customers.CustomerAddress; 

-- ISNULL() and COALESCE() function -- 

-- these above functions helps to replace a NULL with a value 

select AddressID, 
AddressLine1 + ' ' + ISNULL(AddressLine2,''),
City, 
StateProvince
from Customers.CustomerAddress; 


select AddressID, AddressLine1 + ' ' + COALESCE(AddressLine2, ''), City,
StateProvince
from Customers.CustomerAddress;

select COALESCE(NULL, 100, 20, 30, 40); 

select COALESCE(null, null, null, null, null, 'Rainbow');

select COALESCE(null, null, null,null,'Rainbow',10);



