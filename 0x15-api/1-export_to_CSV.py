#!/usr/bin/python3

""" module requests and sys """
import requests
import sys
import csv
import json


if (len(sys.argv) == 2):

    file = "{}.csv".format(sys.argv[1])
    data_file = open(file, 'w')
    r = requests.get('https://jsonplaceholder.typicode.com/todos')
    r1 = requests.get('https://jsonplaceholder.typicode.com/users')


    for line in r.json():
        if line["userId"] == int(sys.argv[1]):
            data = [line['userId'],
                    r1.json()[int(sys.argv[1])]['name'],
                    line['completed'],
                    line['title']]
            writer = csv.writer(data_file,
                                quoting=csv.QUOTE_ALL,
                                delimiter=',')
            writer.writerow(data)
