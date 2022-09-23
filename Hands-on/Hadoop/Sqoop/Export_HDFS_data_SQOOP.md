# Create EMP_data file in HDFS 

hdfs dfs -mkdir -p /emp/


# put the data from local to HDFS 

hdfs dfs -put emp_data.txt /emp/emp_data

#Connect to MySQL db 

sudo mysql -u hiveuser -p

# Create the db table

$ mysql
mysql> USE db;
mysql> CREATE TABLE employee ( 
   id INT NOT NULL PRIMARY KEY, 
   name VARCHAR(70), 
   deg VARCHAR(60),
   salary VARCHAR(50),
   dept VARCHAR(50));
   
  
  # Type Sqoop export command 
  
  $ sqoop export \
--connect jdbc:mysql://localhost/db \
--username hiveuser \
-- password '<your_mysql_user_pwd> \
--table employee \ 
--export-dir /emp/emp_data

# Check the mysql table 

select * from employee; 
