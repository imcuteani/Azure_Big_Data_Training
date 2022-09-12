-- Check Constraints 

-- allows to restrict the range of values allowed in a colmn within a table. 

-- example, product list prices > 0 , taxamount, shippingamount cant be negative 


-- Create table with CHECK Constraint 

use azuretraining
go 

drop table Products.Product
go 

create table Products.Product
(ProductID int IDENTITY(1,1),
ProductName VARCHAR(50) NOT NULL,
ProductCost MONEY NOT NULL CHECK (ProductCost > 0),
ListPrice MONEY NOT NULL CHECK (ListPrice > 0),
ProductMargin AS (ListPrice - ProductCost),
ProductDescription XML,
CONSTRAINT pk_product PRIMARY KEY (ProductID))
go 


-- Add CHECK Constraint to an existing table -- 

use azuretraining
go 

alter table Orders.OrderDetail WITH CHECK 
add CONSTRAINT ck_quantity CHECK (Quantity >= 0)
go 

alter table Orders.OrderHeader WITH CHECK
add CONSTRAINT ck_subtotal CHECK (SubTotal > 0)
go 

alter table Orders.OrderHeader WITH CHECK 
add CONSTRAINT ck_taxamount CHECK (TaxAmount >= 0)
go 

alter table Orders.OrderHeader WITH CHECK 
add CONSTRAINT ck_shippingamount CHECK (ShippingAmount >= 0)
go 



alter table Orders.OrderDetail WITH CHECK
add CONSTRAINT ck_uniprice CHECK (UnitPrice > 0)
go 






