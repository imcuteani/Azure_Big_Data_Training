-- Window Function -- 

-- works on a set of rows and columns to return a set of single 
-- aggregated value for each row. 

-- WINDOW function can aggregate the functions like Aggregate Window function -- SUM(), AVG(), MIN(),
-- RANKING WINDOW function - RANK(), DENSE_RANK(),ROW_NUMBER, NTILE()
-- VALUE WINDOW function-- LAG(), LEAD(), FIRST_VALUE, LAST_VALUE

use sqltraining;

-- SUM() 

select Orderid, 
OrderDate, 
SubTotal,
ShippingAmount,
SUM(ShippingAmount) OVER (PARTITION BY OrderDate) as ShippingValue
FROM Orders.OrderHeader;