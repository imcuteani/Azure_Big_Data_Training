-- Create database-- 

CREATE DATABASE "sqltraining"
GO

 use master;
 EXEC sp_configure 
 go

 use master
 exec sp_configure filestream_access_level, 2
 go 
 reconfigure with OVERRIDE
 go 

 create database sql2019db on primary 
 (Name = N'sql2019db', FileName = N'Server\MSSQL15.MSSQLServer\MSSQL\DATA\sql2019db.mdf',
 size = 100MB, maxsize = UNLIMITED, FILEGROWTH = 10%), 
 FILEGROUP FG1 DEFAULT (NAME = N'sql2019FG1_Dat1', 
 FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLServer\MSSQL\DATA\sql2019_1.ndf', 
 size = 2 MB, MAXSIZE = UNLIMITED, FILEGROWTH= 2MB)
 LOG ON 
 (NAME = N'sql2019db_log', FILENAME= N'Server\MSSQL15.MSSQLServer\MSSQL\DATA\sql2019db.ldf',
 SIZE = 2MB, MAXSIZE= UNLIMITED, FILEGROWTH = 10 MB)
 GO 