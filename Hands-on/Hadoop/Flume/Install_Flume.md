Step 1: 

# Download Apache Flume 

wget http://archive.apache.org/dist/flume/1.6.0/apache-flume-1.6.0-bin.tar.gz 

Step 2:

# Extract the folder 

sudo tar -xvf apache-flume-1.6.0-bin.tar.gz

Step 3: 

# Move the directory 

sudo mv apache-flume-1.6.0-bin.tar.gz /usr/local/flume 

Step 4: 

# Add the environment variable settings in .bashrc 

export FLUME_HOME=/usr/local/flume
export PATH=$PATH:$FLUME_HOME/bin 

Step 5: 

#apply the change 

source ~/.bashrc 

# Provide the JAVA_PATH in the flume-env.sh file located in $FLUME_HOME/conf directory 

export JAVA_HOME=$JAVA_HOME

Step 6:

#check the version 

flume-ng version 



