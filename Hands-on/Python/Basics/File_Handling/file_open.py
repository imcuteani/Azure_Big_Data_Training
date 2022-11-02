# file handling API 

# open() is used to open a file 

# "r" - Opens a file for reading. Returns error if the file doesn't exist
# "a" - opens a file for appending, creates the file if does not exist
# "w" - opens a file for writing. Creates the file if it doesn't exist
# "x" - Creates the specified file, returns error if it does not exist
# "t" - text (default value, text mode)
# "b" - binary mode (e.g. images)

f = open('new_text_doc.txt')
txt = f.read(10)  # read first 10 characters
print(type(txt))
print(txt)
f.close()


# returns only the first line 
f = open('new_text_doc.txt')
txt = f.readline()     
print(type(txt))
print(txt)
f.close()

# returns the text line by line / list of lines 
f = open('new_text_doc.txt', 'rt')
lines = f.readlines()     
print(type(lines))
print(lines)
f.close()

# another way while opening files to close the files by itself. 

with open('new_text_doc.txt', 'rt') as f: 
    lines = f.read().splitlines()
    print(type(lines))
    print(lines)

