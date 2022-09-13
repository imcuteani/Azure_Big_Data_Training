-- clustered indexes in sql -- 

use sqltraining;

-- dropping the foreign key first then modifying the primary key to nonclustered index 

alter table Orders.OrderDetail 
drop constraint fk_orderheadertoorderdetails;

-- change the existing primary keys to nonclustered 

alter table Orders.OrderHeader
drop constraint pk_orderheader
go 

alter table Orders.OrderHeader
add CONSTRAINT pk_orderheader PRIMARY KEY NONCLUSTERED (OrderID)
go

-- dropping the primary key constraint 
alter table Orders.OrderDetail 
drop CONSTRAINT pk_orderdetail 
go

alter table Orders.OrderDetail
add CONSTRAINT pk_orderdetail PRIMARY KEY NONCLUSTERED (OrderDetailID)
GO

-- recreate the foreign key 

alter table Orders.OrderDetail
add CONSTRAINT fk_orderheadertoorderdetails FOREIGN KEY (OrderID)
REFERENCES Orders.OrderHeader (OrderID)
GO

-- create new clustered index on the ShipDate/FinalShipDate column 

use sqltraining;

create CLUSTERED INDEX icx_shippingamount on Orders.OrderHeader(ShippingAmount)
GO

drop CLUSTERED INDEX icx_finalshipdate on Orders.OrderHeader()


create CLUSTERED INDEX icx_shipdate on Orders.OrderDetail(ShipDate)
GO
