use azuretraining
GO 


-- create sparse columns in sql server tables -- 

DROP TABLE Customers.CustomerAddress
GO 

CREATE TABLE Customers.CustomerAddress
(AddressID INT IDENTITY(1,1),
AddressType VARCHAR(40) NOT NULL,
AddressLine1 VARCHAR(50) NOT NULL,
AddressLine2 VARCHAR(50) SPARSE NULL,
AddressLine3 VARCHAR(50) SPARSE NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NULL,
Country VARCHAR(70) NULL,
CONSTRAINT pk_customeraddress PRIMARY KEY (AddressID))
GO 