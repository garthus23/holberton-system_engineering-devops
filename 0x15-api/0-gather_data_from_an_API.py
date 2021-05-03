#!/usr/bin/python3

""" module requests and sys """
import requests
import sys


if (len(sys.argv) == 2):

    r = requests.get('https://jsonplaceholder.typicode.com/todos')
    r1 = requests.get('https://jsonplaceholder.typicode.com/users')
    todo = 0
    done = 0

    for line in r.json():
        if line["userId"] == int(sys.argv[1]):
            todo += 1
            if line["completed"] is True:
                done += 1

    print("Employee {} is done with tasks({}/{}):"
          .format(r1.json()[int(sys.argv[1])]['name'], done, todo))

    for line in r.json():
        if line["userId"] == int(sys.argv[1]) and line["completed"] is True:
            print("\t {}".format(line['title']))
