#!/usr/bin/python3
"""script that using REST API to returns information"""
import json
import requests
from sys import argv


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com"
    user_id = int(argv[1])
    employee_name = requests.get("{}/users/{}".format(url, user_id)).json()
    task_num = requests.get("{}/todos?userId={}".format(url, user_id)).json()
    tasks = []

    for task in task_num:
        if task.get('completed') is True:
            tasks.append(task.get('title'))
    print("Employee {} is done with tasks({}/{}):"
          .format(employee_name.get('name'),
                  len(tasks),
                  len(task_num)))
    for task in tasks:
        print("\t {}".format(task))
