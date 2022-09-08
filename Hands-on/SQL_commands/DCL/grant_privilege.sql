--Granting SELECT Privilege to a User in a Table: To grant Select Privilege to a table named “users” where User Name is Amit, the following GRANT statement should be executed.
GRANT SELECT ON Users TO'Anindita'@'localhost;
GRANT SELECT, INSERT, DELETE, UPDATE ON Users TO 'Anindita'@'localhost;
GO

-- Granting more than one Privilege to a User in a Table: To grant multiple Privileges to a user named “Amit” in a table “users”, the following GRANT statement should be executed.


-- Granting All the Privilege to a User in a Table: To Grant all the privileges to a user named “Amit” in a table “users”, the following Grant statement should be executed.
GRANT ALL ON Users TO 'Anindita'@'localhost;

-- Granting a Privilege to all Users in a Table: To Grant a specific privilege to all the users in a table “users”, the following Grant statement should be executed.
GRANT SELECT  ON Users TO '*'@'localhost;