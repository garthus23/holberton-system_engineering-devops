#!/usr/bin/python3

""" module requests and sys """
import requests
import sys
import csv
import json


if (len(sys.argv) == 2):

    r = requests.get('https://jsonplaceholder.typicode.com/todos')
    r1 = requests.get('https://jsonplaceholder.typicode.com/users')

    data = {sys.argv[1]: []}
    for line in r.json():
        if line["userId"] == int(sys.argv[1]):
            data[sys.argv[1]]\
             .append({
                     'task': line['title'],
                     'completed': line['completed'],
                     'username': r1.json()[int(sys.argv[1])]['name']
                     })
    name = "{}.json".format(sys.argv[1])
    with open(name, "w") as file:
        json.dump(data, file)
