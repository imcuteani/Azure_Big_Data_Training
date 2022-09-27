# Installation of Apache Pig 

# Pre-requisites 
1. Apache Hadoop (at least version 2.7.0) installed. 

# Download Apache Pig 

wget https://downloads.apache.org/pig/pig-0.16.0/pig-0.16.0.tar.gz

# Extract the directory 

sudo tar -xvf pig-0.16.0.tar.gz

# Move the extracted folder to destination 

sudo mv pig-0.16.0 /usr/local/pig 

# Add the following lines in the .bashrc file for updating environment variables settings 

export PIG_HOME=/usr/local/pig
export PATH=$PATH:$PIG_HOME/bin

# save the changes 

source ~/.bashrc 

# Check the version 

pig -help 

# Execute Pig Grunt using local mode 

pig -x local 

# Execute Pig Grunt using mapreduce mode 

pig 
