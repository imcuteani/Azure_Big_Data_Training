CREATE TABLE dbo.emp
(
    ID varchar(60) NOT NULL,
    FirstName varchar(50),
    Designation nvarchar(80),
    Salary varchar(60),
    State varchar(60)

)
GO
CREATE CLUSTERED INDEX IX_emp_ID ON dbo.emp (ID);