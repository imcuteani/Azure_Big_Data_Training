Step 1: 

#Download Sqoop from the location

wget http://archive.apache.org/dist/sqoop/1.4.5/sqoop-1.4.5.tar.gz 

Step 2: 

#Extract the folder 

sudo tar -xvf sqoop-1.4.5.tar.gz

Step 3: 

#Move the extracted folder to the path

sudo mv sqoop-1.4.5 /usr/local/sqoop

Step 4: 

# Add the path to the ~/.bashrc file 
export SQOOP_HOME=/usr/local/sqoop
export PATH=$PATH:$SQOOP_HOME/bin

#close and exit the file

# apply the changes 
source ~/.bashrc 

Step 5: 

#Download mysql-connector-java-5.1.30.tar.gz

wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.30/mysql-connector-java-5.1.30.jar

# Move it to the $SQOOP_HOME/lib 

sudo mv mysql-connector-java-5.1.30.jar $SQOOP_HOME/lib

Step 6: 

# Open SQOOP_HOME/conf directory and copy the sqoop-env.sh 

sudo cp sqoop-env.sh.template sqoop-env.sh 

#add the following lines 

export HADOOP_COMMON_HOME=/usr/local/hadoop 
export HADOOP_MAPRED_HOME=/usr/local/hadoop

# Sqoop installation is done! 

