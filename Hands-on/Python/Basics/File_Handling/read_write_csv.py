#reading CSV file through python

import csv
from dataclasses import field 
with open('csv_sample.csv') as f: 
    csv_reader = csv.reader(f, delimiter=',') # w use, reader method to read csv
    line_count = 0
    for row in csv_reader: 
        if line_count == 0: 
            print(f'Column names are: {", ".join(row)}')
            line_count += 1
        else:
            print(
                f'\t{row[0]} is a teachers. He lives in {row[1]}, {row[2]}.')
            line_count += 1
    print(f'Number of lines: {line_count}') 


 # writing to CSV file 

import csv 

fields = ['Name', 'Branch', 'Year', 'Skills']

rows = [ ['Nelson', 'COE', '2020', 'React JS'],
         ['Susan', 'Cloud', '2021', 'aws'],
         ['Alan', 'IT', '2019', 'VMware'],
         ['Matt', 'COE', '2017', 'Kubernetes']]

# name of the csv file 

filename = "employee_records_csv"

# writing to csv file 

with open(filename, 'w') as csvfile: 
    csvwriter = csv.writer(csvfile)

# writing the fields 

    csvwriter.writerow(fields)

# writing the data rows

    csvwriter.writerows(rows)


    
