#!/usr/bin/python3

""" module requests and sys """
import requests
import sys
import csv
import json

r = requests.get('https://jsonplaceholder.typicode.com/todos')
r1 = requests.get('https://jsonplaceholder.typicode.com/users')

data = {}

for line in r.json():
    if not line['userId'] in data:
        theid = line['userId']
        data.update({theid: []})
    data[line['userId']].append({
             'username': r1.json()[theid - 1]['name'],
             'task': line['title'],
             'completed': line['completed']
             })

name = "todo_all_employees.json"
with open(name, "w") as file:
    json.dump(data, file)
