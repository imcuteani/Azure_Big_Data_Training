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
use sqltraining
GO 

 DROP PROCEDURE dbo.aztrycatch
 GO

 -- Try block is used wrap the code where any error can occur
 -- Catch block is used to handle that error 

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

     select * from dbo.Contoso
     END TRY
     BEGIN Catch
     ROLLBACK TRAN
     PRINT 'Catch'
     END CATCH

     select * from dbo.contoso
     GO


DROP PROCEDURE dbo.aztrycatchdemo
GO

-- SET statements can help to change the settings, 

-- Rollback a change happening inside the transaction of the TRY block 

