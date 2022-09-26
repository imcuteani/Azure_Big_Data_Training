-- Install single node hadoop cluster (Hadoop_ver2.7)

Pre-requisites: 

a)	Ubuntu OS image desktop 18.04, 20.04 or 22.04 
b)	VMware Workstation or VMware player /virtualbox
c)	 (virtualization) from the CPU should be enabled. 

// Install jdk 

sudo apt-get install default-jdk 
sudo apt install openjdk-11-jdk

// check java version 
Java -version
// check the installed java path
Update-alternatives --config java 

//ssh install
sudo apt-get install ssh
// append the generated public keys from id_rsa.pub to authorized_keys 

ssh-keygen -t dsa -P ‘’ -f ~/.ssh/id_dsa
// Copy the keygen into the authorized_keys folder
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys

// Download Apache Hadoop 

//Hadoop version 2.7

wget https://archive.apache.org/dist/hadoop/core/hadoop-2.7.0/hadoop-2.7.0.tar.gz

// Extract the folder

sudo tar -xvf hadoop-2.7.0.tar.gz

// move it

sudo mv hadoop-2.7.0 /usr/local/hadoop



// check localhost 

Ssh localhost

// Install the configs 

Sudo vim ~/.bashrc 

Go to the end of the file of bashrc and apply the following config
Export JAVA_HOME=”<your_java_path>”
Export HADOOP_HOME=/usr/local/Hadoop
Export PATH = $PATH:$HADOOP_HOME/bin
Export PATH = $PATH:$HADOOP_HOME/sbin
Export HADOOP_MAPRED_HOME = $HADOOP_HOME
Export HADOOP_COMMON_HOME=$HADOOP_HOME
Export HADOOP_HDFS_HOME=$HADOOP_HOME
Export YARN_HOME=$HADOOP_HOME
Export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
Export HADOOP_OPTS=”-Djava.library.path=$HADOOP_HOME/lib”
//Save and exit
source ~/.bashrc 
Perform the following tasks
// Move and copy the mapred-site.xml.template to mapred-site.xml 
Cd $HADOOP_HOME/etc/Hadoop 
Sudo cp mapred-site.xml.template mapred-site.xml 

// Add the following contents 

<configuration>
<property>
<name>mapreduce.framework.name</name>
<value>yarn</value>
</property>
</configuration>
// open yarn-site.xml
<configuration>
<property>
<name>yarn.nodemanager.aux-services</name>
<value>mapreduce_shuffle</value>
</property>
//update core-site.xml 
<property>
<name>fs.default.name</name>
<value>hdfs://127.0.0.1:9000</value>
</property>
</configuration>
//update hdfs-site.xml 
<configuration>
<property>
<name>dfs.replication</name>
<value>1 </value>
</property>
<property>
<name>dfs.name.dir</name>
<value>file://home/ani/hadoop/hdfs/namenode</value>
</property>
<property>
<name>dfs.data.dir</name>
<value>file://home/ani/hadoop/hdfs/namenode/datanode</value>
</property>
</configuration>
// Open the Hadoop env shell & update java_home
Export JAVA_HOME=<your_java_path>

// create the local directory for namenode and datanode
Mkdir -p /home/ani/Hadoop/hdfs/namenode
Mkdir -p /home/ani/Hadoop/hdfs/namenode/datanode

// Give permission
Sudo chown -R ani:ani /usr/local/Hadoop
// format the namenode 
Hdfs namenode -format 
// start the Hadoop services 
Start-dfs.sh 
Start-yarn.sh 
//Check out the status
jps
// access hadoop UI from browser 

http://Localhost:50070 - HDFS namenode
http://localhost:8088 - YARN resource manager 

// Make HDFS directories required to execute Mapreduce jobs 

Hdfs dfs -mkdir /user/Hadoop/input 
Hdfs dfs -put data.txt /user/Hadoop/input 

// Apply wordcount sample 
Cd #HADOOP_HOME
Hadoop jar share/Hadoop/mapreduce/Hadoop-mapreduce-examples-2.7.0.jar wordcount /user/Hadoop/input /user/Hadoop/output 
Hdfs dfs -ls /user/Hadoop/output 
//check the contents 
Hdfs dfs -cat /user/Hadoop/output/part-r-00000

Create jar file from java 
Jar cf wc.jar input-files














 
