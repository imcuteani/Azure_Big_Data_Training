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


use tempdb;

create table #TempPerson(
PersonID int PRIMARY KEY IDENTITY(1,1),
FirstName varchar(50),
LastName varchar(50),
City varchar(50));


select * from #TempPerson; 

-- insertion into the TempPerson

insert into #TempPerson
values
('Pearson', 'Huan', 'Ohio'),
('Baker', 'Ramzi', 'NY');

select * from #TempPerson

-- SELECT into the temp table -- 

select * into #TempPerson
from #Orders

select * from #TempPerson



create table #Orders
(OrderId int PRIMARY KEY IDENTITY(1,1),
OrderName varchar(50), 
SalesPerson varchar(50)); 

INSERT INTO #Orders 
values 
('printer-order', 'M.K.Johnson'),
('Monitor-order', 'A.P');


-- inserting into the TempProductTable 

insert into #TempProductTable
values 
('Monitor', '100'),
('printer', '200');

select * from #TempProductTable;



-- global temp tables -- 

create table ##Customers (CustomerId INT IDENTITY(1,1) PRIMARY KEY, 
CustomerName varchar(50),
Email varchar(50),
Address varchar(50),
Country varchar(70));

-- drop table -- 

BEGIN TRAN
DELETE FROM ##Customers
