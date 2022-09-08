-- Create table with computed column" 
USE sqltraining
GO


DROP TABLE Orders.OrderHeader
GO 

CREATE TABLE Orders.OrderHeader
(OrderID INT IDENTITY(1,1),
OrderDate DATE NOT NULL,
SubTotal MONEY NOT NULL,
TaxAmount MONEY NOT NULL,
ShippingAmount MONEY NOT NULL,
GrandTotal AS (SubTotal + TaxAmount + ShippingAmount),
FinalShipDate DATE NULL)
GO 

-- ALTER the computed column to an existing table-- 

ALTER TABLE Products.Product
ADD ProductMargin AS (ListPrice + ProductCost)
GO
