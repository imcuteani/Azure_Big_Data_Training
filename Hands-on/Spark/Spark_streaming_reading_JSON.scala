# Reading Spark Streaming data from local directory 

# Import packages 
import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.types.{IntegerType, StringType, StructField, StructType}
import org.apache.spark.sql.functions._

val spark = SparkSession.builder.appName("Spark Streaming Demo").getOrCreate()

import spark.implicits._ 

# Create Schema Type and fields 

val schema = StructType(
  List(
    StructField("RecordNumber", IntegerType, true),
    StructField("ZipCode", StringType, true),
    StructField("ZipCodeType", StringType, true),
    StructField("City", StringType, true),
    StructField("State", StringType, true),
    StructField("LocationType", StringType, true),
    StructField("Lat", StringType, true),
    StructField("Long", StringType, true),
    StructField("Xaxis", StringType, true),
    StructField("Yaxis", StringType, true),
    StructField("Zaxis", StringType, true),
    StructField("WorldRegion", StringType, true),
    StructField("Country", StringType, true),
    StructField("LocationText", StringType, true),
    StructField("Location", StringType, true),
    StructField("Decommisioned", StringType, true))
  )

# Create Streaming dataframe

val df = spark.readStream.schema(schema).json("<your_input_json_file_directory_path")

df.printSchema()

val groupDF = df.select("ZipCode").groupBy("ZipCode").count()
groupDF.printSchema()

# Write to output Stream

groupDF.writeStream.format("console").outputMode("complete").start().awaitTermination()
