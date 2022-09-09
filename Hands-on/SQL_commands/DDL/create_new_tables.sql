use azuretraining
GO 

-- Create schema humanresources -- 

CREATE SCHEMA humanresources AUTHORIZATION dbo 
GO 

-- Create sample tables -- 
-- Create Customer table -- 

CREATE TABLE Customers.Customer
(CustomerID INT IDENTITY(1,1),
CompanyName VARCHAR(50) NULL,
FirstName VARCHAR(50) NULL,
LastName VARCHAR(50) NULL,
ModifiedDate DATE NOT NULL)
GO 

-- Create Customer Address --

CREATE TABLE Customers.CustomerAddress 
(AddressID INT IDENTITY(1,1),
AddressType VARCHAR(20) NOT NULL,
AddressLine1 VARCHAR(50) NOT NULL,
AddressLine2 VARCHAR(50) NULL,
AddressLine3 VARCHAR(50) NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NULL,
Country VARCHAR(70) NOT NULL)
GO 


-- Create OrderDetails table -- 

CREATE TABLE Orders.OrderDetails
(OrderDetailID INT IDENTITY(1,1),
SKU CHAR(10) NOT NULL,
Quantity INT NOT NULL,
UnitPrice MONEY NOT NULL,
ShipDate DATE NULL)
GO 

-- Create Employee table -- 

CREATE TABLE humanresources.Employee
(EmployeeID INT IDENTITY(1,1),
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
JobTitle VARCHAR(40)NOT NULL,
BirthDate DATE NOT NULL,
HireDate DATE NOT NULL)
GO

-- Computed Columns -- 

use azuretraining
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

-- ADD Computed column to an existing table -- 

ALTER TABLE Orders.OrderHeader
  ADD ProductMargin AS (ShippingAmount - TaxAmount)
  GO 

