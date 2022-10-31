import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.functions._
import org.apache.spark.sql.types.{IntegerType, StringType, StructType, StructField}

val spark = SparkSession.builder.appName("Structured Spark Streaming DF demo").getOrCreate()

import spark.implicits._

val socketDF = spark.readStream.format("socket").option("host", "localhost").option("port", 9999).load()

socketDF.isStream

socketDF.printSchema

val userSchema = new StructType().add("name", "string").add("age", "string").add("job", "string")

val csvDF = spark.readStream.option("sep", ";").schema(userSchema).csv("your_csv_input_file_path")

csvDF.select("age").where("age > 30")

val selectDF = csvDF.select("age").where("age > 30").groupBy("age").count()

selectdf.printSchema()

selectdf.writeStream.format("console").outputMode("complete").start().awaitTermination() 
