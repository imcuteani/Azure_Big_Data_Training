-- Foreign Key -- 

-- Similar to check constraint, Allows for enforcing a range of values which are allowed in a column. 
-- A check constraint derives its data boundaries through the use of a static value or a function. 
-- The Foreign key derives its data boundary through the use of tables. 

-- Foreign key itself enforces a parent-child relationship. 
-- customer (parent) -> order (child), we need to have a primary key being defined for parent key in order to create the foreign key. 

-- Create table then add foreign keys to the existing tables -- 

use azuretraining
go 

create schema LookupTables AUTHORIZATION dbo 
go

create table LookupTables.Country
(CountryID int IDENTITY(1,1),
CountryName VARCHAR(70) NOT NULL,
CONSTRAINT pk_country PRIMARY KEY (CountryID))
go 

create table LookupTables.STATE
(StateID int IDENTITY(1,1),
StateProvince VARCHAR(50) NOT NULL UNIQUE,
CountryID int NOT NULL,
StateProvinceAbbrev CHAR(2) NOT NULL,
CONSTRAINT pk_stateprovince PRIMARY KEY (StateID))
go 

-- adding FOREIGN key 

alter table LookupTables.STATE
add CONSTRAINT fk_countrytostate FOREIGN KEY (CountryID)
REFERENCES LookupTables.Country(CountryID)
go 

-- delete rules 

-- while deleting the data from the parent table, we need to ensure it should follow the update and the deletion rules for the child table due to foreign key enforcement 

-- 1. no action 
-- 2. cascade 
-- 3. Set null 

-- update rules 

-- 1. No action 
-- 2. cascade 
-- 3. set null 