-- A primary key defines the column or columns within a table that uniquely
-- identifies each row within the table. During INSERT operation
-- without a primary key, impossible to modify to delete a single row
-- unless it can be uniquely defined. 
-- a table in a db should have a primary key
-- it cant contain a NULL 

use azuretraining
go 

drop table Customers.Customer
go 

-- create tables with primary key --

create table customers.customers
(CustomerID int IDENTITY(1,1),
CompanyName VARCHAR(50) NULL,
FirstName VARCHAR(50) NULL,
LastName VARCHAR(50) NULL,
ModifiedDate DATE NOT NULL,
CONSTRAINT pk_customer PRIMARY KEY (CustomerID))
go 

drop table Customers.CustomerAddress
go 

create table Customers.CustomerAddress
(AddressID int IDENTITY(1,1),
AddressType VARCHAR(20) NOT NULL,
AddressLine1 VARCHAR(50) NOT NULL,
AddressLine2 VARCHAR(50) NULL,
AddressLine3 VARCHAR(50) NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NULL,
Country VARCHAR(70) NULL,
CONSTRAINT pk_customeraddress PRIMARY KEY (AddressID))
go 

drop table Orders.OrderHeader
go 

create table Orders.OrderHeader
(OrderID int IDENTITY(1,1),
OrderDate DATE NOT NULL,
SubTotal MONEY NOT NULL,
TaxAmount MONEY NOT NULL,
ShippingAmount MONEY NOT NULL,
GrandTotal AS (SubTotal + TaxAmount + ShippingAmount),
FinalShipDate DATE NULL,
CONSTRAINT pk_orderheader PRIMARY KEY (OrderID))
go 

use azuretraining
go

-- add primary key to existing table -- 

alter table Orders.OrderDetail
 add CONSTRAINT pk_orderdetail PRIMARY KEY (OrderDetailID)
 go 

 alter table Products.Product 
 add constraint pk_product PRIMARY KEY (ProductID)
 go 

 alter table HumanResources.Employee 
 add CONSTRAINT pk_employee PRIMARY KEY (EmployeeID)
 go 




