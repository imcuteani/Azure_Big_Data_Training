# Apache Hive Installation

Pre-requisites 
1. Apache Hadoop (v>=2.7.0) 

# Download Apache Hadoop 
wget https://downloads.apache.org/hive/hive-2.3.9/hive-2.3.9-bin.tar.gz 

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

# Run the hive shell

hive 
