use sqltraining;

select UnitPrice, SKU 
FROM Orders.OrderDetail;

select CHAR(65) UnitPrice,
CHAR(90) SKU 
FROM Orders.OrderDetail

select CONCAT(FirstName , '' , LastName) Customer_Name 
FROM Customers.Customer;