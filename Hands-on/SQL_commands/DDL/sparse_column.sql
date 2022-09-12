use azuretraining 
go 

-- using sparse column -- 

drop table Customers.CustomerAddress
GO

-- create table with Sparse column -- 

create table Customers.CustomerAddress
(AddressID int IDENTITY(1,1),
AddressType VARCHAR(20) NOT NULL,
AddressLine1 VARCHAR(50) NOT NULL,
AddressLine2 VARCHAR(50) SPARSE NULL,
AddressLine3 VARCHAR(50) SPARSE NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NULL,
Country VARCHAR(70) NULL,
CONSTRAINT pk_customeraddress PRIMARY KEY (AddressID))
go 

drop table HumanResources.EmployeeAddress
go 


create table HumanResources.EmployeeAddress
(AddressID INT IDENTITY(1,1),
AddressType VARCHAR(20) NOT NULL,
AddressLine1 VARCHAR(50) NOT NULL,
AddressLine2 VARCHAR(50) SPARSE NULL,
AddressLine3 VARCHAR(50) SPARSE NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NULL,
Country VARCHAR(70) NULL,
CONSTRAINT pk_employeeaddress PRIMARY KEY (AddressID))
go

create table Document
(docid int primary key,
title varchar(100) not NULL,
productspec varchar(20) sparse NULL,
productloc smallint sparse NULL,
marketsurvey varchar(20) sparse NULL);

