use sqltraining;
GO

create schema Test;
GO

CREATE SEQUENCE Test.CountBy1
START WITH 1 
INCREMENT BY 1;
GO

CREATE SEQUENCE Test.CountTest1
START WITH 1
INCREMENT BY 1; 
GO

-- select Current Value of the sequence -- 

SELECT NEXT VALUE FOR Test.CountTest1

-- CREATE SEQUENCE decrease by 1-- 

CREATE SEQUENCE Test.CountByNeg1
START WITH 1
INCREMENT BY -1;
GO



-- CREATE SEQUENCE with default value -- 

CREATE SEQUENCE Test.TestSequence; 
GO

-- execute the sys.sequences to view the sequence property 

SELECT * FROM sys.sequences WHERE name='TestSequence';
GO


-- Create and use a sequence object in a single SQL table example 

-- create a schema named procurement 

--CREATE SCHEMA <your_schema_name> ;
-- GO 


-- create a table with this schema 
use sqltraining;

CREATE TABLE Test.purchase_orders(
    order_id INT PRIMARY KEY,
    vendor_id INT NOT NULL,
    order_date date NOT NULL);

-- Create a new sequence object name order_number which starts with 1 and increments by 1. 

CREATE SEQUENCE Test.order_number
AS INT
START WITH 1
INCREMENT BY 1;
GO

-- INSERT three rows into the table purchase_orders and 
--use the values generated
-- by the Test.order_number sequence. 


INSERT INTO Test.purchase_orders
(order_id,
vendor_id,
order_date)
VALUES
(NEXT VALUE FOR Test.order_number,1,'2022-09-14');

INSERT INTO Test.purchase_orders
(order_id,
vendor_id,
order_date)
VALUES
(NEXT VALUE FOR Test.order_number,2,'2022-09-15');

INSERT INTO Test.purchase_orders
(order_id,
vendor_id,
order_date)
VALUES
(NEXT VALUE FOR Test.order_number,3,'2022-09-16');

-- View the contents of the purchase_order table now

select 
order_id, 
vendor_id,
order_date
FROM 
Test.purchase_orders;

-- Benefits of Identity Number with Sequence -- 

-- For the my_table has identity -- 

-- IDENTITY_INSERT my_table ON; 

-- IDENTITY_number has greater storage space 

-- SQL Server preallocates the 
-- number of sequence numbers specified CACHE object 

-- 1 to cache size 15 





