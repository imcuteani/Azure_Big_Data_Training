-- Non clustered indexes -- 

use sqltraining;

create NONCLUSTERED index idx_companyname on Customers.Customer(CompanyName);

create NONCLUSTERED INDEX idx_lastfirstname on Customers.Customer(LastName, FirstName);

create NONCLUSTERED index idx_city on Customers.CustomerAddress(City);

create NONCLUSTERED INDEX idx_Country on Customers.CustomerAddress(Country);

create NONCLUSTERED INDEX idx_jobtitle on HumanResources.Employee(JobTitle);

create NONCLUSTERED INDEX idx_lastfirstname on HumanResources.Employee(LastName, FirstName);