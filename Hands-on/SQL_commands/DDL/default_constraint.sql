-- Default Constraint 

-- A default constraint is defined to specify a value for a column when a value is not given by the user. 
-- A default value are used when a given value is typically assigned to a column if a column is defined as NOT NULL


use azuretraining
go 

drop table Customers.Customer
go 


create table Customers.Customer
(CustomerID int IDENTITY(1,1),
CompanyName VARCHAR(40) NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NULL,
ModifiedDate DATE NOT NULL CONSTRAINT df_modifieddate DEFAULT GETDATE(),
CONSTRAINT pk_customerid PRIMARY KEY (CustomerID))
go 

use azuretraining
GO

drop table Orders.OrderHeader
go 

create table Orders.OrderHeader
(OrderID int IDENTITY(1,1),
OrderDate DATE NOT NULL CONSTRAINT df_orderdate DEFAULT GETDATE(),
SubTotal MONEY NOT NULL CONSTRAINT ck_subtotalcheck CHECK (SubTotal > 0),
TaxAmount MONEY NOT NULL CONSTRAINT ck_taxamountvalue CHECK (TaxAmount > 0),
ShippingAmount MONEY NOT NULL CONSTRAINT ck_shippingamountvalue CHECK (ShippingAmount >= 0),
GrandTotal AS (SubTotal + TaxAmount + ShippingAmount),
FinalShipDate DATE NULL,
CONSTRAINT pk_orderheaderid PRIMARY KEY (OrderID))
go 


-- add default constraint to existing table -- 

use azuretraining
go 

create table Products.documentval (column_a int, column_b int); -- allows null

insert into Products.documentval(column_a) VALUES (10);

alter table Products.documentval 
add CONSTRAINT df_doc_column_b
DEFAULT 50 FOR column_b;
go 

select * from Products.documentval;


