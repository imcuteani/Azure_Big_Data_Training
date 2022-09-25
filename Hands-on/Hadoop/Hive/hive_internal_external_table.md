Step 1: 

# Create Hive External table

#upload the data into HDFS 

hdfs dfs -mkdir /stocks

hdfs dfs -put TSLA.csv /stocks



# Create Hive External table

create external table stocks(
    > stock_date date,
    > stock_openprice string,
    > stock_highprice string,
    > stock_lowprice string,
    > stock_closeprice string,
    > stock_adjclose string,
    > stock_volume string)
    > ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
    > LOCATION '/stocks';

# Check the hive table

select * from stocks limit 10;

Step 2: 

# Create hive internal table

create table weblog(
ipadd string,
time string,
url string,
status string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',';

# LOAD data into internal hive table 

LOAD DATA LOCAL INPATH '/home/ani/Downloads/datasets/weblog.csv' into table weblog;

# Check the table 

select * from weblog limit 10;


