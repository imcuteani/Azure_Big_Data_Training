# Create database and table in MySQL
create database sqoop;
create table sqoop.geeks(author_name varchar(65), total_no_of_articles int, phone_no int, address varchar(65));
insert into geeksforgeeks values(“Ronald”,10,4083442334,”LA”);
insert into geeksforgeeks values(“Joseph”,11,2123442334,”NY”);

# Create a database & table in hive 

create table geeks_hive_table(name string, total_articles int, phone_no int, address string) row format delimited fields terminated by ‘,’;

# Run the following command to import data from mysql to Hive 

sqoop import --connect \
jdbc:mysql://127.0.0.1:3306/database_name \
 --username root --password cloudera \
 --table geeks \
 --hive-import --hive-table database_name_in_hive.table_name_in_hive \
 --m 1 
 
 #127.0.0.1 is localhost IP address.
#3306 is the port number for MySQL.
# m is the number of mappers

# Export data from HDFS to MySQL 

create table hive_table_export(name string,company string, phone int, age int) row format delimited fields terminated by ‘,’;

# Insert the data into the hive table

insert into hive_table_export values("Ronan","Amazon",234567891,35);
insert into hive_table_export values("Rob","Microsoft",234567892,37);

# perform Export operation from HDFS to MySQL
sqoop export --connect \
jdbc:mysql://127.0.0.1:3306/database_name_in_mysql \
 --table table_name_in_mysql \
 --username root --password cloudera \
 --export-dir /user/hive/warehouse/hive_database_name.db/table_name_in_hive \
 --m 1 \
 -- driver com.mysql.jdbc.Driver
 --input-fields-terminated-by ','
 
 # Check in MySQL
 select * from <table_name>
