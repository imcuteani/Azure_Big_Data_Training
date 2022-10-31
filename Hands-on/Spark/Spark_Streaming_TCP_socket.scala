# Reading the data from TCP socket stream 

val df = spark.readStream.format("socket").option("host", "localhost").option("port", "9090").load()

# Process the data using the dataframe operation

val wordsDF = df.select(explode(split(df("value"),"")).alias("word"))

# count the words applying groupBy() 

val count = wordsDF.groupBy("word").count()

# Spark Streaming to Console                 # The netcat server should be running before executing this command

val query = count.writeStream.format("console").outputMode("complete").start().awaitTermination()

# Running netcat server over TCP port 9090 

# install netcat 

sudo apt install netcat 

# start Netcat server over port 9090 

nc -l -p 9090 

# run spark streaming job by writing sample data streams over netcat server 

"hello world"
"Apache hadoop is Big Data, Big Data is essential for modern data analytics" 



