-- create stored procedure with error handling -- 

use sqltraining
GO


CREATE PROCEDURE dbo.aztrycatch 
AS
CREATE TABLE dbo.contoso
(ID int NOT NULL PRIMARY KEY)
BEGIN TRAN
 INSERT INTO dbo.contoso VALUES(1)
 INSERT INTO dbo.contoso VALUES(1)
 INSERT INTO dbo.contoso VALUES(3)
 COMMIT TRAN

 select * from dbo.contoso

 --TRUNCATE table dbo.contoso

 GO

 -- delete stored procedure 

 DROP PROCEDURE dbo.aztrycatch
 GO

 

 -- add try-catch block 

 CREATE PROCEDURE dbo.aztrycatchdemo
 AS
 ---Try...Catch value
 TRUNCATE TABLE dbo.contoso

 BEGIN TRY
    BEGIN TRAN  
     INSERT INTO dbo.contoso VALUES(1)
     INSERT INTO dbo.contoso VALUES(1)
     INSERT INTO dbo.contoso VALUES(2)
     COMMIT TRAN
     END TRY
     BEGIN Catch
     ROLLBACK TRAN
     PRINT 'Catch'
     END CATCH

     select * from dbo.contoso
     GO


DROP PROCEDURE dbo.aztrycatchdemo
GO