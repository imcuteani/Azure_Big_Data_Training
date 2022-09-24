Step 1: 

# Download Apache Flume 

wget http://archive.apache.org/dist/flume/1.6.0/apache-flume-1.6.0-bin.tar.gz 

# Extract the folder 

sudo tar -xvf apache-flume-1.6.0-bin.tar.gz

# Move the directory 

sudo mv apache-flume-1.6.0-bin.tar.gz /usr/local/flume 

# Add the environment variable settings in .bashrc 

export FLUME_HOME=/usr/local/flume
export PATH=$PATH:$FLUME_HOME/bin 

#apply the change 

source ~/.bashrc 

#check the version 

flume-ng version 

