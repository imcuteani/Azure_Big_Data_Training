# read and write json files 

# reading of json module to a dictionary 

import json
# import JSON 
person_json = '''{
    "name": "Alan",
    "country": "united states",
    "city": "Boston",
    "skills": ["python", "go", "GCP"]
}'''
 # lets change JSON to dictionary 
person_dct = json.loads(person_json)
print(type(person_dct))
print(person_dct) 
print(person_dct['name'])   

# Write to json file 

import json

person = {
    "name": "Maria",
    "country": "UK", 
    "city": "sheffields",
    "skills": ["python", "aws", 'vue.js']
}

with open('json_example_python.json', 'w', encoding='utf-8') as f: 
    json.dump(person, f, ensure_ascii=False, indent=4)