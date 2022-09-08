 USE sqltraining
 GO
 
 -- Create Schema -- 

CREATE SCHEMA HumanResources AUTHORIZATION dbo 
GO 

-- Create Table --

CREATE TABLE Customers.Customer
(CustomerID INT IDENTITY(1,1),
CompanyName VARCHAR(50) NULL,
FirstName VARCHAR(50) NULL,
LastName VARCHAR(50) NULL,
ModifiedDate DATE NOT NULL)
GO

CREATE TABLE Customers.CustomerAddress
(AddressID INT IDENTITY(1,1),
AddressType VARCHAR(20) NOT NULL,
AddressLine1 VARCHAR(50) NOT NULL,
AddressLine2 VARCHAR(50) NULL,
AddressLine3 VARCHAR(50) NULL,
City VARCHAR(50) NOT NULL,
StateProvince VARCHAR(50) NULL,
Country VARCHAR(70) NULL)
GO

CREATE TABLE Orders.OrderHeader
(OrderID INT IDENTITY(1,1),
OrderDate DATE NOT NULL,
SubTotal MONEY NOT NULL,
TaxAmount MONEY NOT NULL,
ShippingAmount MONEY NOT NULL,
FinalShipDate DATE NULL)
GO

CREATE TABLE Orders.OrderDetail
(OrderDetailID INT IDENTITY(1,1),
 SKU CHAR(10) NOT NULL,
 Quantity INT NOT NULL,
 UnitPrice MONEY NOT NULL,
 ShipDate DATE NULL)
 GO 

 CREATE TABLE Products.Product
 (ProductID INT IDENTITY(1,1),
 ProductName VARCHAR(50) NOT NULL,
 ProductCost MONEY NOT NULL,
 ListPrice MONEY NOT NULL,
 ProductDescription XML NULL)
 GO 

 CREATE TABLE HumanResources.Employee
 (EmployeeID INT IDENTITY(1,1),
 FirstName VARCHAR(50) NOT NULL,
 LastName VARCHAR(50) NOT NULL,
 JobTitle VARCHAR(50) NOT NULL,
 BirthDate DATE NOT NULL,
 HireDate DATE NOT NULL)
 GO 

 CREATE TABLE HumanResources.EmployeeAddress
 (AddressID INT IDENTITY(1,1),
 AddressType VARCHAR(20) NOT NULL,
 AddressLine1 VARCHAR(50) NOT NULL,
 AddressLine2 VARCHAR(50) NOT NULL,
 AddressLine3 VARCHAR(50) NULL,
 City VARCHAR(50) NOT NULL,
 StateProvince VARCHAR(50) NULL,
 Country VARCHAR(70) NULL)
 GO