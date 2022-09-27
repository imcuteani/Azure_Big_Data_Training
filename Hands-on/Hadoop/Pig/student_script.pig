student = LOAD 'hdfs://localhost:9000/pig_data/students.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray);
	
student_order = ORDER student BY age DESC;
  
student_limit = LIMIT student_order 4;
  
Dump student_limit;


# filtering of students based on specific city 

student = LOAD 'hdfs://localhost:9000/pig_data/students.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray);
	
filter_data = FILTER student by city == 'Chennai';

DUMP filter_data;

# foreach operator 

student = LOAD 'hdfs://localhost:9000/pig_data/students.txt' USING PigStorage(',')
   as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray);

foreach_sample = foreach student GENERATE id,firstname,age,city;
DUMP foreach_sample; 


