-- Create SQL Server table with FileStream data type -- 
-- configure access to the database --  
use sqltraining;
exec sp_configure 'filestream_Access_level', 2
reconfigure

-- Restart your SQL Server Service then run this command to configure your db & check your FileStream access 
exec sp_configure

-- add your FileGroup to the database -- 

alter database sqltraining ADD FILEGROUP Records CONTAINS FILESTREAM
GO

-- add filestream file to your database-- 

ALTER DATABASE sqltraining ADD FILE 
( NAME = N'sqltrainingdemo', FILENAME = N'<your_SQL_server_db_location\DATA\FS>' ) TO FILEGROUP Records
GO

--- Create table with FILESTREAM data type 

create table dbo.FileRecords
([ID] [uniqueidentifier] ROWGUIDCOL NOT NULL UNIQUE,
[SERIALNUMBER] INTEGER UNIQUE,
[CHART] VARBINARY(MAX) FILESTREAM NULL)
GO

-- Insert data into your FILESTREAM data table 

INSERT INTO dbo.FileRecords
VALUES(newid(),1, NULL)
GO