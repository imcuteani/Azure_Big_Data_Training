# File Write and update operation 

# to write to an existing file, we must add a mode as paramter to the open() function

#"a": append - will append to the end of the file. If the file does not exist, it will create a new file
#"w": write - will overwrite any existing content, if the file does not exist, it creates. 


with open('new_text_doc.txt', 'a') as f: 
    f.write('This text has to be appended to the end of this file')



# this method will create a new file, if does not exist

with open('writing_file_sample.txt', 'w') as f:
    f.write('This text will be written in this newly created file.')


# Deleting file 

import os 
if os.path.exists('sample_file.txt'):
    os.remove('sample_file.txt')
else:
    print('The file does not exist')    