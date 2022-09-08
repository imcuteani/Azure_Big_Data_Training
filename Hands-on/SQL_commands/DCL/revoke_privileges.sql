-- Revoking SELECT Privilege to a User in a Table: To revoke Select Privilege to a table named “users” where User Name is Amit, the following revoke statement should be executed.
REVOKE SELECT ON  users FROM 'Anindita'@localhost';

-- Revoking more than Privilege to a User in a Table: To revoke multiple Privileges to a user named “Amit” in a table “users”, the following revoke statement should be executed.
REVOKE SELECT, INSERT, DELETE, UPDATE ON Users FROM 'Anindita'@'localhost; 

-- Revoking All the Privilege to a User in a Table: To revoke all the privileges to a user named “Amit” in a table “users”, the following revoke statement should be executed.
REVOKE ALL ON Users FROM 'Anindita'@'localhost; 