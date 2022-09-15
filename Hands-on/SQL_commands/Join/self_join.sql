-- self-joining is actually the table is going join itself. 

-- information about the employee and manager relationship. 
-- there's requirement to create a result set joining records in the table with some other records from the table. 
-- self join and also applied relationshipin between the employee and manager pertaining from Employee table
-- in conjunction to the join logic, we're joining to the Persons.Contact twice to capture the name & title based on the original employee and manager relationships. 

-- querying using aliases with each column naes. 
-- pointing to differentiate between the Employee and Manager data. 




use AdventureWorks2016;

select m.ManagerID AS 'ManagerID', 
M1.ContactID AS 'ManagerContactID', 
M1.FirstName AS 'ManagerFirstName',
M1.LastName AS 'ManagerLastName',
M.Title as 'ManagerTitle',
E.EmployeeID as 'EmployeeID',
E1.ContactID AS 'EmployeeContactID',
E1.FirstName AS 'EmployeeFirstName',
E1.LastName AS 'EmployeeLastName',
E.Title AS 'EmployeeTitle'
FROM HumanResources.Employee E 
INNER JOIN HumanResources.Employee M 
ON E.ManagerID = M.EmployeeID
INNER JOIN Person.Contact E1 
ON E1.ContactID = E.ContactID
INNER JOIN Person.Contact M1 
ON M1.ContactID = M.ContactID
ORDER BY M1.LastName

