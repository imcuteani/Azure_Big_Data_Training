USE azuretraining
GO

-- INSERT DATA Into tables -- 

INSERT INTO Customers.Address VALUES
('office','Pitt Street','Sydney','NSW', 'Sydney', 'NSW', 'Australia')
GO

INSERT INTO Customers.newCustomer VALUES
('Fabrikum','Matthew','Hobert', '2022-04-05')
GO

select AddressLine1, AddressLine2  from Customers.Address
GO 

select * from Customers.newCustomer
GO