Step 1: 

# Copy the following files in the $FLUME_HOME/conf directory 

sudo cp flume-conf.template.sh flume-conf.sh 
sudo cp flume-env.template.sh flume-env.sh

Step 2: 
# Add the JAVA_HOME in flume-env.sh located in $FLUME_HOME/conf directory 

export JAVA_HOME=$JAVA_HOME

Step 3: 

Add the following configurations in the flume.conf file 

agent1.sources = tail
agent1.channels = Channel-2
agent1.sinks = sink-1

agent1.sources.tail.type = exec
agent1.sources.tail.command = cat /home/ani/Downloads/datasets/weblog.csv     // replace this data file with your data file path
agent1.sources.tail.channels = Channel-2

agent1.sinks.sink-1.channel = Channel-2
agent1.sinks.sink-1.type = hdfs
agent1.sinks.sink-1.hdfs.path = hdfs://localhost:9000/flume01
agent1.sinks.sink-1.hdfs.fileType = DataStream
agent1.sinks.sink-1.hdfs.rollInterval = 60
agent1.sinks.sink-1.hdfs.rollSize = 0
agent1.sinks.sink-1.hdfs.rollCount = 0

agent1.channels.Channel-2.type = memory

Step 4:

execute the following command 

flume-ng agent -conf ./conf/ -f conf/flume.conf -n agent1 -Dflume.root.logger=DEBUG -Xmx1000m

Step 5: 

Check the output 

hdfs dfs -cat /flume01


