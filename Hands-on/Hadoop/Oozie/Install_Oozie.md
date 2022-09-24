Step 1: 

#Install Oozie 

wget https://archive.apache.org/dist/oozie/4.2.0/oozie-4.2.0.tar.gz

# Extract the folder 

sudo tar -xvf oozie-4.2.0.tar.gz 

# Install Apache Maven

sudo apt install update

sudo apt install maven

# Start MySQL 

sudo systemctl restart mysql

# build Oozie

cd oozie-4.2.0

bin/mkdistro.sh -DskipTests -P hadoop-2
