import requests;
import json;
import argparse;
import sys;
req = requests.get("https://api.nasa.gov/planetary/apod?api_key=V20QzmsHVs6QaC2lOqFg6XABDPsttrwhsZA1ZWNl");

myparser = argparse.ArgumentParser(prog = 'marserparser',
description = 'Fetches you the mars pictures from nasa')

file_location = req.json()['photos']

myparser.add_argument('-id',
metavar = 'id',
type= long,
action ='store',
required = True );

myparser.add_argument('-date',
metavar = 'date =yyyy/mm/dd',
type = str ,
action = store,
required = True,
)

flag = 0 

arg = myparser.parse_args()
dateFile = arg.date 
id_of_file = arg.id

for i in files : 
    if(i['id'] == id_of_file and i['earth_date'] == datefile):
        flag = 1 
        print(i['img_src']);
if(flag == 0):
    print("Image Not Found")