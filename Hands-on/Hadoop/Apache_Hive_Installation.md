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

sudo mysql_secure_installation

# Check if your mySQL server is running 

sudo systemctl status mysql

# Login to MySQL server

sudo mysql -u root -p

# exit
exit

# Download Apache Hadoop 
wget https://downloads.apache.org/hive/hive-1.2.2/apache-hive-1.2.2-bin.tar.gz


# Extract the directory 

sudo tar -xvf hive-1.2.2-bin.tar.gz 

# Move the directory 

sudo mv hive-1.2.2-bin.tar.gz /usr/local/hive 

# Add hive directory to the environment settings update 

sudo vim ~/.bashrc 

# add the following lines 

export HIVE_HOME=/usr/local/hive
export PATH=$PATH:HIVE_HOME/bin

#save the changes 

source ~/.bashrc

# Run the hive shell

hive 