-- unique key constraint 

-- unique key defined on the columns or column required to be have unique within the table, a unique constraint should prevent to duplicate data within the table. 

-- table have only one primary key 

-- primary key cant have null, unique key can have null value 
-- though unique constraint allows null, can have only A single row with a null value in the table. 
-- if the unique constraint is defined across few columns, can have only a single occurance of each combination of a null within each column defined for the unique ke. 

-- create table with unique constraint 

use azuretraining
go

create table Products.ProductDocument
(DocumentID UNIQUEIDENTIFIER rowguidcol unique,
DocumentType VARCHAR(20) NOT NULL,
Document VARBINARY(MAX) FILESTREAM NULL,
CONSTRAINT pk_productdocument PRIMARY KEY (DocumentID))
go 

--use unique constaint 

use azuretraining
go 

create table Products.TRANSACTIONHistory
( 
    TransactionID int not null, 
    CONSTRAINT AK_transactionID UNIQUE (transactionID)

);
go 


-- add unique constraint to an existing table -- 

use azuretraining
go 

alter table Products.Product
ADD CONSTRAINT ak_listpricecost UNIQUE (ListPrice, ProductCost);



