#!/usr/bin/python3
""" extend Python script to export data in the JSON format."""
import json
import requests
from sys import argv


if __name__ == "__main__":
    url_user = requests.get(
        "https://jsonplaceholder.typicode.com/users").json()
    dic = {}
    for user in url_user:
        user_id = user["id"]
        url = "https://jsonplaceholder.typicode.com"
        employee_name = requests.get("{}/users/{}".format(url, user_id)).json()
        task_num = requests.get(
            "{}/todos?userId={}".format(url, user_id)).json()
        tasks = []
        json_file = {}
        for task in task_num:
            json_file['task'] = task.get('title')
            json_file['completed'] = task.get('completed')
            json_file['username'] = employee_name.get('username')
            tasks.append(json_file)
            json_file = {}
        dic[user_id] = tasks
    with open("todo_all_employees.json", 'w') as jsonfile:
        json.dump(dic, jsonfile)
