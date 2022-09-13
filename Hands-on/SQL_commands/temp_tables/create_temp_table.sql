-- temp tables -- 

-- temp tables are used to store data temporarily in sql server, the session in which temp tables are created
-- when closed, these tables are dropped. 

-- local temp table 
-- global temp table 

-- local temp tables are limited by the connection in which that have been created. 

use tempdb; 

create table #TempProductTable(
    ProductID int PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(50), 
    ProductCost VARCHAR(50)
); 

