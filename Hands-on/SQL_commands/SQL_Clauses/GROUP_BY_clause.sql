-- GROUP BY clause in SQL Server -- 

-- GROUP BY clause allows to arrange the rows for a query of groups. These groups 
-- are determined by the columns specified in the GROUP BY clause 

--- select 
 --- select_list 
 -- from
 --- table_name
 -- GROUP BY 
 -- column_name1
 -- column_name2 

 use AdventureWorksLT2019;

 --select top 10 CustomerID from SalesLT.Customer; 

 select 
  CustomerID, 
 SalesPerson,
 CompanyName,
  Phone, 
  ModifiedDate
  from SalesLT.Customer
  WHERE CustomerID IN (12, 29)
  GROUP BY 
   CustomerID,
   SalesPerson,
   CompanyName,
   Phone,
   ModifiedDate
  ORDER BY 
   CustomerID

