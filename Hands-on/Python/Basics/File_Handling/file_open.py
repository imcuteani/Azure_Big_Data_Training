# file handling API 

# open() is used to open a file 

# "r" - Opens a file for reading. Returns error if the file doesn't exist
# "a" - opens a file for appending, creates the file if does not exist
# "w" - opens a file for writing. Creates the file if it doesn't exist
# "x" - Creates the specified file, returns error if it does not exist
# "t" - text (default value, text mode)
# "b" - binary mode (e.g. images)

f = open('sample_file.txt')
txt = f.read(10)
print(type(txt))
print(txt)
f.close()


# returns only the first line 
f = open('sample_file.txt')
txt = f.readline()     
print(type(txt))
print(txt)
f.close()

# returns the text line by line / list of lines 
f = open('sample_file.txt')
txt = f.readlines()     
print(type(txt))
print(txt)
f.close()

