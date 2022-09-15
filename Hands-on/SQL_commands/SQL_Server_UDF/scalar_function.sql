-- create scalar function --- 

use AdventureWorks2016;
GO

IF OBJECT_ID (N'dbo.ufnGetInventoryStock',N'FN')IS NOT NULL
DROP FUNCTION ufnGetInventoryStock;
GO 

CREATE FUNCTION dbo.ufnGetInventoryStock(@ProductID int)
RETURNS INT 
AS 
-- Return the stock level for the product from product table -- 
BEGIN 
DECLARE @ret INT;
SELECT @ret = SUM(p.Quantity)
FROM Production.ProductInventory p 
WHERE p.ProductID = @ProductID
AND p.LocationID = '6'
IF(@ret is NULL)
SET @ret = 0;
RETURN @ret; 
END;
GO

