# Apache Hive Installation

Pre-requisites 
1. Apache Hadoop (v>=2.7.0) (All Hadoop services should be running)
2. MySql
3. Java

# Install MySQL db on Ubuntu 

sudo apt-get update
sudo apt install mysql-server
sudo systemctl start mysql.service

#Configure & Start MySQL 
sudo mysql

#check mysql is configured with secure user account
mysql> CREATE USER 'hiveuser'@'%' IDENTIFIED BY 'hivepassword'; 
mysql> GRANT all on *.* to 'hiveuser'@localhost identified by 'hivepassword';
mysql>  flush privileges;

# Check if your mySQL server is running 

sudo systemctl status mysql

# Login to MySQL server

sudo mysql -u hiveuser -p

# exit
exit

# Download Apache Hadoop 
wget https://dlcdn.apache.org/hive/stable-2/apache-hive-2.3.9-bin.tar.gz  


# Extract the directory 

sudo tar -xvf hive-2.3.9-bin.tar.gz 

# Move the directory 

sudo mv hive-2.3.9-bin.tar.gz /usr/local/hive 

# Add hive directory to the environment settings update 

sudo vim ~/.bashrc 

# add the following lines 

export HIVE_HOME=/usr/local/hive
export PATH=$PATH:HIVE_HOME/bin

#save the changes 

source ~/.bashrc

Put the following hive-site.xml in the following conf directory 

sudo vim  /usr/local/hive/conf/hive-site.xml

Get the mysql-connector.jar in the $HIVE_HOME/lib directory 

wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.28/mysql-connector-java-5.1.28.jar

sudo mv mysql-connector-java-5.1.28.jar $HIVE_HOME/lib

# Provide the Hadoop_HOME path in hive-config.sh in /bin directory 
HADOOP_HOME=/usr/local/hadoop

# Initialize the mysql as metastore db for hive from /bin directory
/bin schemaTool -initSchema -dbType mysql 


# Run the hive shell

hive 
