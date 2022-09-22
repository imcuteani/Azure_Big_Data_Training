-- Assignments sample -- 

use azuretraining;
GO


-- Create the SQL table -- 

create table City (
    ID INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    CountryCode VARCHAR(30) NOT NULL,
    District VARCHAR(50) NULL,
    Population INT NULL
    CONSTRAINT pk_id PRIMARY KEY(ID))
    GO

    -- Insert data into the SQL table -- 

    INSERT INTO City (Name, CountryCode, District, Population)
    VALUES ('Contoso','1861','Seattle',10000)
    GO 
    INSERT INTO City (Name, CountryCode, District, Population)
    VALUES ('Fabrikum','1862','Montana',30000)
    GO 

     INSERT INTO City (Name, CountryCode, District, Population)
    VALUES ('adventureworks','1661','Montreal',40000)
    GO 

-- Select the country code with value of 1661

select * from City 
WHERE ID = 3
GO

use azuretraining;
GO

create table triangles
(A INT NOT NULL,
B INT NOT NULL,
C INT NOT NULL,
Triangle_type VARCHAR(50) NOT NULL
CONSTRAINT pk_A PRIMARY KEY(A))
GO

use azuretraining;
GO

INSERT INTO triangles
(A, B, C, Triangle_type)
VALUES (20,20,23,'isoscales');

INSERT INTO triangles
(A, B, C,Triangle_type)
VALUES (21,20,20,'equilateral');


INSERT INTO triangles
(A, B, C,Triangle_type)
VALUES (24,24,24,'equilateral');

INSERT INTO triangles
(A, B, C,Triangle_type)
VALUES (22,21,23,'scalene');

INSERT INTO triangles
(A, B, C,Triangle_type)
VALUES (13,14,30,'Not a Triangle');
--DROP table triangles;

-- the query 

use azuretraining
GO

select * from dbo.triangles;

select Triangle_type, 
CASE 
WHEN A = 20 AND B = 20 THEN 'isoscales'
WHEN A = 24 AND B = 24 AND C = 24 THEN 'equilateral'
WHEN A = 22 AND B = 21 AND C = 23 THEN 'scalene'
ELSE 'Not a Triangle'
END AS Triangle_type
from triangles

select Triangle_type, 
CASE 
WHEN A >= 18 AND B >=18 THEN 'isoscales'
WHEN A = 24 AND B = 24 AND C = 24 THEN 'equilateral'
WHEN A >= 20 AND B >=21 AND C >= 23 THEN 'scalene'
ELSE 'Not a Triangle'
END AS Triangle_type
from triangles