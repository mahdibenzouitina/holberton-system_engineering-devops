#!/usr/bin/python3
"""extend Python script to export data in the CSV format"""
import json
import requests
from sys import argv
import csv

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com"
    user_id = int(argv[1])
    employee_name = requests.get("{}/users/{}".format(url, user_id)).json()
    task_num = requests.get("{}/todos?userId={}".format(url, user_id)).json()

    with open("{}.csv".format(user_id), 'w') as file:
        write = csv.writer(file, delimiter=',', quoting=csv.QUOTE_ALL)
        for task in task_num:
            write.writerow([user_id, employee_name.get('username'),
                            task.get('completed'), task.get('title')])
